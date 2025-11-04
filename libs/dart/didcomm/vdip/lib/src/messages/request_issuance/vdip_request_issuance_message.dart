import 'package:affinidi_tdk_mediator_didcomm_client/affinidi_tdk_mediator_didcomm_client.dart';

import 'vdip_request_issuance_body.dart';

/// DIDComm message initiating a credential issuance request in VDIP.
class VdipRequestIssuanceMessage extends PlainTextMessage {
  /// Message type URI for a VDIP request issuance message.
  static final Uri messageType = Uri.parse(
    'https://affinidi.com/didcomm/protocols/vdip/1.0/request-issuance',
  );

  /// Creates a new request issuance message.
  VdipRequestIssuanceMessage({
    required super.id,
    required VdipRequestIssuanceMessageBody body,
    super.from,
    super.to,
    super.createdTime,
    super.expiresTime,
    super.threadId,
  }) : super(
          type: messageType,
          body: body.toJson(),
        );
}
