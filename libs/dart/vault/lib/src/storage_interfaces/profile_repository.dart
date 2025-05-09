import 'dart:typed_data';

import '../permissions.dart';
import '../profile.dart';

/// Interface for managing user profiles and their access permissions.
abstract class ProfileRepository {
  /// Unique identifier for profile repository.
  String get id;

  /// Retrieves a list of all available profiles.
  Future<List<Profile>> listProfiles();

  /// Retrieves a specific profile by its ID.
  ///
  /// [id] - The unique identifier of the profile to retrieve.
  Future<Profile> getProfile(String id);

  /// Creates a new profile.
  ///
  /// [name] - The name of the new profile.
  /// [description] - Optional description of the profile.
  Future<void> createProfile({
    required String name,
    String? description,
  });

  /// Updates an existing profile.
  ///
  /// [profile] - The profile to update.
  Future<void> updateProfile(Profile profile);

  /// Deletes a profile.
  ///
  /// [profile] - The profile to delete.
  Future<void> deleteProfile(Profile profile);

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
  /// Returns the KEK for the granted access.
  Future<Uint8List> grantProfileAccess({
    required int accountIndex,
    required String granteeDid,
    required Permissions permissions,
  });

  /// Revokes access to a profile for a specific user.
  ///
  /// [accountIndex] - The index of the account.
  /// [granteeDid] - The DID of the user to revoke access from.
  Future<void> revokeProfileAccess({
    required int accountIndex,
    required String granteeDid,
  });

  /// Receives access to a profile that was granted by another user.
  ///
  /// [accountIndex] - The index of the account.
  /// [profileId] - The ID of the profile to receive access to.
  /// [kek] - The key encryption key for accessing the profile.
  /// [grantedProfileDid] - The DID of the profile being granted.
  Future<void> receiveProfileAccess({
    required int accountIndex,
    required String profileId,
    required Uint8List kek,
    required String grantedProfileDid,
  });
}
