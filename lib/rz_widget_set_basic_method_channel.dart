import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'rz_widget_set_basic_platform_interface.dart';

/// An implementation of [RzWidgetSetBasicPlatform] that uses method channels.
class MethodChannelRzWidgetSetBasic extends RzWidgetSetBasicPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('rz_widget_set_basic');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
