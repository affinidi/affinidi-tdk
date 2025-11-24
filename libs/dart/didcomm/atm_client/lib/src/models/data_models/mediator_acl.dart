import 'package:json_annotation/json_annotation.dart';

part 'mediator_acl.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
/// Access Control List (ACL) configuration for a mediator instance. 
class MediatorAcl {
  /// List of allowed DIDs.
  final List<String>? allowedDids;
  /// List of denied DIDs.
  final List<String>? deniedDids;
  /// Default allow setting.
  final bool? defaultAllow;
  /// Last updated timestamp.
  final DateTime? lastUpdated;
  /// Version identifier of the policy.
  final String? policyVersion;

  /// Creates a [MediatorAcl] instance.
  MediatorAcl({
    this.allowedDids,
    this.deniedDids,
    this.defaultAllow,
    this.lastUpdated,
    this.policyVersion,
  });

  /// Creates a [MediatorAcl] instance from JSON.
  factory MediatorAcl.fromJson(Map<String, dynamic> json) =>
      _$MediatorAclFromJson(json);
  /// Converts the [MediatorAcl] instance to JSON.
  Map<String, dynamic> toJson() => _$MediatorAclToJson(this);
}
