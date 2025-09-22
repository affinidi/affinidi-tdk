import 'package:affinidi_tdk_mediator_client/mediator_client.dart';

class VdspQueryDataMessage extends PlainTextMessage {
  static final messageType = Uri.parse(
    'https://affinidi.com/didcomm/protocols/vdsp/1.0/query-data',
  );

  VdspQueryDataMessage({
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

  factory VdspQueryDataMessage.fromJson(Map<String, dynamic> json) {
    return VdspQueryDataMessage(
      id: json['id'] as String,
      from: json['from'] as String,
    );
  }
}
