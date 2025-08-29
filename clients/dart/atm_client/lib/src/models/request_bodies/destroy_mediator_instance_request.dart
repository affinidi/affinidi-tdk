import 'package:json_annotation/json_annotation.dart';

part 'destroy_mediator_instance_request.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class DestroyMediatorInstanceRequest {
  final String mediatorId;

  DestroyMediatorInstanceRequest({
    required this.mediatorId,
  });

  factory DestroyMediatorInstanceRequest.fromJson(Map<String, dynamic> json) =>
      _$DestroyMediatorInstanceRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DestroyMediatorInstanceRequestToJson(this);
}