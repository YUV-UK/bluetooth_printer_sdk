
import 'package:flutter/services.dart';

import 'bluetooth_printer_plugin_platform_interface.dart';

class BluetoothPrinterPlugin {
  static Future<String?> getPlatformVersion() {
    return BluetoothPrinterPluginPlatform.instance.getPlatformVersion();
  }
}