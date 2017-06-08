import 'dart:async';
import 'dart:convert';
import 'package:angel_framework/angel_framework.dart';
import 'package:angel_multiserver/angel_multiserver.dart';

Future<Angel> createServer() async {
  var app = new Angel();
  app.lazyParseBodies = true;
  app.injectSerializer(JSON.encode);

  app.get('/hello', 'Hello, world!');

  // Cache certain responses for speed :)
  //await app.configure(cacheResponses());

  return app;
}
