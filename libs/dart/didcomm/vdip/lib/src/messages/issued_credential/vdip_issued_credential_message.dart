import 'package:affinidi_tdk_mediator_didcomm_client/mediator_didcomm_client.dart';

/// DIDComm message representing an issued credential payload returned
/// from an issuer to a holder in the VDIP protocol.
class VdipIssuedCredentialMessage extends PlainTextMessage {
  /// Message type URI for a VDIP issued credential.
  static final Uri messageType = Uri.parse(
    'https://affinidi.com/didcomm/protocols/vdip/1.0/issued-credential',
  );

  /// Creates a new issued credential message with the provided fields.
  VdipIssuedCredentialMessage({
    required super.id,
    super.from,
    super.to,
    super.createdTime,
    super.expiresTime,
    super.threadId,
    super.body,
  }) : super(
          type: messageType,
        );
}
