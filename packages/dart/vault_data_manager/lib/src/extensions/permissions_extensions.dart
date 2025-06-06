import 'package:affinidi_tdk_iam_client/affinidi_tdk_iam_client.dart';
import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';

/// Extension methods for converting [Permissions] to [RightsEnum] list.
extension PermissionExtension on Permissions {
  /// Converts [Permissions] to a list of [RightsEnum].
  ///
  /// Returns a list containing the corresponding [RightsEnum] values:
  /// - [Permissions.read] -> [RightsEnum.read]
  /// - [Permissions.write] -> [RightsEnum.write]
  /// - [Permissions.all] -> [RightsEnum.read, RightsEnum.write]
  List<RightsEnum> toRights() {
    switch (this) {
      case Permissions.read:
        return [RightsEnum.read];
      case Permissions.write:
        return [RightsEnum.write];
      case Permissions.all:
        return [RightsEnum.read, RightsEnum.write];
    }
  }
}
