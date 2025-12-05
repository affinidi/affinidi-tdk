import 'package:json_annotation/json_annotation.dart';

/// Represents the size of the service instance.
enum ServiceSize {
  /// Development instance size.
  @JsonValue('dev')
  dev,

  /// Tiny instance size.
  @JsonValue('tiny')
  tiny,

  /// Small instance size.
  @JsonValue('small')
  small,

  /// Medium instance size.
  @JsonValue('medium')
  medium,

  /// Large instance size.
  @JsonValue('large')
  large,
}
