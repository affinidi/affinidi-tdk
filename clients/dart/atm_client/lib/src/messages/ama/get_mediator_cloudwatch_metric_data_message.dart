import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:mediator_client/mediator_client.dart';
import '../response_body.dart';

part 'get_mediator_cloudwatch_metric_data_message.g.dart';

class GetMediatorCloudwatchMetricDataMessage extends PlainTextMessage {
  GetMediatorCloudwatchMetricDataMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
  }) : super(
          type: Uri.parse(
            'affinidi.io/operations/ama/getMediatorCloudwatchMetricData',
          ),
        );
}

class GetMediatorCloudwatchMetricDataResponseMessage extends PlainTextMessage {
  GetMediatorCloudwatchMetricDataResponseMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
  }) : super(
          type: Uri.parse(
            'affinidi.io/operations/ama/getMediatorCloudwatchMetricData/response',
          ),
        );

  CloudwatchMetricData get metricData {
    if (body == null) {
      throw ArgumentError('Response body cannot be null');
    }

    final responseBody = ResponseBody.fromJson(body!);
    return CloudwatchMetricData.fromJson(
      jsonDecode(responseBody.response) as Map<String, dynamic>,
    );
  }
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class CloudwatchMetricData {
  final String metricId;
  final String mediatorId;
  final List<MetricDataPoint> dataPoints;

  CloudwatchMetricData({
    required this.metricId,
    required this.mediatorId,
    required this.dataPoints,
  });

  factory CloudwatchMetricData.fromJson(Map<String, dynamic> json) =>
      _$CloudwatchMetricDataFromJson(json);
  Map<String, dynamic> toJson() => _$CloudwatchMetricDataToJson(this);
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class MetricDataPoint {
  final DateTime timestamp;
  final double value;
  final String? unit;

  MetricDataPoint({
    required this.timestamp,
    required this.value,
    this.unit,
  });

  factory MetricDataPoint.fromJson(Map<String, dynamic> json) =>
      _$MetricDataPointFromJson(json);
  Map<String, dynamic> toJson() => _$MetricDataPointToJson(this);
}
