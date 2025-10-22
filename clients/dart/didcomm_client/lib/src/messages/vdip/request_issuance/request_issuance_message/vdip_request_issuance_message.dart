import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:json_annotation/json_annotation.dart';

import '../request_issuance_body/vdip_request_issuance_body.dart';

part 'vdip_request_issuance_message.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
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

  factory VdipRequestIssuanceMessage.fromJson(Map<String, dynamic> json) =>
      _$VdipRequestIssuanceMessageFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VdipRequestIssuanceMessageToJson(this);
}
