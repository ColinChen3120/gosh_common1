import 'package:flutter_test/flutter_test.dart';
import 'package:gosh_common/gosh_common.dart';
import 'package:gosh_common/gosh_common_platform_interface.dart';
import 'package:gosh_common/gosh_common_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockGoshCommonPlatform
    with MockPlatformInterfaceMixin
    implements GoshCommonPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final GoshCommonPlatform initialPlatform = GoshCommonPlatform.instance;

  test('$MethodChannelGoshCommon is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelGoshCommon>());
  });

  test('getPlatformVersion', () async {
    GoshCommon goshCommonPlugin = GoshCommon();
    MockGoshCommonPlatform fakePlatform = MockGoshCommonPlatform();
    GoshCommonPlatform.instance = fakePlatform;

    expect(await goshCommonPlugin.getPlatformVersion(), '42');
  });
}
