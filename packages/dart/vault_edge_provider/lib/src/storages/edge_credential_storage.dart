import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:uuid/uuid.dart';

import '../../affinidi_tdk_vault_edge_provider.dart';

/// An Edge based implementation of [CredentialStorage] for storing and managing
/// verifiable credentials with encryption support.
class EdgeCredentialStorage implements CredentialStorage {
  /// Creates a new instance of [EdgeCredentialStorage].
  EdgeCredentialStorage({
    required EdgeCredentialsRepositoryInterface repository,
    required String id,
    required String profileId,
    CredentialCodec? codec,
    required EdgeEncryptionServiceInterface encryptionService,
  })  : _repository = repository,
        _id = id,
        _profileId = profileId,
        _codec = codec ?? CredentialCodec(),
        _encryptionService = encryptionService;

  final EdgeCredentialsRepositoryInterface _repository;
  final String _id;
  final String _profileId;
  final CredentialCodec _codec;
  final EdgeEncryptionServiceInterface _encryptionService;

  @override
  String get id => _id;

  @override
  Future<void> deleteCredential({
    required String digitalCredentialId,
    VaultCancelToken? cancelToken,
  }) async {
    final credentialData = await _repository.getCredentialData(
      credentialId: digitalCredentialId,
      cancelToken: cancelToken,
    );

    if (credentialData == null) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Credential not found',
          code: TdkExceptionType.credentialNotFound.code,
        ),
        StackTrace.current,
      );
    }

    await _repository.deleteCredential(
      credentialId: digitalCredentialId,
      cancelToken: cancelToken,
    );
  }

  @override
  Future<DigitalCredential> getCredential({
    required String digitalCredentialId,
    VaultCancelToken? cancelToken,
  }) async {
    final credentialData = await _repository.getCredentialData(
      credentialId: digitalCredentialId,
      cancelToken: cancelToken,
    );

    if (credentialData == null) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Credential not found',
          code: TdkExceptionType.credentialNotFound.code,
        ),
        StackTrace.current,
      );
    }

    final decryptedContent =
        await _encryptionService.decryptData(credentialData.content);

    return _codec.decode(
      credentialBytes: decryptedContent,
      id: credentialData.id,
    );
  }

  @override
  Future<PaginatedList<DigitalCredential>> listCredentials({
    int? limit,
    String? exclusiveStartItemId,
    VaultCancelToken? cancelToken,
  }) async {
    final credentialDataList = await _repository.listCredentialData(
      profileId: _profileId,
      limit: limit,
      exclusiveStartItemId: exclusiveStartItemId,
      cancelToken: cancelToken,
    );

    final credentials = await Future.wait(
      credentialDataList.items.map((credentialData) async {
        final decryptedContent =
            await _encryptionService.decryptData(credentialData.content);

        return _codec.decode(
          credentialBytes: decryptedContent,
          id: credentialData.id,
        );
      }),
    );

    return PaginatedList(
      items: credentials,
      lastEvaluatedItemId: credentialDataList.lastEvaluatedItemId,
    );
  }

  @override
  dynamic query(String pexQuery) {
    // TODO: implement query
    throw UnimplementedError();
  }

  @override
  Future<void> saveCredential({
    required VerifiableCredential verifiableCredential,
    VaultCancelToken? cancelToken,
  }) async {
    final credentialId = const Uuid().v4();

    final credentialName = verifiableCredential.type
            .where((type) => type != 'VerifiableCredential')
            .firstOrNull ??
        'Credential';

    final credentialContent = _codec.encode(verifiableCredential);

    // Encrypt the credential content
    final encryptedContent =
        await _encryptionService.encryptData(credentialContent);

    await _repository.saveCredentialData(
      profileId: _profileId,
      credentialId: credentialId,
      credentialName: credentialName,
      credentialContent: encryptedContent,
      cancelToken: cancelToken,
    );
  }
}
