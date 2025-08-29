// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_mediator_cloudwatch_metric_data_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CloudwatchMetricData _$CloudwatchMetricDataFromJson(
        Map<String, dynamic> json) =>
    CloudwatchMetricData(
      metricId: json['metricId'] as String,
      mediatorId: json['mediatorId'] as String,
      dataPoints: (json['dataPoints'] as List<dynamic>)
          .map((e) => MetricDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CloudwatchMetricDataToJson(
        CloudwatchMetricData instance) =>
    <String, dynamic>{
      'metricId': instance.metricId,
      'mediatorId': instance.mediatorId,
      'dataPoints': instance.dataPoints.map((e) => e.toJson()).toList(),
    };

MetricDataPoint _$MetricDataPointFromJson(Map<String, dynamic> json) =>
    MetricDataPoint(
      timestamp: DateTime.parse(json['timestamp'] as String),
      value: (json['value'] as num).toDouble(),
      unit: json['unit'] as String?,
    );

Map<String, dynamic> _$MetricDataPointToJson(MetricDataPoint instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'value': instance.value,
      if (instance.unit case final value?) 'unit': value,
    };
