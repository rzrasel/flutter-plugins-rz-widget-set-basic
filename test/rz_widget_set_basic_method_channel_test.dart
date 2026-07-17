import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rz_widget_set_basic/rz_widget_set_basic_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelRzWidgetSetBasic platform = MethodChannelRzWidgetSetBasic();
  const MethodChannel channel = MethodChannel('rz_widget_set_basic');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
