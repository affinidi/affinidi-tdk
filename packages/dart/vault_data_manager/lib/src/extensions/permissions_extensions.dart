import 'package:affinidi_tdk_iam_client/affinidi_tdk_iam_client.dart';
import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';

/// Extension methods for converting [Permissions] to [RightsEnum] list.
extension PermissionExtension on Permissions {
  /// Converts [Permissions] to a list of [RightsEnum].
  ///
  /// Returns a list containing the corresponding [RightsEnum] values:
  /// - Permissions.read -> RightsEnum.values.first
  /// - Permissions.write -> RightsEnum.values.last
  /// - Permissions.all -> [RightsEnum.values.first, RightsEnum.values.last]
  List<RightsEnum> toRights() {
    switch (this) {
      case Permissions.read:
        return [RightsEnum.values.first];
      case Permissions.write:
        return [RightsEnum.values.last];
      case Permissions.all:
        return [RightsEnum.values.first, RightsEnum.values.last];
    }
  }
}
