import 'package:json_annotation/json_annotation.dart';

part 'base_get_instances_list_request.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true, constructor: '_')
/// Request for getting a list of instances.
class BaseGetInstancesListRequest {
  /// The maximum number of instances to return.
  final int? limit;
  //// The exclusive start key for pagination.
  final String? exclusiveStartKey;

  BaseGetInstancesListRequest._({
    this.limit,
    this.exclusiveStartKey,
  });

  /// Creates a [BaseGetInstancesListRequest] for a mediator instance.
  factory BaseGetInstancesListRequest.mediator({
    int? limit,
    String? exclusiveStartKey,
  }) {
    return BaseGetInstancesListRequest._(
      limit: limit,
      exclusiveStartKey: exclusiveStartKey,
    );
  }

  /// Creates a [BaseGetInstancesListRequest] for a meetingplace instance.
  factory BaseGetInstancesListRequest.meetingplace({
    int? limit,
    String? exclusiveStartKey,
  }) {
    return BaseGetInstancesListRequest._(
      limit: limit,
      exclusiveStartKey: exclusiveStartKey,
    );
  }

  /// Creates a [BaseGetInstancesListRequest] for a trustregistry instance.
  factory BaseGetInstancesListRequest.trustregistry({
    int? limit,
    String? exclusiveStartKey,
  }) {
    return BaseGetInstancesListRequest._(
      limit: limit,
      exclusiveStartKey: exclusiveStartKey,
    );
  }
 
  /// Creates a [BaseGetInstancesListRequest] from a JSON map.
  factory BaseGetInstancesListRequest.fromJson(Map<String, dynamic> json) =>
      _$BaseGetInstancesListRequestFromJson(json);
 
  /// Converts the [BaseGetInstancesListRequest] instance to a JSON map.
  Map<String, dynamic> toJson() =>
      _$BaseGetInstancesListRequestToJson(this);
}
