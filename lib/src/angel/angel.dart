import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';
import 'package:angel_framework/angel_framework.dart';
// import 'package:angel_multiserver/angel_multiserver.dart';
import 'package:tuple/tuple.dart';
import '../common.dart';

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
        var app = await createInstance();
        var server =
            await app.startServer(InternetAddress.LOOPBACK_IP_V4, PORT);
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
  createInstance().then((app) {
    app.startServer(InternetAddress.LOOPBACK_IP_V4, PORT).then((_) {
      sp.send(true);
    });
  });
}

Future<Angel> createInstance() async {
  var app = new Angel.custom(startShared);
  app.lazyParseBodies = true;
  app.injectSerializer(JSON.encode);

  app
    ..get('/hello', 'Hello, world!')
    ..get('/route_param/:name', (req, res) async => req.params);

  // Cache certain responses for speed :)
  //await app.configure(cacheResponses());

  return app;
}
