import 'package:json_annotation/json_annotation.dart';

/// Represents the deployment state of an instance.
enum DeploymentState {
  /// The instance is being updated.
  @JsonValue('UPDATE')
  update,

  /// The instance is operational.
  @JsonValue('OK')
  ok,

  /// The instance is in an error state.
  @JsonValue('ERROR')
  error
}
