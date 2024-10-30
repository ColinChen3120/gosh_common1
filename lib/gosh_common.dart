
import 'gosh_common_platform_interface.dart';

class GoshCommon {
  Future<String?> getPlatformVersion() {
    return GoshCommonPlatform.instance.getPlatformVersion();
  }
}
