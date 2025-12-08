import 'package:json_annotation/json_annotation.dart';

part 'get_instances_list_request_options.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)

/// Request for getting a list of instances.
class GetInstancesListRequestOptions {
  /// The maximum number of instances to return.
  final int? limit;
  //// The exclusive start key for pagination.
  final String? exclusiveStartKey;

  /// Creates a [GetInstancesListRequestOptions] instance.
  GetInstancesListRequestOptions({
    this.limit,
    this.exclusiveStartKey,
  });

  /// Creates a [GetInstancesListRequestOptions] from a JSON map.
  factory GetInstancesListRequestOptions.fromJson(Map<String, dynamic> json) =>
      _$GetInstancesListRequestOptionsFromJson(json);

  /// Converts the [GetInstancesListRequestOptions] instance to a JSON map.
  Map<String, dynamic> toJson() => _$GetInstancesListRequestOptionsToJson(this);
}
