import 'package:affinidi_tdk_mediator_didcomm_client/affinidi_tdk_mediator_didcomm_client.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vdsp_data_response_message.g.dart';

/// DIDComm message returning requested data for a prior query.
class VdspDataResponseMessage extends PlainTextMessage {
  /// Message type URI for a data response.
  static final Uri messageType = Uri.parse(
    'https://affinidi.com/didcomm/protocols/vdsp/1.0/data-response',
  );

  /// Creates a VDSP data response message.
  VdspDataResponseMessage({
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

  /// Strongly typed view of the response body.
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

/// Body payload for a VDSP data response message encapsulating returned data.
///
/// Provides the response data along with metadata describing its format and
/// linkage back to the originating query via [operation].
class VdspDataResponseBody {
  /// Constructs a data response body.
  ///
  /// [dataQueryLanguage] is the language used in the originating query
  /// (defaults to DCQL). [responseFormat] states how [dataResponse] is
  /// structured (e.g. json, csv). [operation] MAY correlate to the request.
  /// [comment] provides an optional human-readable note.
  VdspDataResponseBody({
    this.dataQueryLanguage = DataQueryLanguage.dcql,
    required this.responseFormat,
    required this.dataResponse,
    this.operation,
    this.comment,
  });

  /// Identifier of the original operation / correlation id.
  final String? operation;

  /// Language used for the originating query.
  @JsonKey(name: 'data_query_lang')
  final DataQueryLanguage dataQueryLanguage;

  /// Format of the response payload (e.g. json, csv).
  @JsonKey(name: 'response_format')
  final String responseFormat;

  /// The actual response data.
  @JsonKey(name: 'data_response')
  final Map<String, dynamic> dataResponse;

  /// Optional human-readable remark.
  final String? comment;

  /// Creates a body instance from JSON.
  factory VdspDataResponseBody.fromJson(Map<String, dynamic> json) =>
      _$VdspDataResponseBodyFromJson(json);

  /// Converts this body to JSON.
  Map<String, dynamic> toJson() => _$VdspDataResponseBodyToJson(this);
}
