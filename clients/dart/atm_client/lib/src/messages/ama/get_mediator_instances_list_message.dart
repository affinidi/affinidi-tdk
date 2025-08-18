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

// TODO: implement MediatorInstance class
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class MediatorInstance {
  MediatorInstance();

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
