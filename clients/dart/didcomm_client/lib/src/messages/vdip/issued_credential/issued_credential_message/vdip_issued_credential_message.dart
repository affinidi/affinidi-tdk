import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:json_annotation/json_annotation.dart';

import '../issued_credential_body/vdip_issued_credential_body.dart';

part 'vdip_issued_credential_message.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class VdipIssuedCredentialMessage extends PlainTextMessage {
  static final Uri messageType = Uri.parse(
    'https://affinidi.com/didcomm/protocols/vdip/1.0/issued-credential',
  );

  VdipIssuedCredentialMessage({
    required super.id,
    required VdipIssuedCredentialBody body,
    super.from,
    super.to,
    super.createdTime,
    super.expiresTime,
    super.threadId,
  }) : super(
          type: messageType,
          body: body.toJson(),
        );

  factory VdipIssuedCredentialMessage.fromJson(Map<String, dynamic> json) =>
      _$VdipIssuedCredentialMessageFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VdipIssuedCredentialMessageToJson(this);
}
