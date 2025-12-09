import 'package:json_annotation/json_annotation.dart';

part 'mediator_configuration.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)

/// Configuration settings for a mediator instance.
class MediatorConfiguration {
  /// Maximum size of messages in bytes.
  final int? maxMessageSize;

  /// Number of days to retain messages.
  final int? messageRetentionDays;

  /// Whether encryption is enabled.
  final bool? enableEncryption;

  /// Whether logging is enabled.
  final bool? enableLogging;

  /// Log level setting.
  final String? logLevel;

  /// Version of the configuration.
  final String? version;

  /// Last updated timestamp.
  final DateTime? lastUpdated;

  /// Creates a [MediatorConfiguration] instance.
  MediatorConfiguration({
    this.maxMessageSize,
    this.messageRetentionDays,
    this.enableEncryption,
    this.enableLogging,
    this.logLevel,
    this.version,
    this.lastUpdated,
  });

  /// Creates a [MediatorConfiguration] instance from JSON.
  factory MediatorConfiguration.fromJson(Map<String, dynamic> json) =>
      _$MediatorConfigurationFromJson(json);

  /// Converts the [MediatorConfiguration] instance to JSON.
  Map<String, dynamic> toJson() => _$MediatorConfigurationToJson(this);
}
