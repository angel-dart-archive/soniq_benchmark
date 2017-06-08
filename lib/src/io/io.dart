import 'dart:async';
import 'dart:convert';
import 'dart:io';

Future<HttpServer> createServer() async {
  var server = await HttpServer.bind(InternetAddress.LOOPBACK_IP_V4, 0);
  return server
    ..listen((request) async {
      var response = request.response;

      if (request.uri.path == '/hello') {
        response.write(JSON.encode('Hello, world!'));
        return await response.close();
      }
    });
}
