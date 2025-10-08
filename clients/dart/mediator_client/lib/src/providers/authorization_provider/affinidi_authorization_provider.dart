import 'package:didcomm/didcomm.dart';
import 'package:dio/dio.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

/// An [AuthorizationProvider] implementation for Affinidi mediators.
///
/// Handles the process of authenticating with an Affinidi mediator using DIDComm,
/// including key agreement, challenge-response, and token retrieval.
class AffinidiAuthorizationProvider extends AuthorizationProvider {
  /// The mediator's DID Document used for authentication and key agreement.
  final DidDocument mediatorDidDocument;

  /// The key pair used for encryption and signing.
  final KeyPair keyPair;

  /// The DID key ID used for key agreement with the mediator.
  final String didKeyId;

  /// The signer used for signing authentication messages.
  final DidSigner signer;

  /// Creates an [AffinidiAuthorizationProvider] with the required dependencies.
  AffinidiAuthorizationProvider({
    required this.mediatorDidDocument,
    required this.keyPair,
    required this.didKeyId,
    required this.signer,
  });

  /// Initializes an [AffinidiAuthorizationProvider] by resolving the appropriate key agreement
  /// and signer from the provided [DidManager] and [mediatorDidDocument].
  ///
  /// Throws an [Exception] if no suitable key is found for key agreement.
  static Future<AffinidiAuthorizationProvider> init({
    required DidDocument mediatorDidDocument,
    required DidManager didManager,
  }) async {
    final ownDidDocument = await didManager.getDidDocument();

    final bobMatchedDidKeyIds = ownDidDocument.matchKeysInKeyAgreement(
      otherDidDocuments: [
        mediatorDidDocument,
      ],
    );

    if (bobMatchedDidKeyIds.isEmpty) {
      throw Exception(
        'No suitable key found for key agreement with the mediator.',
      );
    }

    final didKeyId = bobMatchedDidKeyIds.first;

    return AffinidiAuthorizationProvider(
      mediatorDidDocument: mediatorDidDocument,
      keyPair: await didManager.getKeyPairByDidKeyId(
        didKeyId,
      ),
      didKeyId: didKeyId,
      signer: await didManager.getSigner(
        didManager.authentication.first,
      ),
    );
  }

  /// Generates new authorization tokens by performing a challenge-response authentication
  /// with the Affinidi mediator using DIDComm messages.
  ///
  /// Returns a [AuthorizationTokens] object containing the access and refresh tokens.
  ///
  /// Throws a [MediatorClientException] if the authentication process fails.
  @override
  Future<AuthorizationTokens> generateTokens() async {
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
        // this is specific to affinidi mediator
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
        encryptionAlgorithm: EncryptionAlgorithm.a256cbc,
        keyWrappingAlgorithm: KeyWrappingAlgorithm.ecdh1Pu,
        signer: signer,
      );

      final authenticateResponse = await dio.post<Map<String, dynamic>>(
        '',
        data: encryptedMessage,
      );

      return AuthorizationTokens.fromJson(
        authenticateResponse.data!['data'] as Map<String, dynamic>,
      );
    } on DioException catch (error) {
      throw MediatorClientException(innerException: error);
    }
  }
}
