import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:shelf/shelf.dart' as shelf;
import 'package:shelf/shelf_io.dart' as io;

Future<HttpServer> createServer() async {
  var handler = const shelf.Pipeline().addHandler((shelf.Request req) {
    if (req.url.path == 'hello') {
      return new shelf.Response.ok(JSON.encode('Hello, world!'),
          headers: {HttpHeaders.CONTENT_TYPE: ContentType.JSON.mimeType});
    }

    return new shelf.Response.notFound('404 Not Found');
  });

  return io.serve(handler, InternetAddress.LOOPBACK_IP_V4, 0);
}
