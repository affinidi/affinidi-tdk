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
}
