import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';
import 'package:drift/drift.dart';

import 'database/database.dart' as db;

/// Repository class to manage credentials on a local Drift database
class EdgeDriftCredentialRepository
    implements EdgeCredentialsRepositoryInterface {
  /// Constructor
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
    final credential = await (_database.select(_database.items)
          ..where((filter) =>
              filter.id.equals(credentialId) &
              filter.itemType.equals(db.ItemType.file.value) &
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

    // Delete credential content first
    await (_database.delete(_database.credentials)
          ..where((filter) => filter.id.equals(credentialId)))
        .go();

    // Delete credential item
    await (_database.delete(_database.items)
          ..where((filter) => filter.id.equals(credentialId)))
        .go();
  }

  @override
  Future<CredentialData?> getCredentialData({
    required String credentialId,
    VaultCancelToken? cancelToken,
  }) async {
    final item = await (_database.select(_database.items)
          ..where((filter) =>
              filter.id.equals(credentialId) &
              filter.itemType.equals(db.ItemType.file.value) &
              filter.profileId.equals(_profileId)))
        .getSingleOrNull();

    if (item == null) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Credential not found',
          code: TdkExceptionType.credentialNotFound.code,
        ),
        StackTrace.current,
      );
    }

    final credentialContent = await (_database.select(_database.credentials)
          ..where((filter) => filter.id.equals(credentialId)))
        .getSingleOrNull();

    if (credentialContent == null) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Credential content not found',
          code: TdkExceptionType.credentialNotFound.code,
        ),
        StackTrace.current,
      );
    }

    return CredentialData(
      id: item.id,
      content: credentialContent.content,
    );
  }

  @override
  Future<List<CredentialData>> listCredentialData({
    required String profileId,
    int? limit,
    String? exclusiveStartItemId,
    VaultCancelToken? cancelToken,
  }) async {
    var query = _database.select(_database.items)
      ..where((filter) =>
          filter.profileId.equals(_profileId) &
          filter.itemType.equals(db.ItemType.file.value));

    if (exclusiveStartItemId != null) {
      query = query
        ..where((filter) => filter.id.isBiggerThanValue(exclusiveStartItemId));
    }

    if (limit != null) {
      query = query..limit(limit);
    }

    final items = await query.get();
    final credentials = <CredentialData>[];

    for (final item in items) {
      final credentialContent = await (_database.select(_database.credentials)
            ..where((filter) => filter.id.equals(item.id)))
          .getSingleOrNull();

      if (credentialContent != null) {
        credentials.add(CredentialData(
          id: item.id,
          content: credentialContent.content,
        ));
      }
    }

    return credentials;
  }

  @override
  Future<void> saveCredentialData({
    required String profileId,
    required String credentialId,
    required String credentialName,
    required Uint8List credentialContent,
    VaultCancelToken? cancelToken,
  }) async {
    // Create credential item entry
    final credentialItem = db.ItemsCompanion.insert(
      id: Value(credentialId),
      profileId: _profileId,
      name: credentialName,
      itemType: db.ItemType.file, // Using file type for credentials
    );
    await _database.into(_database.items).insert(credentialItem);

    // Create credential content entry
    await _database.into(_database.credentials).insert(
          db.CredentialsCompanion.insert(
            id: credentialId,
            content: credentialContent,
          ),
        );

    // Verify the credential was created
    final createdCredential = await (_database.select(_database.items)
          ..where((filter) =>
              filter.id.equals(credentialId) &
              filter.itemType.equals(db.ItemType.file.value) &
              filter.profileId.equals(_profileId)))
        .getSingleOrNull();

    if (createdCredential == null) {
      throw Exception('Failed to create credential');
    }
  }
}
