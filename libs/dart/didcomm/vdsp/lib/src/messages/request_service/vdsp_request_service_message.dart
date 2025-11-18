import 'package:affinidi_tdk_didcomm_mediator_client/affinidi_tdk_didcomm_mediator_client.dart';
import 'package:json_annotation/json_annotation.dart';

import 'vdsp_request_service_message_body.dart';

part 'vdsp_request_service_message.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)

/// DIDComm message for requesting a service.
class VdspRequestServiceMessage extends PlainTextMessage {
  /// Message type URI for requesting a service.
  static final Uri messageType = Uri.parse(
      'https://affinidi.com/didcomm/protocols/vdsp/1.0/request-service');

  /// Creates a new [VdspRequestServiceMessage].
  VdspRequestServiceMessage({
    required super.id,
    required VdspRequestServiceMessageBody body,
    super.from,
    super.to,
    super.createdTime,
    super.expiresTime,
    super.threadId,
  }) : super(
          type: messageType,
          body: body.toJson(),
        );

  factory VdspRequestServiceMessage.fromJson(Map<String, dynamic> json) =>
      _$VdspRequestServiceMessageFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VdspRequestServiceMessageToJson(this);
}
