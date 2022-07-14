import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'bluetooth_printer_plugin_platform_interface.dart';

/// An implementation of [BluetoothPrinterPluginPlatform] that uses method channels.
class MethodChannelBluetoothPrinterPlugin extends BluetoothPrinterPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('bluetooth_printer_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
