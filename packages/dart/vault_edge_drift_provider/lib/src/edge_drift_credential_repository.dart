import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';
import 'package:drift/drift.dart';

import 'database/database.dart' as db;

/// Repository class to manage credentials on a local Drift database
class EdgeDriftCredentialRepository
    implements EdgeCredentialsRepositoryInterface {
  /// Creates a new instance of [EdgeDriftCredentialRepository].
  const EdgeDriftCredentialRepository({
    required db.Database database,
    required String profileId,
  })  : _database = database,
        _profileId = profileId;

  final db.Database _database;
  final String _profileId;

  @override
  Future<void> deleteCredential({
    required String credentialId,
    VaultCancelToken? cancelToken,
  }) async {
    // Check if credential exists
    final credential = await (_database.select(_database.credentials)
          ..where((filter) =>
              filter.id.equals(credentialId) &
              filter.profileId.equals(_profileId)))
        .getSingleOrNull();

    if (credential == null) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Credential not found',
          code: TdkExceptionType.credentialNotFound.code,
        ),
        StackTrace.current,
      );
    }

    await (_database.delete(_database.credentials)
          ..where((filter) => filter.id.equals(credentialId)))
        .go();
  }

  @override
  Future<EdgeCredential?> getCredentialData({
    required String credentialId,
    VaultCancelToken? cancelToken,
  }) async {
    final credential = await (_database.select(_database.credentials)
          ..where((filter) =>
              filter.id.equals(credentialId) &
              filter.profileId.equals(_profileId)))
        .getSingleOrNull();

    if (credential == null) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Credential not found',
          code: TdkExceptionType.credentialNotFound.code,
        ),
        StackTrace.current,
      );
    }

    return EdgeCredential(
      id: credential.id,
      content: credential.content,
    );
  }

  @override
  Future<PaginatedList<EdgeCredential>> listCredentialData({
    required String profileId,
    int? limit,
    String? exclusiveStartItemId,
    VaultCancelToken? cancelToken,
  }) async {
    var query = _database.select(_database.credentials)
      ..where((filter) => filter.profileId.equals(_profileId));

    var offset = 0;
    if (exclusiveStartItemId != null) {
      offset = int.tryParse(exclusiveStartItemId) ?? 0;
    }

    if (limit != null) {
      query = query..limit(limit, offset: offset);
    }

    final credentials = await query.get();
    final items = credentials
        .map((credential) => EdgeCredential(
              id: credential.id,
              content: credential.content,
            ))
        .toList();

    String? lastEvaluatedItemId;
    if (credentials.isNotEmpty && limit != null) {
      lastEvaluatedItemId = (offset + credentials.length).toString();
    }

    return PaginatedList(
      items: items,
      lastEvaluatedItemId: lastEvaluatedItemId,
    );
  }

  @override
  Future<void> saveCredentialData({
    required String profileId,
    required String credentialId,
    required String credentialName,
    required Uint8List credentialContent,
    VaultCancelToken? cancelToken,
  }) async {
    final credentialEntry = db.CredentialsCompanion.insert(
      id: Value(credentialId),
      profileId: _profileId,
      name: credentialName,
      content: credentialContent,
    );
    await _database.into(_database.credentials).insert(credentialEntry);
  }
}
