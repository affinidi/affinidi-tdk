import 'package:json_annotation/json_annotation.dart';

import 'config/base_instance_message.dart';

part 'get_instances_list_message.g.dart';

/// Message for getting list of instances.
class GetInstancesListMessage extends BaseInstanceMessage {
  /// Creates a get instances list message.
  GetInstancesListMessage._({
    required super.id,
    required super.to,
    required super.operationName,
    super.from,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
    super.threadId,
  });

  /// Creates a get mediator instances list message.
  factory GetInstancesListMessage.mediator({
    required String id,
    required List<String> to,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    Map<String, dynamic> body = const {},
    String? threadId,
  }) {
    return GetInstancesListMessage._(
      id: id,
      to: to,
      from: from,
      createdTime: createdTime,
      expiresTime: expiresTime,
      body: body,
      threadId: threadId,
      operationName: 'getMediatorInstancesList',
    );
  }

  /// Creates a get meeting place instances list message.
  factory GetInstancesListMessage.meetingPlace({
    required String id,
    required List<String> to,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    Map<String, dynamic> body = const {},
    String? threadId,
  }) {
    throw UnimplementedError(
        'Meeting place list retrieval is not yet implemented');
  }

  /// Creates a get trust registry instances list message.
  factory GetInstancesListMessage.trustRegistry({
    required String id,
    required List<String> to,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    Map<String, dynamic> body = const {},
    String? threadId,
  }) {
    throw UnimplementedError(
        'Trust registry list retrieval is not yet implemented');
  }
}

/// Response message for get mediator instances list operation.
class GetMediatorInstancesListResponseMessage
    extends BaseInstanceResponseMessage<MediatorInstanceBodyData> {
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
  List<MediatorInstance> get instances => response.instances;
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)

/// Represents a mediator instance.
class MediatorInstance {
  /// The instance identifier.
  final String id;

  /// The instance name.
  final String name;

  /// The instance description.
  final String description;

  /// The creation timestamp.
  final DateTime createdAt;

  /// The modification timestamp.
  final DateTime modifiedAt;

  /// The user who created the instance.
  final String createdBy;

  /// The user who last modified the instance.
  final String modifiedBy;

  /// The project identifier.
  final String projectId;

  /// The service type.
  final String serviceType;

  /// The deployment state.
  final String? deploymentState;

  /// The deployment status.
  final String? deploymentStatus;

  /// The service size.
  final String serviceSize;

  /// The DID of the mediator.
  final String did;

  /// The DID document URL.
  final String didDocumentUrl;

  /// The account ID where the mediator is deployed.
  final String accountId;

  /// The current service request.
  final String? currentServiceRequest;

  /// Whether administrator DID is generated.
  final bool? isAdministratorDidGenerated;

  /// The administrator DID.
  final String? administratorDid;

  /// The access control list.
  final Map<String, num>? acl;

  /// Creates a mediator instance.
  MediatorInstance({
    required this.id,
    required this.name,
    required this.description,
    required this.createdAt,
    required this.modifiedAt,
    required this.createdBy,
    required this.modifiedBy,
    required this.projectId,
    required this.serviceType,
    this.deploymentState,
    this.deploymentStatus,
    required this.serviceSize,
    required this.did,
    required this.didDocumentUrl,
    required this.accountId,
    this.currentServiceRequest,
    this.isAdministratorDidGenerated,
    this.administratorDid,
    this.acl,
  });

  /// Creates MediatorInstance from a JSON map.
  factory MediatorInstance.fromJson(Map<String, dynamic> json) =>
      _$MediatorInstanceFromJson(json);

  /// Converts this MediatorInstance to a JSON map.
  Map<String, dynamic> toJson() => _$MediatorInstanceToJson(this);
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)

/// Body data containing mediator instances list.
class MediatorInstanceBodyData {
  /// The list of mediator instances.
  final List<MediatorInstance> instances;

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
