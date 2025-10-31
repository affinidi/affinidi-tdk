import 'package:json_annotation/json_annotation.dart';

part 'credential_meta.g.dart';

/// Metadata used to help construct a credential during VDIP issuance
/// (contexts, issuer DID, validity timestamp, and arbitrary data map).
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class CredentialMeta {
  /// JSON-LD contexts applied to the credential (e.g. https://www.w3.org/2018/credentials/v1).
  @JsonKey(name: '@context')
  List<String>? context;

  /// DID of the issuer (e.g. did:peer:example#key-1).
  String? issuer;

  /// Timestamp (UTC) from which the credential becomes valid.
  @JsonKey(name: 'valid_from')
  DateTime? validFrom;

  /// Arbitrary credential subject or metadata key-value pairs.
  Map<String, dynamic>? data;

  /// Creates a [CredentialMeta] instance.
  CredentialMeta({this.context, this.issuer, this.validFrom, this.data});

  /// Deserializes a [CredentialMeta] from JSON.
  factory CredentialMeta.fromJson(Map<String, dynamic> json) =>
      _$CredentialMetaFromJson(json);

  /// Serializes this instance to JSON.
  Map<String, dynamic> toJson() => _$CredentialMetaToJson(this);
}
