import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vdip_switch_context_message.g.dart';

class VdipSwitchContextMessage extends PlainTextMessage {
  static final Uri messageType = Uri.parse(
    'https://affinidi.com/didcomm/protocols/vdip/1.0/switch-context',
  );

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
