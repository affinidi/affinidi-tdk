import 'package:affinidi_tdk_iam_client/affinidi_tdk_iam_client.dart';

class PermissionsFixtures {
  static List<RightsEnum> get readRights => [RightsEnum.values.first];
  static List<RightsEnum> get writeRights => [RightsEnum.values.last];
  static List<RightsEnum> get allRights =>
      [RightsEnum.values.first, RightsEnum.values.last];
}
