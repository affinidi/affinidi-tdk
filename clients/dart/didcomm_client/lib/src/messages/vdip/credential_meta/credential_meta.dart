import 'package:json_annotation/json_annotation.dart';

part 'credential_meta.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class CredentialMeta {
  @JsonKey(name: '@context')
  List<String>? context;

  String? issuer;

  @JsonKey(name: 'valid_from')
  DateTime? validFrom;

  CredentialMeta({this.context, this.issuer, this.validFrom});

  factory CredentialMeta.fromJson(Map<String, dynamic> json) =>
      _$CredentialMetaFromJson(json);

  Map<String, dynamic> toJson() => _$CredentialMetaToJson(this);
}
