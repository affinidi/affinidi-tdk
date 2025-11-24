import 'package:affinidi_tdk_didcomm_mediator_client/affinidi_tdk_didcomm_mediator_client.dart';
import 'package:json_annotation/json_annotation.dart';
part 'vdsp_request_service_message.g.dart';

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
}

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
