import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'http_io_platform_interface.dart';

/// An implementation of [HttpIoPlatform] that uses method channels.
class MethodChannelHttpIo extends HttpIoPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('http_io');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>(
      'getPlatformVersion',
    );
    return version;
  }
}
