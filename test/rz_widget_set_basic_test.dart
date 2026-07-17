import 'package:flutter_test/flutter_test.dart';
import 'package:rz_widget_set_basic/rz_widget_set_basic.dart';
import 'package:rz_widget_set_basic/rz_widget_set_basic_platform_interface.dart';
import 'package:rz_widget_set_basic/rz_widget_set_basic_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockRzWidgetSetBasicPlatform
    with MockPlatformInterfaceMixin
    implements RzWidgetSetBasicPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final RzWidgetSetBasicPlatform initialPlatform = RzWidgetSetBasicPlatform.instance;

  test('$MethodChannelRzWidgetSetBasic is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelRzWidgetSetBasic>());
  });

  test('getPlatformVersion', () async {
    //RzWidgetSetBasic rzWidgetSetBasicPlugin = RzWidgetSetBasic();
    MockRzWidgetSetBasicPlatform fakePlatform = MockRzWidgetSetBasicPlatform();
    RzWidgetSetBasicPlatform.instance = fakePlatform;

    //expect(await rzWidgetSetBasicPlugin.getPlatformVersion(), '42');
  });
}
