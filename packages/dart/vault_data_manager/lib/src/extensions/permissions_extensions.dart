import 'package:affinidi_tdk_iam_client/affinidi_tdk_iam_client.dart';
import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';

/// Extension methods for converting [Permissions] to [RightsEnum] list.
extension PermissionExtension on Permissions {
  /// Converts [Permissions] to a list of [RightsEnum].
  ///
  /// Returns a list containing the corresponding [RightsEnum] values:
  /// - [Permissions.read] -> [RightsEnum.vfsRead]
  /// - [Permissions.write] -> [RightsEnum.vfsWrite]
  /// - [Permissions.all] -> [RightsEnum.vfsRead, RightsEnum.vfsWrite]
  List<RightsEnum> toRights() {
    switch (this) {
      case Permissions.read:
        return [RightsEnum.vfsRead];
      case Permissions.write:
        return [RightsEnum.vfsWrite];
      case Permissions.all:
        return [RightsEnum.vfsRead, RightsEnum.vfsWrite];
    }
  }
}
