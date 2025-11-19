import 'package:json_annotation/json_annotation.dart';

part 'get_mediator_instance_metadata_request.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class GetMediatorInstanceMetadataRequest {
  final String mediatorId;

  GetMediatorInstanceMetadataRequest({
    required this.mediatorId,
  });

  factory GetMediatorInstanceMetadataRequest.fromJson(
          Map<String, dynamic> json) =>
      _$GetMediatorInstanceMetadataRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetMediatorInstanceMetadataRequestToJson(this);
}
