import 'package:json_annotation/json_annotation.dart';

part 'get_mediator_instances_list_request.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class GetMediatorInstancesListRequest {
  final int? limit;
  final String? exclusiveStartKey;

  GetMediatorInstancesListRequest({
    this.limit,
    this.exclusiveStartKey,
  });

  factory GetMediatorInstancesListRequest.fromJson(
          Map<String, dynamic> json) =>
      _$GetMediatorInstancesListRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetMediatorInstancesListRequestToJson(this);
}