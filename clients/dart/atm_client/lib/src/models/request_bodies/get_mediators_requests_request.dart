import 'package:json_annotation/json_annotation.dart';

part 'get_mediators_requests_request.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class GetMediatorsRequestsRequest {
  final String? mediatorId;
  final int? limit;
  final String? exclusiveStartKey;

  GetMediatorsRequestsRequest({
    this.mediatorId,
    this.limit,
    this.exclusiveStartKey,
  });

  factory GetMediatorsRequestsRequest.fromJson(Map<String, dynamic> json) =>
      _$GetMediatorsRequestsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GetMediatorsRequestsRequestToJson(this);
}