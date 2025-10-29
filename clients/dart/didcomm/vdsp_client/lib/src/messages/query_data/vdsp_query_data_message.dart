import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vdsp_query_data_message.g.dart';

/// DIDComm message initiating a data query within the VDSP.
class VdspQueryDataMessage extends PlainTextMessage {
  /// Message type URI for a query-data message.
  static final Uri messageType = Uri.parse(
    'https://affinidi.com/didcomm/protocols/vdsp/1.0/query-data',
  );

  /// Creates a VDSP query data message.
  VdspQueryDataMessage({
    required super.id,
    required super.body,
    super.from,
    super.to,
    super.createdTime,
    super.expiresTime,
    super.threadId,
  }) : super(
          type: messageType,
        );
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class VdspQueryDataBody {
  /// Constructs a query data body.
  ///
  /// [dataQueryLanguage] declares the language used for the [query].
  /// [responseFormat] specifies desired format of the eventual response.
  /// [operation] MAY be used as a correlation id. [proofContext] supplies
  /// challenge/domain values for proof generation when required.
  VdspQueryDataBody({
    required this.dataQueryLanguage,
    required this.responseFormat,
    required this.query,
    this.operation,
    this.comment,
    this.proofContext,
  });

  /// Identifier of the operation / correlation id.
  final String? operation;

  /// Language used to express the query (currently only DCQL is supported).
  @JsonKey(name: 'data_query_lang')
  final DataQueryLanguage dataQueryLanguage;

  /// Desired response format (e.g. json, vc, csv).
  @JsonKey(name: 'response_format')
  final String responseFormat;

  /// Optional human-readable description of the query.
  final String? comment;

  /// Structured query expression.
  final Map<String, dynamic> query;

  /// Context controlling proof generation parameters.
  @JsonKey(name: 'proof_context')
  final VdspQueryDataProofContext? proofContext;

  /// Creates a body instance from JSON.
  factory VdspQueryDataBody.fromJson(Map<String, dynamic> json) =>
      _$VdspQueryDataBodyFromJson(json);

  /// Converts this body to JSON.
  Map<String, dynamic> toJson() => _$VdspQueryDataBodyToJson(this);
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class VdspQueryDataProofContext {
  /// Constructs a proof context used during cryptographic proof generation.
  VdspQueryDataProofContext({
    required this.challenge,
    required this.domain,
  });

  /// Challenge string for replay protection.
  final String challenge;

  /// Domain scoping value for the proof.
  final String domain;

  /// Creates a proof context from JSON.
  factory VdspQueryDataProofContext.fromJson(Map<String, dynamic> json) =>
      _$VdspQueryDataProofContextFromJson(json);

  /// Converts this context to JSON.
  Map<String, dynamic> toJson() => _$VdspQueryDataProofContextToJson(this);
}
