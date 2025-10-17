import 'package:affinidi_tdk_mediator_client/mediator_client.dart';

/// Configuration options for the DIDComm client.
class ClientOptions {
  /// The maximum duration to wait for a request before timing out.
  final Duration requestTimeout;

  /// The duration after which a message expires.
  final Duration messageExpiration;

  /// Options for forwarding messages to the mediator.
  final ForwardMessageOptions forwardMessageOptions;

  /// Options for WebSocket connections.
  final WebSocketOptions webSocketOptions;

  /// Creates a [ClientOptions] instance.
  ///
  /// [requestTimeout] sets the maximum duration for requests.
  /// [messageExpiration] sets the expiration duration for messages.
  /// [forwardMessageOptions] configures message forwarding.
  /// [webSocketOptions] configures WebSocket connections.
  const ClientOptions({
    this.requestTimeout = const Duration(minutes: 3),
    this.messageExpiration = const Duration(minutes: 1),
    this.forwardMessageOptions = const ForwardMessageOptions(),
    this.webSocketOptions = const WebSocketOptions(),
  });
}

/// Affinidi-specific client options, extending [ClientOptions].
class AffinidiClientOptions extends ClientOptions {
  /// The DID of the mediator service.
  final String mediatorDid;

  /// The DID of the Atlas service.
  final String atlasDid;

  /// Creates an [AffinidiClientOptions] instance.
  ///
  /// [mediatorDid] sets the mediator DID.
  /// [atlasDid] sets the Atlas DID.
  /// Inherits all options from [ClientOptions].
  const AffinidiClientOptions({
    super.requestTimeout,
    super.messageExpiration,
    this.mediatorDid =
        'did:web:ed39392b-8b24-49b1-9884-efc9fb1fc3f8.atlas.affinidi.io',
    // TODO: clarify when we should use PROD instead of DEV
    this.atlasDid = 'did:web:did.dev.affinidi.io:ama',
    super.forwardMessageOptions = const ForwardMessageOptions(
      shouldSign: true,
      shouldEncrypt: true,
      keyWrappingAlgorithm: KeyWrappingAlgorithm.ecdh1Pu,
      encryptionAlgorithm: EncryptionAlgorithm.a256cbc,
    ),
    super.webSocketOptions = const WebSocketOptions(
      statusRequestMessageOptions: StatusRequestMessageOptions(
        shouldSend: true,
        shouldSign: true,
        shouldEncrypt: true,
      ),
      liveDeliveryChangeMessageOptions: LiveDeliveryChangeMessageOptions(
        shouldSend: true,
        shouldSign: true,
        shouldEncrypt: true,
      ),
    ),
  });
}
