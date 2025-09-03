import 'dart:convert';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:json_annotation/json_annotation.dart';

import '../response_body.dart';

part 'get_mediator_cloudwatch_metric_data_message.g.dart';

/// Message for getting CloudWatch metric data for a mediator.
class GetMediatorCloudwatchMetricDataMessage extends PlainTextMessage {
  /// Creates a get mediator CloudWatch metric data message.
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

/// Response message for get mediator CloudWatch metric data operation.
class GetMediatorCloudwatchMetricDataResponseMessage extends PlainTextMessage {
  /// Creates a get mediator CloudWatch metric data response message.
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

  /// Gets the parsed metric data from the message body.
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

/// CloudWatch metric data for a mediator instance.
class CloudwatchMetricData {
  /// The metric identifier.
  final String metricId;

  /// The mediator instance identifier.
  final String mediatorId;

  /// The metric data points.
  final List<MetricDataPoint> dataPoints;

  /// Creates CloudWatch metric data.
  CloudwatchMetricData({
    required this.metricId,
    required this.mediatorId,
    required this.dataPoints,
  });

  /// Creates CloudwatchMetricData from a JSON map.
  factory CloudwatchMetricData.fromJson(Map<String, dynamic> json) =>
      _$CloudwatchMetricDataFromJson(json);

  /// Converts this CloudwatchMetricData to a JSON map.
  Map<String, dynamic> toJson() => _$CloudwatchMetricDataToJson(this);
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)

/// A single metric data point.
class MetricDataPoint {
  /// The timestamp of the data point.
  final DateTime timestamp;

  /// The metric value.
  final double value;

  /// The unit of measurement.
  final String? unit;

  /// Creates a metric data point.
  MetricDataPoint({
    required this.timestamp,
    required this.value,
    this.unit,
  });

  /// Creates MetricDataPoint from a JSON map.
  factory MetricDataPoint.fromJson(Map<String, dynamic> json) =>
      _$MetricDataPointFromJson(json);

  /// Converts this MetricDataPoint to a JSON map.
  Map<String, dynamic> toJson() => _$MetricDataPointToJson(this);
}
