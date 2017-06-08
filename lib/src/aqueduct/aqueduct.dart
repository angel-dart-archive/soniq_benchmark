import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:aqueduct/aqueduct.dart';

Future<HttpServer> createServer() async {
  var app = new Application<BenchmarkRequestSink>();
  var config = new ApplicationConfiguration()
    ..address = InternetAddress.LOOPBACK_IP_V4
    ..port = 0;
  app.configuration = config;
  await app.start(runOnMainIsolate: true);
  return app.server.server;
}

class BenchmarkRequestSink extends RequestSink {
  BenchmarkRequestSink(ApplicationConfiguration configuration)
      : super(configuration);

  @override
  void setupRouter(Router router) {
    router.route('/hello').generate(() => new HelloController());
  }
}

class HelloController extends HTTPController {
  @httpGet
  Future<Response> getHello() async {
    return new Response.ok('Hello, world!',
        headers: {HttpHeaders.CONTENT_TYPE: ContentType.JSON.mimeType});
  }
}
