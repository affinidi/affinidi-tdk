import 'package:json_annotation/json_annotation.dart';

part 'get_mediator_cloudwatch_metric_data_request.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class GetMediatorCloudwatchMetricDataRequest {
  final String mediatorId;
  final String metricId;
  final DateTime? startDate;
  final DateTime? endDate;
  final int? period;

  GetMediatorCloudwatchMetricDataRequest({
    required this.mediatorId,
    required this.metricId,
    this.startDate,
    this.endDate,
    this.period,
  });

  factory GetMediatorCloudwatchMetricDataRequest.fromJson(
          Map<String, dynamic> json) =>
      _$GetMediatorCloudwatchMetricDataRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetMediatorCloudwatchMetricDataRequestToJson(this);
}
