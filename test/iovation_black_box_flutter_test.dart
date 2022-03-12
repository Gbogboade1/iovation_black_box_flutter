import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iovation_black_box_flutter/iovation_black_box_flutter.dart';

void main() {
  const MethodChannel channel = MethodChannel('iovation_black_box_flutter');

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
    expect(await IovationBlackBoxFlutter.platformVersion, '42');
  });
}
