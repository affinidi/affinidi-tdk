import 'package:json_annotation/json_annotation.dart';

part 'update_instance_configuration_options.g.dart';

/// Request for updating an instance configuration.
@JsonSerializable(
  includeIfNull: false,
  explicitToJson: true,
)
class UpdateInstanceConfigurationOptions {
  /// ACL configuration for the instance.
  final Map<String, num>? acl;

  /// Creates a [UpdateInstanceConfigurationOptions] instance.
  UpdateInstanceConfigurationOptions({
    this.acl,
  });

  /// Creates a [UpdateInstanceConfigurationOptions] from a JSON map.
  factory UpdateInstanceConfigurationOptions.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateInstanceConfigurationOptionsFromJson(json);

  /// Converts the [UpdateInstanceConfigurationOptions] instance to JSON.
  Map<String, dynamic> toJson() =>
      _$UpdateInstanceConfigurationOptionsToJson(this);
}
