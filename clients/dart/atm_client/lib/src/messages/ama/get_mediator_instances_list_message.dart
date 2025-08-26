import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:mediator_client/mediator_client.dart';

import '../response_body.dart';

part 'get_mediator_instances_list_message.g.dart';

/// Message for getting list of mediator instances.
class GetMediatorInstancesListMessage extends PlainTextMessage {
  /// Creates a get mediator instances list message.
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

/// Response message for get mediator instances list operation.
class GetMediatorInstancesListResponseMessage extends PlainTextMessage {
  /// Creates a get mediator instances list response message.
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

  /// Gets the list of mediator instances from the message body.
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

/// Represents a mediator instance.
class MediatorInstance {
  /// The instance identifier.
  final String id;

  /// The instance name.
  final String name;

  /// The instance description.
  final String description;

  /// The creation timestamp.
  final String createdAt;

  /// The modification timestamp.
  final String modifiedAt;

  /// The user who created the instance.
  final String createdBy;

  /// The user who last modified the instance.
  final String modifiedBy;

  /// The project identifier.
  final String projectId;

  /// The service type.
  final String serviceType;

  /// The deployment state.
  final String deploymentState;

  /// The deployment status.
  final String deploymentStatus;

  /// The service size.
  final String serviceSize;

  /// The DID of the mediator.
  final String did;

  /// The DID document URL.
  final String? didDocumentUrl;

  /// The current service request.
  final String? currentServiceRequest;

  /// Whether administrator DID is generated.
  final bool? isAdministratorDidGenerated;

  /// The administrator DID.
  final String? administratorDid;

  /// The access control list.
  final Map<String, dynamic>? acl;

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

  /// Creates mediator instance body data.
  MediatorInstanceBodyData({
    required this.instances,
  });

  /// Creates MediatorInstanceBodyData from a JSON map.
  factory MediatorInstanceBodyData.fromJson(Map<String, dynamic> json) =>
      _$MediatorInstanceBodyDataFromJson(json);

  /// Converts this MediatorInstanceBodyData to a JSON map.
  Map<String, dynamic> toJson() => _$MediatorInstanceBodyDataToJson(this);
}
