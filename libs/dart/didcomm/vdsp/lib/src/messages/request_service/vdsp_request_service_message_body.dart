import 'package:json_annotation/json_annotation.dart';

part 'vdsp_request_service_message_body.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)

/// Body payload for the request service message.
/// This message should provide enough context for the Verifier to understand which service is requested,
///  via [operation] and optional [comment].
class VdspRequestServiceMessageBody {
  /// Identifier of the original operation / correlation id.
  final String operation;

  /// An optional human-readable comment providing additional context.i
  final String? comment;

  /// Creates a new [VdspRequestServiceMessageBody].
  VdspRequestServiceMessageBody({
    required this.operation,
    this.comment,
  });

  factory VdspRequestServiceMessageBody.fromJson(Map<String, dynamic> json) =>
      _$VdspRequestServiceMessageBodyFromJson(json);

  Map<String, dynamic> toJson() => _$VdspRequestServiceMessageBodyToJson(this);
}
