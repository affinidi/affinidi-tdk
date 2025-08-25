// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_mediator_instances_list_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediatorInstance _$MediatorInstanceFromJson(Map<String, dynamic> json) =>
    MediatorInstance(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      createdAt: json['createdAt'] as String,
      modifiedAt: json['modifiedAt'] as String,
      createdBy: json['createdBy'] as String,
      modifiedBy: json['modifiedBy'] as String,
      projectId: json['projectId'] as String,
      serviceType: json['serviceType'] as String,
      deploymentState: json['deploymentState'] as String,
      deploymentStatus: json['deploymentStatus'] as String,
      serviceSize: json['serviceSize'] as String,
      did: json['did'] as String,
      didDocumentUrl: json['didDocumentUrl'] as String?,
      currentServiceRequest: json['currentServiceRequest'] as String?,
      isAdministratorDidGenerated: json['isAdministratorDidGenerated'] as bool?,
      administratorDid: json['administratorDid'] as String?,
      acl: json['acl'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$MediatorInstanceToJson(MediatorInstance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'createdAt': instance.createdAt,
      'modifiedAt': instance.modifiedAt,
      'createdBy': instance.createdBy,
      'modifiedBy': instance.modifiedBy,
      'projectId': instance.projectId,
      'serviceType': instance.serviceType,
      'deploymentState': instance.deploymentState,
      'deploymentStatus': instance.deploymentStatus,
      'serviceSize': instance.serviceSize,
      'did': instance.did,
      if (instance.didDocumentUrl case final value?) 'didDocumentUrl': value,
      if (instance.currentServiceRequest case final value?)
        'currentServiceRequest': value,
      if (instance.isAdministratorDidGenerated case final value?)
        'isAdministratorDidGenerated': value,
      if (instance.administratorDid case final value?)
        'administratorDid': value,
      if (instance.acl case final value?) 'acl': value,
    };

MediatorInstanceBodyData _$MediatorInstanceBodyDataFromJson(
        Map<String, dynamic> json) =>
    MediatorInstanceBodyData(
      instances: (json['instances'] as List<dynamic>)
          .map((e) => MediatorInstance.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MediatorInstanceBodyDataToJson(
        MediatorInstanceBodyData instance) =>
    <String, dynamic>{
      'instances': instance.instances.map((e) => e.toJson()).toList(),
    };
