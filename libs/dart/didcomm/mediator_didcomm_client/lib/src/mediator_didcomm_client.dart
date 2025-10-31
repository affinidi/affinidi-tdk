import 'dart:async';

import 'package:didcomm/didcomm.dart' show MediatorClient;
import 'package:dio/dio.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../mediator_didcomm_client.dart';

/// A DIDComm v2 client for interacting with a mediator service using DID-based secure messaging.
///
/// Extends [MediatorClient] to provide:
/// - DID and key management for secure communication
/// - Packing and sending encrypted messages to a mediator or recipient
/// - Request/response linking with timeouts and error handling
/// - Flexible configuration via [ClientOptions]
///
/// Example usage:
/// ```dart
/// final client = await MediatorDidcommClient.init(
///   didManager: myDidManager,
///   mediatorDidDocument: mediatorDoc,
/// );
/// await client.packAndSendMessage(message: myMessage);
/// final response = await client.waitForMessage(threadId: myThreadId);
/// ```
class MediatorDidcommClient extends MediatorClient {
  /// The DID manager for managing DIDs and keys.
  final DidManager didManager;

  /// The client options for configuring timeouts and message forwarding.
  final ClientOptions clientOptions;

  /// Creates a [MediatorDidcommClient] instance.
  MediatorDidcommClient({
    required super.mediatorDidDocument,
    required super.keyPair,
    required super.didKeyId,
    required super.signer,
    required this.didManager,
    this.clientOptions = const ClientOptions(),
    super.authorizationProvider,
    super.forwardMessageOptions,
    super.webSocketOptions,
  });

  /// Initializes a [MediatorDidcommClient] asynchronously.
  ///
  /// [didManager] is required for DID operations.
  /// [mediatorDidDocument] is the mediator's DID document.
  /// [authorizationProvider] is optional.
  /// [clientOptions] configures timeouts and forwarding.
  static Future<MediatorDidcommClient> init({
    required DidManager didManager,
    required DidDocument mediatorDidDocument,
    AuthorizationProvider? authorizationProvider,
    ClientOptions clientOptions = const ClientOptions(),
  }) async {
    final tmpParent = await MediatorClient.init(
      mediatorDidDocument: mediatorDidDocument,
      didManager: didManager,
    );

    return MediatorDidcommClient(
      didManager: didManager,
      clientOptions: clientOptions,
      mediatorDidDocument: mediatorDidDocument,
      keyPair: tmpParent.keyPair,
      didKeyId: tmpParent.didKeyId,
      signer: tmpParent.signer,
      authorizationProvider: authorizationProvider,
      forwardMessageOptions: clientOptions.forwardMessageOptions,
      webSocketOptions: clientOptions.webSocketOptions,
    );
  }

  /// Packs and sends a [PlainTextMessage] to the mediator and recipient.
  /// Throws if the message is invalid or recipient cannot be resolved.
  Future<void> packAndSendMessage(
    PlainTextMessage message,
  ) async {
    if (message.to == null) {
      throw ArgumentError.notNull('message.to');
    }

    if (message.to!.length > 1) {
      throw UnsupportedError(
        'Only one recipient is supported at this moment. Please update message.to header accordingly.',
      );
    }

    if (message.from != null) {
      throw ArgumentError(
        'message.from must be null. It will be filled automatically.',
        'message.from',
      );
    }

    final senderDidDocument = await didManager.getDidDocument();

    final recipientDidDocument =
        await UniversalDIDResolver.defaultResolver.resolveDid(
      message.to!.first,
    );

    final matchedKeyPairs = senderDidDocument.matchKeysInKeyAgreement(
      otherDidDocuments: [
        recipientDidDocument,
      ],
    );

    if (matchedKeyPairs.isEmpty) {
      throw Exception(
        'No matching key agreement keys found for the mediator and the recipient.',
      );
    }

    final senderDidKeyId = matchedKeyPairs.first;

    // TODO: add configuration for envelope type
    final packed = await DidcommMessage.packIntoEncryptedMessage(
      PlainTextMessage.fromJson({
        ...message.toJson(),
        'from': senderDidDocument.id,
      }),
      recipientDidDocuments: [recipientDidDocument],
      // TODO: move to configuration
      keyWrappingAlgorithm: KeyWrappingAlgorithm.ecdh1Pu,
      encryptionAlgorithm: EncryptionAlgorithm.a256cbc,
      keyPair: await didManager.getKeyPairByDidKeyId(senderDidKeyId),
      didKeyId: senderDidKeyId,
    );

    final forwardMessageOptions = clientOptions.forwardMessageOptions;

    final forwardFrom = forwardMessageOptions.shouldEncrypt &&
            forwardMessageOptions.keyWrappingAlgorithm ==
                KeyWrappingAlgorithm.ecdh1Pu
        ? senderDidDocument.id
        : null;

    final forwardMessage = ForwardMessage(
      id: const Uuid().v4(),
      to: [mediatorDidDocument.id],
      from: forwardFrom,
      next: recipientDidDocument.id,
      expiresTime: DateTime.now().toUtc().add(
            clientOptions.messageExpiration,
          ),
      attachments: [
        Attachment(
          mediaType: 'application/json',
          data: AttachmentData(
            base64: base64UrlEncodeNoPadding(
              packed.toJsonBytes(),
            ),
          ),
        ),
      ],
    );

    await sendMessage(
      forwardMessage,
    );
  }

  /// Sends a [AclManagementMessage] to the mediator.
  ///
  /// [message] - The message to send.
  /// [accessToken] - Optional bearer token for authentication.
  ///
  /// Returns the packed [DidcommMessage] that was sent.
  Future<DidcommMessage> sendAclManagementMessage(
    AclManagementMessage message, {
    String? accessToken,
  }) async {
    final dio = mediatorDidDocument.toDio(
      mediatorServiceType: DidDocumentServiceType.didCommMessaging,
    );

    final messageToSend = await packMessage(
      message,
      messageOptions: forwardMessageOptions,
    );

    try {
      await dio.post<Map<String, dynamic>>(
        '/inbound',
        data: messageToSend,
        options: Options(headers: await getAuthorizationHeaders()),
      );

      return messageToSend;
    } on DioException catch (error) {
      throw MediatorClientException(innerException: error);
    }
  }
}
