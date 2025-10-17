import 'package:json_annotation/json_annotation.dart';

part 'mediator_configuration.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class MediatorConfiguration {
  final int? maxMessageSize;
  final int? messageRetentionDays;
  final bool? enableEncryption;
  final bool? enableLogging;
  final String? logLevel;
  final String? version;
  final DateTime? lastUpdated;

  MediatorConfiguration({
    this.maxMessageSize,
    this.messageRetentionDays,
    this.enableEncryption,
    this.enableLogging,
    this.logLevel,
    this.version,
    this.lastUpdated,
  });

  factory MediatorConfiguration.fromJson(Map<String, dynamic> json) =>
      _$MediatorConfigurationFromJson(json);

  Map<String, dynamic> toJson() => _$MediatorConfigurationToJson(this);
}
