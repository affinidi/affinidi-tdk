import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:didcomm/src/annotations/own_json_properties.dart';
import 'package:json_annotation/json_annotation.dart';

// part 'vdsp_data_response_message.g.dart';
// part 'vdsp_data_response_message.own_json_props.g.dart';

// @OwnJsonProperties()
// @JsonSerializable(includeIfNull: false, explicitToJson: true)
class VdspDataResponseMessage extends PlainTextMessage {
  static final messageType = Uri.parse(
    'https://affinidi.com/didcomm/protocols/vdsp/1.0/data-response',
  );

  VdspDataResponseMessage({
    required super.id,
    super.from,
    super.to,
    super.createdTime,
    super.expiresTime,
    super.parentThreadId,
    super.threadId,
    super.pleaseAcknowledge,
    super.acknowledged,
    super.attachments,
  }) : super(
          type: messageType,
          body: {},
        );

  factory VdspDataResponseMessage.fromJson(Map<String, dynamic> json) {
    return VdspDataResponseMessage(
      id: json['id'] as String,
      from: json['from'] as String,
    );
  }

  // factory VdspDataResponseMessage.fromJson(Map<String, dynamic> json) {
  //   final message = _$VdspDataResponseMessageFromJson(json)
  //     ..assignCustomHeaders(
  //       json,
  //       _$ownJsonProperties,
  //     );

  //   return message;
  // }

  // @override
  // Map<String, dynamic> toJson() => withCustomHeaders(
  //       {
  //         ...super.toJson(),
  //         ..._$VdspDataResponseMessageToJson(this),
  //       },
  //     );
}
