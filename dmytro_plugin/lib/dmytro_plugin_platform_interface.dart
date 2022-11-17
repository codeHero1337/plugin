import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'dmytro_plugin_method_channel.dart';

abstract class DmytroPluginPlatform extends PlatformInterface {
  /// Constructs a DmytroPluginPlatform.
  DmytroPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static DmytroPluginPlatform _instance = MethodChannelDmytroPlugin();

  /// The default instance of [DmytroPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelDmytroPlugin].
  static DmytroPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DmytroPluginPlatform] when
  /// they register themselves.
  static set instance(DmytroPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
