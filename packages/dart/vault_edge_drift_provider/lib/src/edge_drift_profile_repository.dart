import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';
import 'package:drift/drift.dart';

import 'database/database.dart' hide Profile;

/// Repository class to manage profiles on a local Drift database
class EdgeDriftProfileRepository implements EdgeProfileRepositoryInterface {
  /// Constructor
  EdgeDriftProfileRepository({
    required Database database,
  }) : _database = database;

  final Database _database;

  @override
  Future<void> createProfile({
    required String name,
    String? description,
    required int accountIndex,
    VaultCancelToken? cancelToken,
  }) async {
    final entry = ProfilesCompanion.insert(
      name: name,
      description: Value(description),
      accountIndex: accountIndex,
    );

    await _database.into(_database.profiles).insert(entry);
  }

  @override
  Future<void> deleteProfile({
    required String profileId,
    VaultCancelToken? cancelToken,
  }) async {
    await _database.transaction(() async {
      await (_database.delete(_database.items)
            ..where((filter) => filter.profileId.equals(profileId)))
          .go();

      await (_database.delete(_database.credentials)
            ..where((filter) => filter.profileId.equals(profileId)))
          .go();

      final deleted = await (_database.delete(_database.profiles)
            ..where((filter) => filter.id.equals(profileId)))
          .go();

      if (deleted == 0) {
        throw TdkException(
          message: 'Failed to delete profile',
          code: TdkExceptionType.unableToDeleteNonExistentProfile.code,
        );
      }
    });
  }

  @override
  Future<List<EdgeProfile>> listProfiles({
    VaultCancelToken? cancelToken,
  }) async {
    final profiles = await _database.select(_database.profiles).get();

    return profiles
        .map((item) => EdgeProfile(
              id: item.id,
              accountIndex: item.accountIndex,
              name: item.name,
              description: item.description,
            ))
        .toList();
  }

  @override
  Future<void> updateProfile({
    required EdgeProfile profile,
    VaultCancelToken? cancelToken,
  }) async {
    final existing = await (_database.select(_database.profiles)
          ..where((filter) => filter.id.equals(profile.id)))
        .getSingleOrNull();

    if (existing == null) {
      throw TdkException(
        message: 'Failed to update profile',
        code: TdkExceptionType.unableToUpdateNonExistentProfile.code,
      );
    }

    final entry = ProfilesCompanion(
      id: Value(profile.id),
      accountIndex: Value(profile.accountIndex),
      name: Value(profile.name),
      description: Value(profile.description),
    );
    await _database.update(_database.profiles).replace(entry);
  }

  @override
  Future<bool> hasAnyContent(String profileId) async {
    final filesOrFolders = await (_database.select(_database.items)
          ..where((filter) => filter.profileId.equals(profileId)))
        .get();

    final credentials = await (_database.select(_database.credentials)
          ..where((filter) => filter.profileId.equals(profileId)))
        .get();

    return filesOrFolders.isNotEmpty || credentials.isNotEmpty;
  }
}
