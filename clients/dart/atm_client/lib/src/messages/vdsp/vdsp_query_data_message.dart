import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vdsp_query_data_message.g.dart';

class VdspQueryDataMessage extends PlainTextMessage {
  static final Uri messageType = Uri.parse(
    'https://affinidi.com/didcomm/protocols/vdsp/1.0/query-data',
  );

  VdspQueryDataMessage({
    required super.id,
    super.from,
    super.to,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
    super.threadId,
  }) : super(
          type: messageType,
        );
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class VdspQueryDataBody {
  VdspQueryDataBody({
    required this.operation,
    required this.dataQueryLanguage,
    required this.responseFormat,
    required this.query,
    this.comment,
    this.proofContext,
  });

  final String operation;

  @JsonKey(name: 'data_query_lang')
  final String dataQueryLanguage;

  @JsonKey(name: 'response_format')
  final String responseFormat;

  final String? comment;

  final Map<String, dynamic> query;

  @JsonKey(name: 'proof_context')
  final VdspQueryDataProofContext? proofContext;

  factory VdspQueryDataBody.fromJson(Map<String, dynamic> json) =>
      _$VdspQueryDataBodyFromJson(json);

  Map<String, dynamic> toJson() => _$VdspQueryDataBodyToJson(this);
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class VdspQueryDataProofContext {
  VdspQueryDataProofContext({
    required this.challenge,
    required this.domain,
  });

  final String challenge;

  final String domain;

  factory VdspQueryDataProofContext.fromJson(Map<String, dynamic> json) =>
      _$VdspQueryDataProofContextFromJson(json);

  Map<String, dynamic> toJson() => _$VdspQueryDataProofContextToJson(this);
}
