import '../../affinidi_tdk_didcomm_mediator_client.dart';

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

  final String mediatorDid;

  final String atlasDid;

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
    this.mediatorDid =
        'did:web:66a6ec69-0646-4a8d-ae08-94e959855fa9.atlas.affinidi.io',
    this.atlasDid = 'did:web:did.dev.affinidi.io:ama',
  });
}

/// Affinidi-specific client options, extending [ClientOptions].
class AffinidiClientOptions extends ClientOptions {
  /// Creates an [AffinidiClientOptions] instance.
  ///
  /// Inherits all options from [ClientOptions].
  const AffinidiClientOptions({
    super.requestTimeout,
    super.messageExpiration,
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
