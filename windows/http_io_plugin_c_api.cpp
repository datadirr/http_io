#include "include/http_io/http_io_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "http_io_plugin.h"

void HttpIoPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  http_io::HttpIoPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
