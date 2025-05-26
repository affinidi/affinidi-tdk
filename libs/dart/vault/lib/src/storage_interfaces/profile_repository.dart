import 'dart:typed_data';

import 'package:affinidi_tdk_vault_data_manager/affinidi_tdk_vault_data_manager.dart';

import '../permissions.dart';
import '../profile.dart';

/// Interface for managing user profiles and their access permissions.
abstract class ProfileRepository {
  /// Unique identifier for profile repository.
  String get id;

  /// Retrieves a list of all available profiles.
  Future<List<Profile>> listProfiles({
    AffinidiApiCancelToken? cancelToken,
  });

  /// Creates a new profile.
  ///
  /// [name] - The name of the new profile.
  /// [description] - Optional description of the profile.
  /// [cancelToken] - Optional cancel token for API requests.
  Future<void> createProfile({
    required String name,
    String? description,
    AffinidiApiCancelToken? cancelToken,
  });

  /// Updates an existing profile.
  ///
  /// [profile] - The profile to update.
  /// [cancelToken] - Optional cancel token for API requests.
  Future<void> updateProfile(
    Profile profile, {
    AffinidiApiCancelToken? cancelToken,
  });

  /// Deletes a profile.
  ///
  /// [profile] - The profile to delete.
  /// [cancelToken] - Optional cancel token for API requests.
  Future<void> deleteProfile(
    Profile profile, {
    AffinidiApiCancelToken? cancelToken,
  });

  /// Configures the profile repository with the provided settings.
  ///
  /// [config] - Configuration object containing repository settings.
  Future<void> configure(Object config);

  /// Checks if the profile repository is configured.
  ///
  /// Returns true if the repository is configured, false otherwise.
  Future<bool> isConfigured();

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
    AffinidiApiCancelToken? cancelToken,
  });

  /// Revokes access to a profile for a specific user.
  ///
  /// [accountIndex] - The index of the account.
  /// [granteeDid] - The DID of the user to revoke access from.
  /// [cancelToken] - Optional cancel token for API requests.
  Future<void> revokeProfileAccess({
    required int accountIndex,
    required String granteeDid,
    AffinidiApiCancelToken? cancelToken,
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
    AffinidiApiCancelToken? cancelToken,
  });
}
