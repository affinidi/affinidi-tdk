import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';
import 'package:drift/drift.dart';

import 'database/database.dart' hide Profile;

/// Repository class to manage profiles on a local Drift database
class EdgeProfileRepository implements EdgeProfileRepositoryInterface {
  final Database _database;

  /// Constructor
  EdgeProfileRepository({
    required Database database,
  }) : _database = database;

  @override
  Future<void> createProfile(
      {required String name,
      String? description,
      VaultCancelToken? cancelToken}) async {
    final entry = ProfilesCompanion.insert(
      name: name,
      description: Value(description),
    );

    await _database.into(_database.profiles).insert(entry);
  }

  @override
  Future<void> deleteProfile({
    required int profileId,
    VaultCancelToken? cancelToken,
  }) async {
    await (_database.delete(_database.profiles)
          ..where((filter) => filter.id.equals(profileId)))
        .go();
  }

  @override
  Future<List<EdgeProfile>> listProfiles({
    VaultCancelToken? cancelToken,
  }) async {
    final profiles = await _database.select(_database.profiles).get();

    return profiles
        .map((item) => EdgeProfile(
              id: item.id,
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
    final entry = ProfilesCompanion(
        id: Value(profile.id),
        name: Value(profile.name),
        description: Value(profile.description));
    await _database.update(_database.profiles).replace(entry);
  }
}
