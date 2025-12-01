// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_instance_metadata_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediatorInstanceMetadata _$MediatorInstanceMetadataFromJson(
        Map<String, dynamic> json) =>
    MediatorInstanceMetadata(
      name: json['name'] as String,
      description: json['description'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      modifiedAt: DateTime.parse(json['modifiedAt'] as String),
      createdBy: json['createdBy'] as String,
      modifiedBy: json['modifiedBy'] as String,
      id: json['id'] as String,
      projectId: json['projectId'] as String,
      serviceType: json['serviceType'] as String,
      deploymentState: json['deploymentState'] as String,
      deploymentStatus: json['deploymentStatus'] as String,
      serviceSize: json['serviceSize'] as String,
      did: json['did'] as String,
      didDocumentUrl: json['didDocumentUrl'] as String,
      accountId: json['accountId'] as String,
      currentServiceRequest: json['currentServiceRequest'] as String?,
      isAdministratorDidGenerated: json['isAdministratorDidGenerated'] as bool?,
      administratorDid: json['administratorDid'] as String?,
      acl: (json['acl'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as num),
      ),
    );

Map<String, dynamic> _$MediatorInstanceMetadataToJson(
        MediatorInstanceMetadata instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'createdAt': instance.createdAt.toIso8601String(),
      'modifiedAt': instance.modifiedAt.toIso8601String(),
      'createdBy': instance.createdBy,
      'modifiedBy': instance.modifiedBy,
      'id': instance.id,
      'projectId': instance.projectId,
      'serviceType': instance.serviceType,
      'deploymentState': instance.deploymentState,
      'deploymentStatus': instance.deploymentStatus,
      'serviceSize': instance.serviceSize,
      'did': instance.did,
      'didDocumentUrl': instance.didDocumentUrl,
      'accountId': instance.accountId,
      if (instance.currentServiceRequest case final value?)
        'currentServiceRequest': value,
      if (instance.isAdministratorDidGenerated case final value?)
        'isAdministratorDidGenerated': value,
      if (instance.administratorDid case final value?)
        'administratorDid': value,
      if (instance.acl case final value?) 'acl': value,
    };
