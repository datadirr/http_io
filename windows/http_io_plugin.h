#ifndef FLUTTER_PLUGIN_HTTP_IO_PLUGIN_H_
#define FLUTTER_PLUGIN_HTTP_IO_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace http_io {

class HttpIoPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  HttpIoPlugin();

  virtual ~HttpIoPlugin();

  // Disallow copy and assign.
  HttpIoPlugin(const HttpIoPlugin&) = delete;
  HttpIoPlugin& operator=(const HttpIoPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace http_io

#endif  // FLUTTER_PLUGIN_HTTP_IO_PLUGIN_H_
