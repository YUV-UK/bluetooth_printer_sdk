import 'package:flutter_test/flutter_test.dart';
import 'package:bluetooth_printer_plugin/bluetooth_printer_plugin.dart';
import 'package:bluetooth_printer_plugin/bluetooth_printer_plugin_platform_interface.dart';
import 'package:bluetooth_printer_plugin/bluetooth_printer_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBluetoothPrinterPluginPlatform 
    with MockPlatformInterfaceMixin
    implements BluetoothPrinterPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final BluetoothPrinterPluginPlatform initialPlatform = BluetoothPrinterPluginPlatform.instance;

  test('$MethodChannelBluetoothPrinterPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBluetoothPrinterPlugin>());
  });

  test('getPlatformVersion', () async {
    BluetoothPrinterPlugin bluetoothPrinterPlugin = BluetoothPrinterPlugin();
    MockBluetoothPrinterPluginPlatform fakePlatform = MockBluetoothPrinterPluginPlatform();
    BluetoothPrinterPluginPlatform.instance = fakePlatform;
  
    expect(await bluetoothPrinterPlugin.getPlatformVersion(), '42');
  });
}
