// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_mediator_cloudwatch_metric_data_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetMediatorCloudwatchMetricDataRequest
    _$GetMediatorCloudwatchMetricDataRequestFromJson(
            Map<String, dynamic> json) =>
        GetMediatorCloudwatchMetricDataRequest(
          mediatorId: json['mediatorId'] as String,
          metricId: json['metricId'] as String,
          startDate: json['startDate'] == null
              ? null
              : DateTime.parse(json['startDate'] as String),
          endDate: json['endDate'] == null
              ? null
              : DateTime.parse(json['endDate'] as String),
          period: (json['period'] as num?)?.toInt(),
        );

Map<String, dynamic> _$GetMediatorCloudwatchMetricDataRequestToJson(
        GetMediatorCloudwatchMetricDataRequest instance) =>
    <String, dynamic>{
      'mediatorId': instance.mediatorId,
      'metricId': instance.metricId,
      if (instance.startDate?.toIso8601String() case final value?)
        'startDate': value,
      if (instance.endDate?.toIso8601String() case final value?)
        'endDate': value,
      if (instance.period case final value?) 'period': value,
    };
