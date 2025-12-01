import 'package:json_annotation/json_annotation.dart';

part 'get_instances_list_request.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)

/// Request for getting a list of instances.
class GetInstancesListRequest {
  /// The maximum number of instances to return.
  final int? limit;
  //// The exclusive start key for pagination.
  final String? exclusiveStartKey;

  /// Creates a [GetInstancesListRequest] instance.
  GetInstancesListRequest({
    this.limit,
    this.exclusiveStartKey,
  });

  /// Creates a [GetInstancesListRequest] from a JSON map.
  factory GetInstancesListRequest.fromJson(Map<String, dynamic> json) =>
      _$BaseGetInstancesListRequestFromJson(json);

  /// Converts the [GetInstancesListRequest] instance to a JSON map.
  Map<String, dynamic> toJson() => _$BaseGetInstancesListRequestToJson(this);
}
