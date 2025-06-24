import 'package:affinidi_tdk_iam_client/affinidi_tdk_iam_client.dart';

class PermissionsFixtures {
  static List<RightsEnum> get readRights => [RightsEnum.vfsRead];
  static List<RightsEnum> get writeRights => [RightsEnum.vfsWrite];
  static List<RightsEnum> get allRights =>
      [RightsEnum.vfsRead, RightsEnum.vfsWrite];
}
