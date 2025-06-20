import '../helpers/vault_cancel_token.dart';
import '../profile.dart';

/// Interface for managing user profiles.
abstract class ProfileRepository {
  /// Unique identifier for profile repository.
  String get id;

  /// Retrieves a list of all available profiles.
  Future<List<Profile>> listProfiles({
    VaultCancelToken? cancelToken,
  });

  /// Creates a new profile.
  ///
  /// [name] - The name of the new profile.
  /// [description] - Optional description of the profile.
  /// [cancelToken] - Optional cancel token for API requests.
  Future<void> createProfile({
    required String name,
    String? description,
    VaultCancelToken? cancelToken,
  });

  /// Updates an existing profile.
  ///
  /// [profile] - The profile to update.
  /// [cancelToken] - Optional cancel token for API requests.
  Future<void> updateProfile(
    Profile profile, {
    VaultCancelToken? cancelToken,
  });

  /// Deletes a profile.
  ///
  /// [profile] - The profile to delete.
  /// [cancelToken] - Optional cancel token for API requests.
  Future<void> deleteProfile(
    Profile profile, {
    VaultCancelToken? cancelToken,
  });

  /// Configures the profile repository with the provided settings.
  ///
  /// [configuration] - Configuration object containing repository settings.
  Future<void> configure(Object configuration);

  /// Checks if the profile repository is configured.
  ///
  /// Returns true if the repository is configured, false otherwise.
  Future<bool> isConfigured();
}
