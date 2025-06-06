import 'package:affinidi_tdk_iam_client/affinidi_tdk_iam_client.dart';

class PermissionsFixtures {
  static List<RightsEnum> get readRights => [RightsEnum.read];
  static List<RightsEnum> get writeRights => [RightsEnum.write];
  static List<RightsEnum> get allRights => [RightsEnum.read, RightsEnum.write];
}
