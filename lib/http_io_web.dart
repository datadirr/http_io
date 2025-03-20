// In order to *not* need this ignore, consider extracting the "web" version
// of your plugin as a separate package, instead of inlining it in the same
// package as the core of your plugin.
// ignore: avoid_web_libraries_in_flutter

import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:web/web.dart' as web;

import 'http_io_platform_interface.dart';

/// A web implementation of the HttpIoPlatform of the HttpIo plugin.
class HttpIoWeb extends HttpIoPlatform {
  /// Constructs a HttpIoWeb
  HttpIoWeb();

  static void registerWith(Registrar registrar) {
    HttpIoPlatform.instance = HttpIoWeb();
  }

  /// Returns a [String] containing the version of the platform.
  @override
  Future<String?> getPlatformVersion() async {
    final version = web.window.navigator.userAgent;
    return version;
  }
}
