import 'dart:convert';

import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';
import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart'
    as vault;
import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';

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
  Future<vault.DigitalCredential?> getCredential({
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

    // Parse the credential content
    final credentialJson = utf8.decode(credentialContent.content);
    final verifiableCredential = UniversalParser.parse(credentialJson);

    return vault.DigitalCredential(
      verifiableCredential: verifiableCredential,
      id: item.id,
    );
  }

  @override
  Future<List<vault.DigitalCredential>> listCredentials({
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
    final credentials = <vault.DigitalCredential>[];

    for (final item in items) {
      final credentialContent = await (_database.select(_database.credentials)
            ..where((filter) => filter.id.equals(item.id)))
          .getSingleOrNull();

      if (credentialContent != null) {
        // Parse the credential content
        final credentialJson = utf8.decode(credentialContent.content);
        final verifiableCredential = UniversalParser.parse(credentialJson);

        credentials.add(vault.DigitalCredential(
          verifiableCredential: verifiableCredential,
          id: item.id,
        ));
      }
    }

    return credentials;
  }

  @override
  Future<void> saveCredential({
    required String profileId,
    required vault.VerifiableCredential verifiableCredential,
    VaultCancelToken? cancelToken,
  }) async {
    // Generate credential ID
    final credentialId = const Uuid().v4();

    // Create credential item entry
    final credentialItem = db.ItemsCompanion.insert(
      id: Value(credentialId),
      profileId: _profileId,
      name: verifiableCredential.type.last,
      itemType: db.ItemType.file, // Using file type for credentials
    );
    await _database.into(_database.items).insert(credentialItem);

    // Create credential content entry
    final credentialJson = jsonEncode(verifiableCredential);
    final credentialData = utf8.encode(credentialJson);

    await _database.into(_database.credentials).insert(
          db.CredentialsCompanion.insert(
            id: credentialId,
            content: credentialData,
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
