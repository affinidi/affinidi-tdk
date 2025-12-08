import 'package:json_annotation/json_annotation.dart';

import '../../../models/mediator_instance_metadata/mediator_instance_metadata.dart';
import '../../../models/mpx_instance_metadata/mpx_instance_metadata.dart';
import '../../../models/tr_instance_metadata/tr_instance_metadata.dart';
import '../base_messages/base_response_message.dart';

part 'get_instances_list_response_message.g.dart';

/// Response message for get mediator instances list operation.
class GetMediatorInstancesListResponseMessage
    extends BaseResponseMessage<MediatorInstanceBodyData> {
  /// Creates a get mediator instances list response message.
  GetMediatorInstancesListResponseMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.threadId,
    super.body = const {},
  }) : super(
          operationName: 'getMediatorInstancesList',
          fromJson: MediatorInstanceBodyData.fromJson,
        );

  /// Gets the list of mediator instances from the response.
  List<MediatorInstanceMetadata> get instances => response.instances;
}

/// Response message for get MPX instances list operation.
class GetMpxInstancesListResponseMessage
    extends BaseResponseMessage<MpxInstanceBodyData> {
  /// Creates a get MPX instances list response message.
  GetMpxInstancesListResponseMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.threadId,
    super.body = const {},
  }) : super(
          operationName: 'getMpxInstanceList',
          fromJson: MpxInstanceBodyData.fromJson,
        );

  /// Gets the list of MPX instances from the response.
  List<MpxInstanceMetadata> get instances => response.instances;
}

/// Response message for get Trust Registry instances list operation.
class GetTrInstancesListResponseMessage
    extends BaseResponseMessage<TrInstanceBodyData> {
  /// Creates a get Trust Registry instances list response message.
  GetTrInstancesListResponseMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.threadId,
    super.body = const {},
  }) : super(
          operationName: 'getTrInstanceList',
          fromJson: TrInstanceBodyData.fromJson,
        );

  /// Gets the list of Trust Registry instances from the response.
  List<TrInstanceMetadata> get instances => response.instances;
}

/// Options for listing instances.
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class ListInstancesOptions {
  /// [exclusiveStartKey] for retrieving the next batch of data.
  final String? exclusiveStartKey;

  /// Maximum number of records to fetch in a list.
  final int? limit;

  /// Creates a list instances options.
  ListInstancesOptions({
    this.exclusiveStartKey,
    this.limit = 10,
  });

  /// Creates a ListInstancesOptions from a JSON map.
  factory ListInstancesOptions.fromJson(Map<String, dynamic> json) =>
      _$ListInstancesOptionsFromJson(json);

  /// Converts this ListInstancesOptions to a JSON map.
  Map<String, dynamic> toJson() => _$ListInstancesOptionsToJson(this);
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)

/// Body data containing mediator instances list.
class MediatorInstanceBodyData {
  /// The list of mediator instances.
  final List<MediatorInstanceMetadata> instances;

  /// The last evaluated key for pagination.
  final String? lastEvaluatedKey;

  /// Creates mediator instance body data.
  MediatorInstanceBodyData({
    required this.instances,
    this.lastEvaluatedKey,
  });

  /// Creates MediatorInstanceBodyData from a JSON map.
  factory MediatorInstanceBodyData.fromJson(Map<String, dynamic> json) =>
      _$MediatorInstanceBodyDataFromJson(json);

  /// Converts this MediatorInstanceBodyData to a JSON map.
  Map<String, dynamic> toJson() => _$MediatorInstanceBodyDataToJson(this);
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)

/// Body data containing MPX instances list.
class MpxInstanceBodyData {
  /// The list of MPX instances.
  final List<MpxInstanceMetadata> instances;

  /// The last evaluated key for pagination.
  final String? lastEvaluatedKey;

  /// Creates MPX instance body data.
  MpxInstanceBodyData({
    required this.instances,
    this.lastEvaluatedKey,
  });

  /// Creates MpxInstanceBodyData from a JSON map.
  factory MpxInstanceBodyData.fromJson(Map<String, dynamic> json) =>
      _$MpxInstanceBodyDataFromJson(json);

  /// Converts this MpxInstanceBodyData to a JSON map.
  Map<String, dynamic> toJson() => _$MpxInstanceBodyDataToJson(this);
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)

/// Body data containing Trust Registry instances list.
class TrInstanceBodyData {
  /// The list of Trust Registry instances.
  final List<TrInstanceMetadata> instances;

  /// The last evaluated key for pagination.
  final String? lastEvaluatedKey;

  /// Creates Trust Registry instance body data.
  TrInstanceBodyData({
    required this.instances,
    this.lastEvaluatedKey,
  });

  /// Creates TrInstanceBodyData from a JSON map.
  factory TrInstanceBodyData.fromJson(Map<String, dynamic> json) =>
      _$TrInstanceBodyDataFromJson(json);

  /// Converts this TrInstanceBodyData to a JSON map.
  Map<String, dynamic> toJson() => _$TrInstanceBodyDataToJson(this);
}
