import 'package:device_info_plus/device_info_plus.dart';

class DmytroPlugin {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

  Future<Map<String, dynamic>> getPlatformInfo() async {
    final deviceInfoPlugin = DeviceInfoPlugin();
    final deviceInfo = await deviceInfoPlugin.deviceInfo;
    final allInfo = deviceInfo.data;
    return allInfo;
  }
}
