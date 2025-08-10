import 'package:didcomm/didcomm.dart';
import 'package:dio/dio.dart';
import 'package:uuid/uuid.dart';

// TODO: export correctly in DIDComm
import 'package:didcomm/src/common/authentication_tokens/authentication_tokens.dart';
import 'package:didcomm/src/common/did.dart';
import 'package:didcomm/src/common/did_document_service_type.dart';
import 'package:didcomm/src/mediator_client/mediator_client_exception.dart';

/// Extension for [MediatorClient] to support Affinidi-specific authentication.
///
/// Authentication by mediators is not covered by the DIDComm standard.
/// This extension provides a method to authenticate with an Affinidi mediator.
extension AuthenticatorExtension on MediatorClient {
  /// Authenticates with an Affinidi mediator.
  ///
  /// [encryptionAlgorithm]: The encryption algorithm to use for the authentication message (default: [EncryptionAlgorithm.a256cbc]).
  ///
  /// Returns [AuthenticationTokens] containing access and refresh tokens on successful authentication.
  Future<AuthenticationTokens> authenticate({
    EncryptionAlgorithm encryptionAlgorithm = EncryptionAlgorithm.a256cbc,
  }) async {
    final dio = mediatorDidDocument.toDio(
      mediatorServiceType: DidDocumentServiceType.authentication,
    );

    final did = getDidFromId(didKeyId);

    try {
      final challengeResponse = await dio.post<Map<String, dynamic>>(
        '/challenge',
        data: {'did': did},
      );

      final createdTime = DateTime.now().toUtc();
      final expiresTime = createdTime.add(const Duration(seconds: 60));

      final plainTextMessage = PlainTextMessage(
        id: const Uuid().v4(),
        type: Uri.parse('https://affinidi.com/atm/1.0/authenticate'),
        createdTime: createdTime,
        expiresTime: expiresTime,
        from: did,
        to: [mediatorDidDocument.id],
        body: challengeResponse.data!['data'] as Map<String, dynamic>,
      );

      final encryptedMessage =
          await DidcommMessage.packIntoSignedAndEncryptedMessages(
        plainTextMessage,
        keyPair: keyPair,
        didKeyId: didKeyId,
        recipientDidDocuments: [mediatorDidDocument],
        encryptionAlgorithm: encryptionAlgorithm,
        keyWrappingAlgorithm: KeyWrappingAlgorithm.ecdh1Pu,
        signer: signer,
      );

      final authenticateResponse = await dio.post<Map<String, dynamic>>(
        '',
        data: encryptedMessage,
      );

      return AuthenticationTokens.fromJson(
        authenticateResponse.data!['data'] as Map<String, dynamic>,
      );
    } on DioException catch (error) {
      throw MediatorClientException(innerException: error);
    }
  }
}
