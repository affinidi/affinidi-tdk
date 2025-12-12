import 'package:json_annotation/json_annotation.dart';

/// Access control modes for mediator instances.
enum MediatorAclMode {
  /// Explicitly denies access.
  @JsonValue('explicit_deny')
  explicitDeny,

  /// Explicitly allows access.
  @JsonValue('explicit_allow')
  explicitAllow
}
