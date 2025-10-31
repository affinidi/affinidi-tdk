import 'package:affinidi_tdk_mediator_didcomm_client/mediator_didcomm_client.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vdsp_data_processing_result_message.g.dart';

/// DIDComm message conveying the result of a data processing operation
/// executed within the VDSP (Verifiable Data Sharing Protocol).
class VdspDataProcessingResultMessage extends PlainTextMessage {
  /// Message type URI for a data processing result.
  static final Uri messageType = Uri.parse(
    'https://affinidi.com/didcomm/protocols/vdsp/1.0/data-processing-result',
  );

  /// Constructs the message with DIDComm envelope metadata.
  VdspDataProcessingResultMessage({
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

/// Body payload for a VDSP data processing result message.
///
/// Encapsulates the output of a processing operation and an optional
/// [operation] identifier correlating the response to its request.
class VdspDataProcessingResultBody {
  /// Constructs a processing result body.
  ///
  /// [result] contains arbitrary structured output produced by processing.
  /// [operation] MAY echo a client supplied correlation identifier.
  VdspDataProcessingResultBody({
    required this.result,
    this.operation,
  });

  /// Identifier of the original operation / correlation id.
  final String? operation;

  /// Structured result produced by the processing step.
  final Map<String, dynamic> result;

  /// Creates a body instance from JSON.
  factory VdspDataProcessingResultBody.fromJson(Map<String, dynamic> json) =>
      _$VdspDataProcessingResultBodyFromJson(json);

  /// Converts this body to JSON.
  Map<String, dynamic> toJson() => _$VdspDataProcessingResultBodyToJson(this);
}
