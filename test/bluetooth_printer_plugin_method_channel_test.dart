import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bluetooth_printer_plugin/bluetooth_printer_plugin_method_channel.dart';

void main() {
  MethodChannelBluetoothPrinterPlugin platform = MethodChannelBluetoothPrinterPlugin();
  const MethodChannel channel = MethodChannel('bluetooth_printer_plugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
