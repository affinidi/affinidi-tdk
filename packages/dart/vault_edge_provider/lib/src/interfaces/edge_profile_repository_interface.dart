import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';

import '../models/edge_profile.dart';

/// Interface to manage CRUD operations on profiles
abstract interface class EdgeProfileRepositoryInterface {
  /// Retrieves list of local profiles
  Future<List<EdgeProfile>> listProfiles({
    VaultCancelToken? cancelToken,
  });

  /// Creates a new local profile
  Future<void> createProfile({
    required String name,
    String? description,
    VaultCancelToken? cancelToken,
  });

  /// Removes an existing local profile
  Future<void> deleteProfile({
    required int profileId,
    VaultCancelToken? cancelToken,
  });

  /// Updates an existing local profile
  Future<void> updateProfile({
    required EdgeProfile profile,
    VaultCancelToken? cancelToken,
  });
}
