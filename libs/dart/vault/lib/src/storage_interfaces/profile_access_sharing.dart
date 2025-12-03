import 'dart:typed_data';

import '../helpers/vault_cancel_token.dart';
import '../permissions.dart';

/// Interface for managing user profiles access permissions.
abstract interface class ProfileAccessSharing {
  /// Grants access to a profile for a specific user.
  ///
  /// [accountIndex] - The index of the account.
  /// [granteeDid] - The DID of the user to grant access to.
  /// [permissions] - The permissions to grant.
  /// [cancelToken] - Optional cancel token for API requests.
  /// Returns the KEK for the granted access.
  Future<Uint8List> grantProfileAccess({
    required int accountIndex,
    required String granteeDid,
    required Permissions permissions,
    VaultCancelToken? cancelToken,
  });

  /// Revokes access to a profile for a specific user.
  ///
  /// [accountIndex] - The index of the account.
  /// [granteeDid] - The DID of the user to revoke access from.
  /// [cancelToken] - Optional cancel token for API requests.
  Future<void> revokeProfileAccess({
    required int accountIndex,
    required String granteeDid,
    VaultCancelToken? cancelToken,
  });

  /// Receives access to a profile that was granted by another user.
  ///
  /// [accountIndex] - The index of the account.
  /// [profileId] - The ID of the profile to receive access to.
  /// [kek] - The key encryption key for accessing the profile.
  /// [grantedProfileDid] - The DID of the profile being granted.
  /// [cancelToken] - Optional cancel token for API requests.
  Future<void> receiveProfileAccess({
    required int accountIndex,
    required String profileId,
    required Uint8List kek,
    required String grantedProfileDid,
    VaultCancelToken? cancelToken,
  });

  /// Grants access to specific items (files/folders) for a specific user.
  ///
  /// [accountIndex] - The index of the account.
  /// [granteeDid] - The DID of the user to grant access to.
  /// [itemIds] - List of item IDs (file or folder IDs) to grant access to.
  /// [permissions] - The permissions to grant (read, write, or all).
  /// [cancelToken] - Optional cancel token for API requests.
  /// Returns the KEK for accessing the shared items.
  Future<Uint8List> grantItemAccess({
    required int accountIndex,
    required String granteeDid,
    required List<String> itemIds,
    required Permissions permissions,
    VaultCancelToken? cancelToken,
  });

  /// Grants access to multiple permission groups in a single call.
  ///
  /// This allows sending multiple Permission objects with different rights
  /// in one request, preserving separate permission groups.
  ///
  /// [accountIndex] - The index of the account.
  /// [granteeDid] - The DID of the user to grant access to.
  /// [permissionGroups] - List of permission groups, each containing itemIds and permissions.
  /// [cancelToken] - Optional cancel token for API requests.
  /// Returns the KEK for accessing the shared items.
  Future<Uint8List> grantItemAccessMultiple({
    required int accountIndex,
    required String granteeDid,
    required List<({List<String> itemIds, Permissions permissions})>
        permissionGroups,
    VaultCancelToken? cancelToken,
  });

  /// Revokes access to specific items (files/folders) for a specific user.
  ///
  /// [accountIndex] - The index of the account.
  /// [granteeDid] - The DID of the user to revoke access from.
  /// [itemIds] - List of item IDs (file or folder IDs) to revoke access from.
  /// [cancelToken] - Optional cancel token for API requests.
  Future<void> revokeItemAccess({
    required int accountIndex,
    required String granteeDid,
    required List<String> itemIds,
    VaultCancelToken? cancelToken,
  });

  /// Gets access permissions for specific items (files/folders) for a specific user.
  ///
  /// [accountIndex] - The index of the account.
  /// [granteeDid] - The DID of the user to get access permissions for.
  /// [cancelToken] - Optional cancel token for API requests.
  /// Returns the access permissions for the grantee.
  Future<Map<String, dynamic>> getItemAccess({
    required int accountIndex,
    required String granteeDid,
    VaultCancelToken? cancelToken,
  });

  /// Receives access to nodes that were granted by another user.
  ///
  /// [accountIndex] - The index of the account.
  /// [ownerProfileId] - The ID of the profile that owns the nodes.
  /// [kek] - The key encryption key for accessing the nodes.
  /// [ownerProfileDid] - The DID of the profile that owns the nodes.
  /// [cancelToken] - Optional cancel token for API requests.
  Future<void> receiveItemAccess({
    required int accountIndex,
    required String ownerProfileId,
    required Uint8List kek,
    required String ownerProfileDid,
    VaultCancelToken? cancelToken,
  });
}
