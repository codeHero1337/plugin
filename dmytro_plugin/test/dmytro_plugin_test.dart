import 'package:flutter_test/flutter_test.dart';
import 'package:dmytro_plugin/dmytro_plugin.dart';
import 'package:dmytro_plugin/dmytro_plugin_platform_interface.dart';
import 'package:dmytro_plugin/dmytro_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDmytroPluginPlatform
    with MockPlatformInterfaceMixin
    implements DmytroPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DmytroPluginPlatform initialPlatform = DmytroPluginPlatform.instance;

  test('$MethodChannelDmytroPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDmytroPlugin>());
  });

  test('getPlatformVersion', () async {
    DmytroPlugin dmytroPlugin = DmytroPlugin();
    MockDmytroPluginPlatform fakePlatform = MockDmytroPluginPlatform();
    DmytroPluginPlatform.instance = fakePlatform;

    expect(await dmytroPlugin.getPlatformVersion(), '42');
  });
}
