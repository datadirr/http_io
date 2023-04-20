import 'package:flutter_test/flutter_test.dart';
import 'package:http_io/http_io.dart';
import 'package:http_io/http_io_platform_interface.dart';
import 'package:http_io/http_io_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockHttpIoPlatform
    with MockPlatformInterfaceMixin
    implements HttpIoPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final HttpIoPlatform initialPlatform = HttpIoPlatform.instance;

  test('$MethodChannelHttpIo is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelHttpIo>());
  });

  test('getPlatformVersion', () async {
    HttpIo httpIoPlugin = HttpIo();
    MockHttpIoPlatform fakePlatform = MockHttpIoPlatform();
    HttpIoPlatform.instance = fakePlatform;

    expect(await httpIoPlugin.getPlatformVersion(), '42');
  });
}
