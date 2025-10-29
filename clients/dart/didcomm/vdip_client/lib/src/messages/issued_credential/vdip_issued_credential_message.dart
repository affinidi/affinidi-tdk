import 'package:affinidi_tdk_mediator_client/mediator_client.dart';

class VdipIssuedCredentialMessage extends PlainTextMessage {
  static final Uri messageType = Uri.parse(
    'https://affinidi.com/didcomm/protocols/vdip/1.0/issued-credential',
  );

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
