import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';

import '../models/edge_credential.dart';

/// Interface to manage CRUD operations on credentials
abstract interface class EdgeCredentialsRepositoryInterface {
  /// Retrieves list of raw credential data for a profile with pagination support
  /// Returns a [PaginatedList] containing the credentials and pagination information
  Future<PaginatedList<EdgeCredential>> listCredentialData({
    required String profileId,
    int? limit,
    String? exclusiveStartItemId,
    VaultCancelToken? cancelToken,
  });

  /// Creates a new credential with raw data
  Future<void> saveCredentialData({
    required String profileId,
    required String credentialId,
    required String credentialName,
    required Uint8List credentialContent,
    VaultCancelToken? cancelToken,
  });

  /// Removes an existing credential
  Future<void> deleteCredential({
    required String credentialId,
    VaultCancelToken? cancelToken,
  });

  /// Retrieves raw credential data by ID
  Future<EdgeCredential?> getCredentialData({
    required String credentialId,
    VaultCancelToken? cancelToken,
  });
}
