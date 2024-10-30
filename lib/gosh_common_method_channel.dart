import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'gosh_common_platform_interface.dart';

/// An implementation of [GoshCommonPlatform] that uses method channels.
class MethodChannelGoshCommon extends GoshCommonPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('gosh_common');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  Future<bool> get isLowPowerMode async {
    return await methodChannel.invokeMethod('getPowerMode');
  }

  /// Uses method channel for getting battery level.
  ///
  /// Returns -1 if batteryState is unknown in iOS
  Future<num> get batteryLevel async {
    return await methodChannel.invokeMethod('getBatteryLevel');
  }

  /// Uses method channel for getting charging status.
  Future<bool> get isCharging async {
    return await methodChannel.invokeMethod('getChargingStatus');
  }
}
