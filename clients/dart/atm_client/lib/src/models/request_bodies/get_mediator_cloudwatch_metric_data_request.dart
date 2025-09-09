import 'package:json_annotation/json_annotation.dart';

part 'get_mediator_cloudwatch_metric_data_request.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class GetMediatorCloudwatchMetricDataRequest {
  final String mediatorId;
  final String metricId;
  @JsonKey(toJson: _dateToIsoUtcString, fromJson: _dateFromIsoString)
  final DateTime? startDate;
  @JsonKey(toJson: _dateToIsoUtcString, fromJson: _dateFromIsoString)
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

String? _dateToIsoUtcString(DateTime? dt) => dt?.toUtc().toIso8601String();
DateTime? _dateFromIsoString(String? value) =>
    value == null ? null : DateTime.parse(value).toUtc();
