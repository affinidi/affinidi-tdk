import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:mediator_client/mediator_client.dart';
import '../response_body.dart';

part 'get_mediator_instances_list_message.g.dart';

class GetMediatorInstancesListMessage extends PlainTextMessage {
  GetMediatorInstancesListMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
  }) : super(
          type: Uri.parse(
            'affinidi.io/operations/ama/getMediatorInstancesList',
          ),
        );
}

class GetMediatorInstancesListResponseMessage extends PlainTextMessage {
  GetMediatorInstancesListResponseMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
  }) : super(
          type: Uri.parse(
            'affinidi.io/operations/ama/getMediatorInstancesList/response',
          ),
        );

  List<MediatorInstance> get instances {
    if (body == null) {
      throw ArgumentError('Response body cannot be null');
    }

    final responseBody = ResponseBody.fromJson(body!);
    final bodyData = MediatorInstanceBodyData.fromJson(
      jsonDecode(responseBody.response) as Map<String, dynamic>,
    );

    return bodyData.instances;
  }
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class MediatorInstance {
  final String id;
  final String name;
  final String description;
  final String createdAt;
  final String modifiedAt;
  final String createdBy;
  final String modifiedBy;
  final String projectId;
  final String serviceType;
  final String deploymentState;
  final String deploymentStatus;
  final String serviceSize;
  final String did;
  final String? didDocumentUrl;
  final String? currentServiceRequest;
  final bool? isAdministratorDidGenerated;
  final String? administratorDid;
  final Map<String, dynamic>? acl;

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
    required this.deploymentState,
    required this.deploymentStatus,
    required this.serviceSize,
    required this.did,
    this.didDocumentUrl,
    this.currentServiceRequest,
    this.isAdministratorDidGenerated,
    this.administratorDid,
    this.acl,
  });

  factory MediatorInstance.fromJson(Map<String, dynamic> json) =>
      _$MediatorInstanceFromJson(json);
  Map<String, dynamic> toJson() => _$MediatorInstanceToJson(this);
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class MediatorInstanceBodyData {
  final List<MediatorInstance> instances;

  MediatorInstanceBodyData({
    required this.instances,
  });

  factory MediatorInstanceBodyData.fromJson(Map<String, dynamic> json) =>
      _$MediatorInstanceBodyDataFromJson(json);
  Map<String, dynamic> toJson() => _$MediatorInstanceBodyDataToJson(this);
}
