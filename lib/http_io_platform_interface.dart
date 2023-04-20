import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'http_io_method_channel.dart';

abstract class HttpIoPlatform extends PlatformInterface {
  /// Constructs a HttpIoPlatform.
  HttpIoPlatform() : super(token: _token);

  static final Object _token = Object();

  static HttpIoPlatform _instance = MethodChannelHttpIo();

  /// The default instance of [HttpIoPlatform] to use.
  ///
  /// Defaults to [MethodChannelHttpIo].
  static HttpIoPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [HttpIoPlatform] when
  /// they register themselves.
  static set instance(HttpIoPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
