import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vdsp_data_response_message.g.dart';

class VdspDataResponseMessage extends PlainTextMessage {
  static final Uri messageType = Uri.parse(
    'https://affinidi.com/didcomm/protocols/vdsp/1.0/data-response',
  );

  VdspDataResponseMessage({
    required super.id,
    super.from,
    super.to,
    super.createdTime,
    super.expiresTime,
    super.threadId,
    super.body = const {},
  }) : super(
          type: messageType,
        );

  VdspDataResponseBody get response {
    final payload = body;

    if (payload == null) {
      throw StateError('Message body is missing.');
    }

    return VdspDataResponseBody.fromJson(
      Map<String, dynamic>.from(payload),
    );
  }
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class VdspDataResponseBody {
  VdspDataResponseBody({
    required this.operation,
    required this.dataQueryLanguage,
    required this.responseFormat,
    required this.dataResponse,
    this.comment,
  });

  final String operation;

  @JsonKey(name: 'data_query_lang')
  final String dataQueryLanguage;

  @JsonKey(name: 'response_format')
  final String responseFormat;

  @JsonKey(name: 'data_response')
  final Map<String, dynamic> dataResponse;

  final String? comment;

  factory VdspDataResponseBody.fromJson(Map<String, dynamic> json) =>
      _$VdspDataResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$VdspDataResponseBodyToJson(this);
}
