import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'rz_widget_set_basic_method_channel.dart';

abstract class RzWidgetSetBasicPlatform extends PlatformInterface {
  /// Constructs a RzWidgetSetBasicPlatform.
  RzWidgetSetBasicPlatform() : super(token: _token);

  static final Object _token = Object();

  static RzWidgetSetBasicPlatform _instance = MethodChannelRzWidgetSetBasic();

  /// The default instance of [RzWidgetSetBasicPlatform] to use.
  ///
  /// Defaults to [MethodChannelRzWidgetSetBasic].
  static RzWidgetSetBasicPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [RzWidgetSetBasicPlatform] when
  /// they register themselves.
  static set instance(RzWidgetSetBasicPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
