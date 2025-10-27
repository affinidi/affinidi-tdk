import 'package:json_annotation/json_annotation.dart';

part 'credential_meta.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class CredentialMeta {
  /// The context of the credential. E.g. [https://www.w3.org/2018/credentials/v1]
  @JsonKey(name: '@context')
  List<String>? context;

  /// The did of the issuer. E.g. did:peer:issuer.usecase.com#key-4
  String? issuer;

  /// Date the credential is valid from
  @JsonKey(name: 'valid_from')
  DateTime? validFrom;

  Map<String, dynamic>? data;

  /// Constructor
  CredentialMeta({this.context, this.issuer, this.validFrom, this.data});

  /// Creates [CredentialMeta] from JSON.
  factory CredentialMeta.fromJson(Map<String, dynamic> json) =>
      _$CredentialMetaFromJson(json);

  /// Converts [CredentialMeta] to JSON.
  Map<String, dynamic> toJson() => _$CredentialMetaToJson(this);
}
