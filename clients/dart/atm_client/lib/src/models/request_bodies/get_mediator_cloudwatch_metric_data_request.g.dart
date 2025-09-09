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
          startDate: _dateFromIsoString(json['startDate'] as String?),
          endDate: _dateFromIsoString(json['endDate'] as String?),
          period: (json['period'] as num?)?.toInt(),
        );

Map<String, dynamic> _$GetMediatorCloudwatchMetricDataRequestToJson(
        GetMediatorCloudwatchMetricDataRequest instance) =>
    <String, dynamic>{
      'mediatorId': instance.mediatorId,
      'metricId': instance.metricId,
      if (_dateToIsoUtcString(instance.startDate) case final value?)
        'startDate': value,
      if (_dateToIsoUtcString(instance.endDate) case final value?)
        'endDate': value,
      if (instance.period case final value?) 'period': value,
    };
