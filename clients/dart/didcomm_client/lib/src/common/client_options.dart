import 'package:affinidi_tdk_mediator_client/mediator_client.dart';

class ClientOptions {
  final Duration requestTimeout;
  final Duration messageExpiration;

  /// Options for forwarding messages to the mediator.
  final ForwardMessageOptions forwardMessageOptions;

  /// Options for WebSocket connections.
  final WebSocketOptions webSocketOptions;
  const ClientOptions({
    this.requestTimeout = const Duration(minutes: 3),
    this.messageExpiration = const Duration(minutes: 1),
    this.forwardMessageOptions = const ForwardMessageOptions(),
    this.webSocketOptions = const WebSocketOptions(),
  });
}

class AffinidiClientOptions extends ClientOptions {
  final String mediatorDid;
  final String atlasDid;

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
