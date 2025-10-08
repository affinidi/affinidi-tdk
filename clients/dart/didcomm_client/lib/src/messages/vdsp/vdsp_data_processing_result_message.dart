import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vdsp_data_processing_result_message.g.dart';

class VdspDataProcessingResultMessage extends PlainTextMessage {
  static final Uri messageType = Uri.parse(
    'https://affinidi.com/didcomm/protocols/vdsp/1.0/data-processing-result',
  );

  VdspDataProcessingResultMessage({
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
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class VdspDataProcessingResultBody {
  VdspDataProcessingResultBody({
    this.operation,
    this.result = const {},
  });

  final String? operation;

  final Map<String, dynamic> result;

  factory VdspDataProcessingResultBody.fromJson(Map<String, dynamic> json) =>
      _$VdspDataProcessingResultBodyFromJson(json);

  Map<String, dynamic> toJson() => _$VdspDataProcessingResultBodyToJson(this);
}
