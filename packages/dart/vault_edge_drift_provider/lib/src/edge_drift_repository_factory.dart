import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';

import '../affinidi_tdk_vault_edge_drift_provider.dart';

/// Used to create repositories for handling operations on profiles, files and credentials.
class EdgeDriftRepositoryFactory implements EdgeRepositoryFactoryInterface {
  /// Creates a new instance of [EdgeDriftRepositoryFactory].
  EdgeDriftRepositoryFactory({required Database database})
      : _database = database;

  final Database _database;

  @override
  EdgeDriftProfileRepository createProfileRepository() {
    return EdgeDriftProfileRepository(
      database: _database,
    );
  }

  @override
  EdgeDriftFileRepository createFileRepository({
    required String profileId,
  }) {
    return EdgeDriftFileRepository(
      database: _database,
      profileId: profileId,
    );
  }

  @override
  EdgeDriftCredentialRepository createCredentialRepository({
    required String profileId,
  }) {
    return EdgeDriftCredentialRepository(
      database: _database,
      profileId: profileId,
    );
  }
}
