import 'package:affinidi_tdk_mediator_client/mediator_client.dart';

import '../request_issuance_body/vdip_request_issuance_body.dart';

class VdipRequestIssuanceMessage extends PlainTextMessage {
  static final Uri messageType = Uri.parse(
    'https://affinidi.com/didcomm/protocols/vdip/1.0/request-issuance',
  );

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
