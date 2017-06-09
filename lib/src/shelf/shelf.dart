import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';
import 'package:shelf/shelf.dart' as shelf;
import 'package:shelf/shelf_io.dart' as io;
import 'package:tuple/tuple.dart';
import '../common.dart';

final RegExp _rgxName = new RegExp(r'route_param/([^/$]+)');
int PORT = 3000;

Future<Tuple2<String, Closer>> createServer(int nIsolates) {
  var c = new Completer<Tuple2<String, Closer>>();
  int started = 0;
  int nChildren = nIsolates - 1;
  List<Isolate> isolates = [];
  var recv = new ReceivePort();

  recv.listen((_) async {
    if (++started == nChildren) {
      try {
        var server = await createInstance();
        c.complete(new Tuple2('http://${server.address.address}:${server.port}',
            () async {
          isolates.forEach((i) => i.kill());
          recv.close();
          await server.close(force: true);
        }));
      } catch (e, st) {
        c.completeError(e, st);
      }
    }
    print('Shelf started $started/$nChildren...');
  }, onError: c.completeError);

  for (int i = 0; i < nChildren; i++) {
    Isolate.spawn(isolateMain, recv.sendPort).then(isolates.add);
  }

  return c.future;
}

void isolateMain(SendPort sp) {
  createInstance().then((_) {
    sp.send(true);
  });
}

Future<HttpServer> createInstance() async {
  var handler = const shelf.Pipeline().addHandler((shelf.Request req) {
    var path = req.url.path;
    Match m;

    if (path == 'hello') {
      return new shelf.Response.ok(JSON.encode('Hello, world!'),
          headers: {HttpHeaders.CONTENT_TYPE: ContentType.JSON.mimeType});
    }

    if ((m = _rgxName.firstMatch(path)) != null) {
      var name = m[1];
      return new shelf.Response.ok(JSON.encode({'name': name}),
          headers: {HttpHeaders.CONTENT_TYPE: ContentType.JSON.mimeType});
    }

    return new shelf.Response.notFound('404 Not Found');
  });

  return await HttpServer
      .bind(InternetAddress.LOOPBACK_IP_V4, PORT, shared: true)
      .then((server) {
    io.serveRequests(server, handler);
    return server;
  });
}
