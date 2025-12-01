import 'package:json_annotation/json_annotation.dart';

/// Request for destroying an instance.
@JsonSerializable(
  includeIfNull: false,
  explicitToJson: true,
)
class DestroyInstanceRequest {
  /// The ID of the mediator instance to be destroyed.
  final String instanceId;

  /// Creates a [DestroyInstanceRequest] instance.
  DestroyInstanceRequest({
    required this.instanceId,
  });

  /// Creates a [DestroyInstanceRequest] from a JSON map.
  factory DestroyInstanceRequest.fromJson(Map<String, dynamic> json) {
    return DestroyInstanceRequest(
      instanceId: json['mediatorId'] as String,
    );
  }

  /// Converts the [DestroyInstanceRequest] instance to JSON.
  Map<String, dynamic> toJson() {
    return {
      'mediatorId': instanceId,
    };
  }
}
