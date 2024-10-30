import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'gosh_common_method_channel.dart';

abstract class GoshCommonPlatform extends PlatformInterface {
  /// Constructs a GoshCommonPlatform.
  GoshCommonPlatform() : super(token: _token);

  static final Object _token = Object();

  static GoshCommonPlatform _instance = MethodChannelGoshCommon();

  /// The default instance of [GoshCommonPlatform] to use.
  ///
  /// Defaults to [MethodChannelGoshCommon].
  static GoshCommonPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [GoshCommonPlatform] when
  /// they register themselves.
  static set instance(GoshCommonPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  /// Method channel for interacting with native platform.

  /// Uses method channel for getting low power mode.
  Future<bool> get isLowPowerMode async {
    // return await _instance.invokeMethod('getPowerMode');
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  /// Uses method channel for getting battery level.
  ///
  /// Returns -1 if batteryState is unknown in iOS
  Future<num> get batteryLevel async {
    // return await _methodChannel.invokeMethod('getBatteryLevel');
    throw UnimplementedError('platformVersion() has not been implemented.');

  }

  /// Uses method channel for getting charging status.
  Future<bool> get isCharging async {
    // return await _methodChannel.invokeMethod('getChargingStatus');
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
