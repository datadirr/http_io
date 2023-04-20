import 'http_io_platform_interface.dart';

class HttpIo {
  Future<String?> getPlatformVersion() {
    return HttpIoPlatform.instance.getPlatformVersion();
  }
}
