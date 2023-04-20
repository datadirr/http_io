import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_io/http_io_method_channel.dart';

void main() {
  MethodChannelHttpIo platform = MethodChannelHttpIo();
  const MethodChannel channel = MethodChannel('http_io');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
