import 'package:json_annotation/json_annotation.dart';

part 'mediator_acl.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class MediatorAcl {
  final List<String>? allowedDids;
  final List<String>? deniedDids;
  final bool? defaultAllow;
  final DateTime? lastUpdated;
  final String? policyVersion;

  MediatorAcl({
    this.allowedDids,
    this.deniedDids,
    this.defaultAllow,
    this.lastUpdated,
    this.policyVersion,
  });

  factory MediatorAcl.fromJson(Map<String, dynamic> json) =>
      _$MediatorAclFromJson(json);

  Map<String, dynamic> toJson() => _$MediatorAclToJson(this);
}
