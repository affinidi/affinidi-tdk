import 'package:affinidi_tdk_didcomm_mediator_client/affinidi_tdk_didcomm_mediator_client.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vdip_switch_context_message.g.dart';

/// DIDComm message for switching context.
class VdipSwitchContextMessage extends PlainTextMessage {
  /// Message type URI for switching context.
  static final Uri messageType = Uri.parse(
    'https://affinidi.com/didcomm/protocols/vdip/1.0/switch-context',
  );

  /// Creates a new [VdipSwitchContextMessage].
  VdipSwitchContextMessage({
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

  /// Strongly typed view of the switch context body.
  VdipSwitchContextBody get switchContext {
    final payload = body;

    if (payload == null) {
      throw StateError('Message body is missing.');
    }

    return VdipSwitchContextBody.fromJson(
      Map<String, dynamic>.from(payload),
    );
  }
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)

/// Body payload for the switch context message.
///
///
class VdipSwitchContextBody {
  VdipSwitchContextBody({
    required this.baseIssuerUrl,
    required this.nonce,
  });

  @JsonKey(name: 'base_issuer_url')
  final String baseIssuerUrl;

  final String nonce;

  factory VdipSwitchContextBody.fromJson(Map<String, dynamic> json) =>
      _$VdipSwitchContextBodyFromJson(json);

  Map<String, dynamic> toJson() => _$VdipSwitchContextBodyToJson(this);
}
