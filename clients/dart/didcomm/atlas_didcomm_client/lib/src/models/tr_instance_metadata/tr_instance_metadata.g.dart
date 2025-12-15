// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tr_instance_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrInstanceMetadata _$TrInstanceMetadataFromJson(Map<String, dynamic> json) =>
    TrInstanceMetadata(
      name: json['name'] as String,
      description: json['description'] as String,
      createdAt: json['createdAt'] as String,
      modifiedAt: json['modifiedAt'] as String,
      createdBy: json['createdBy'] as String,
      modifiedBy: json['modifiedBy'] as String,
      id: json['id'] as String,
      did: json['did'] as String,
      didDocumentUrl: json['didDocumentUrl'] as String,
      projectId: json['projectId'] as String,
      serviceType: $enumDecode(_$ServiceTypeEnumMap, json['serviceType']),
      deploymentState:
          $enumDecode(_$DeploymentStateEnumMap, json['deploymentState']),
      deploymentStatus:
          $enumDecode(_$DeploymentStatusEnumMap, json['deploymentStatus']),
      serviceSize: $enumDecode(_$ServiceSizeEnumMap, json['serviceSize']),
      accountId: json['accountId'] as String,
      defaultMediatorDid: json['defaultMediatorDid'] as String,
      administratorDids: json['administratorDids'] as String,
      corsAllowedOrigins: json['corsAllowedOrigins'] as String,
      currentServiceRequest: json['currentServiceRequest'] as String?,
    );

Map<String, dynamic> _$TrInstanceMetadataToJson(TrInstanceMetadata instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'createdAt': instance.createdAt,
      'modifiedAt': instance.modifiedAt,
      'createdBy': instance.createdBy,
      'modifiedBy': instance.modifiedBy,
      'id': instance.id,
      'did': instance.did,
      'didDocumentUrl': instance.didDocumentUrl,
      'projectId': instance.projectId,
      'serviceType': _$ServiceTypeEnumMap[instance.serviceType]!,
      'deploymentState': _$DeploymentStateEnumMap[instance.deploymentState]!,
      'deploymentStatus': _$DeploymentStatusEnumMap[instance.deploymentStatus]!,
      'serviceSize': _$ServiceSizeEnumMap[instance.serviceSize]!,
      'accountId': instance.accountId,
      'defaultMediatorDid': instance.defaultMediatorDid,
      'administratorDids': instance.administratorDids,
      'corsAllowedOrigins': instance.corsAllowedOrigins,
      if (instance.currentServiceRequest case final value?)
        'currentServiceRequest': value,
    };

const _$ServiceTypeEnumMap = {
  ServiceType.mediator: 'MEDIATOR',
  ServiceType.meetingPlace: 'MPX',
  ServiceType.trustRegistry: 'TR',
};

const _$DeploymentStateEnumMap = {
  DeploymentState.update: 'UPDATE',
  DeploymentState.ok: 'OK',
  DeploymentState.error: 'ERROR',
};

const _$DeploymentStatusEnumMap = {
  DeploymentStatus.unknown: 'UNKNOWN',
  DeploymentStatus.requested: 'REQUESTED',
  DeploymentStatus.createInProgress: 'CREATE_IN_PROGRESS',
  DeploymentStatus.createComplete: 'CREATE_COMPLETE',
  DeploymentStatus.createFailed: 'CREATE_FAILED',
  DeploymentStatus.rollbackInProgress: 'ROLLBACK_IN_PROGRESS',
  DeploymentStatus.rollbackComplete: 'ROLLBACK_COMPLETE',
  DeploymentStatus.rollbackFailed: 'ROLLBACK_FAILED',
  DeploymentStatus.deleteInProgress: 'DELETE_IN_PROGRESS',
  DeploymentStatus.deleteComplete: 'DELETE_COMPLETE',
  DeploymentStatus.deleteFailed: 'DELETE_FAILED',
  DeploymentStatus.updateInProgress: 'UPDATE_IN_PROGRESS',
  DeploymentStatus.updateComplete: 'UPDATE_COMPLETE',
  DeploymentStatus.updateFailed: 'UPDATE_FAILED',
  DeploymentStatus.updateRollbackInProgress: 'UPDATE_ROLLBACK_IN_PROGRESS',
  DeploymentStatus.updateRollbackComplete: 'UPDATE_ROLLBACK_COMPLETE',
  DeploymentStatus.updateRollbackFailed: 'UPDATE_ROLLBACK_FAILED',
  DeploymentStatus.updateCompleteCleanupInProgress:
      'UPDATE_COMPLETE_CLEANUP_IN_PROGRESS',
  DeploymentStatus.updateRollbackCompleteCleanupInProgress:
      'UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS',
};

const _$ServiceSizeEnumMap = {
  ServiceSize.dev: 'dev',
  ServiceSize.tiny: 'tiny',
  ServiceSize.small: 'small',
  ServiceSize.medium: 'medium',
  ServiceSize.large: 'large',
};
