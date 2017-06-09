import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';
import 'package:tuple/tuple.dart';
import '../common.dart';

final RegExp _rgxName = new RegExp(r'/route_param/([^/$]+)');
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
  var server =
      await HttpServer.bind(InternetAddress.LOOPBACK_IP_V4, PORT, shared: true);
  return server
    ..listen((request) async {
      var path = request.uri.path;
      var response = request.response;
      Match m;

      if (path == '/hello') {
        response
          ..headers.contentType = ContentType.JSON
          ..write(JSON.encode('Hello, world!'));
      } else if ((m = _rgxName.firstMatch(path)) != null) {
        var name = m[1];
        response
          ..headers.contentType = ContentType.JSON
          ..write(JSON.encode({'name': name}));
      } else {
        response
          ..statusCode = 404
          ..write('404 Not Found: ${request.uri}');
      }

      await response.close();
    });
}
