import 'package:json_annotation/json_annotation.dart';

part 'get_mediator_requests_request.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class GetMediatorRequestsRequest {
  final String? mediatorId;
  final int? limit;
  final String? exclusiveStartKey;

  GetMediatorRequestsRequest({
    this.mediatorId,
    this.limit,
    this.exclusiveStartKey,
  });

  factory GetMediatorRequestsRequest.fromJson(Map<String, dynamic> json) =>
      _$GetMediatorRequestsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GetMediatorRequestsRequestToJson(this);
}
