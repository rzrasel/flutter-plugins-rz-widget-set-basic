#include "include/rz_widget_set_basic/rz_widget_set_basic_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "rz_widget_set_basic_plugin.h"

void RzWidgetSetBasicPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  rz_widget_set_basic::RzWidgetSetBasicPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
