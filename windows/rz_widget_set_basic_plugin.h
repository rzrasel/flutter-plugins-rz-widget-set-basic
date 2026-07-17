#ifndef FLUTTER_PLUGIN_RZ_WIDGET_SET_BASIC_PLUGIN_H_
#define FLUTTER_PLUGIN_RZ_WIDGET_SET_BASIC_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace rz_widget_set_basic {

class RzWidgetSetBasicPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  RzWidgetSetBasicPlugin();

  virtual ~RzWidgetSetBasicPlugin();

  // Disallow copy and assign.
  RzWidgetSetBasicPlugin(const RzWidgetSetBasicPlugin&) = delete;
  RzWidgetSetBasicPlugin& operator=(const RzWidgetSetBasicPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace rz_widget_set_basic

#endif  // FLUTTER_PLUGIN_RZ_WIDGET_SET_BASIC_PLUGIN_H_
