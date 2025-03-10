//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_vault_data_manager_client/src/model/edek_info.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/node_dto.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/node_status.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/node_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_detailed_node_info_ok.g.dart';

/// GetDetailedNodeInfoOK
///
/// Properties:
/// * [nodeId] - A unique identifier of current node
/// * [status] 
/// * [fileCount] - number of files in current node
/// * [profileCount] - number of profiles in current node
/// * [folderCount] - number of folders in current node
/// * [vcCount] - number of vcCount in current node
/// * [name] - display name of current node
/// * [consumerId] - unique identifier for consumer
/// * [parentNodeId] - parent node path
/// * [profileId] - A unique identifier of profile, under which current node is created
/// * [createdAt] - creation date/time of the node
/// * [modifiedAt] - modification date/time of the node
/// * [createdBy] - Identifier of the user who created the node
/// * [modifiedBy] - Identifier of the user who last updated the node
/// * [description] - Description of the node
/// * [type] 
/// * [link] - id of the file, used for FILE node only
/// * [schema] - name of the schema, used for PROFILE node only
/// * [consumedFileStorage] - amount of bytes used by the stored data, used for ROOT_ELEMENT only for now
/// * [edekInfo] 
/// * [metadata] - A JSON string format containing metadata of the node
/// * [getUrl] 
@BuiltValue()
abstract class GetDetailedNodeInfoOK implements NodeDto, Built<GetDetailedNodeInfoOK, GetDetailedNodeInfoOKBuilder> {
  @BuiltValueField(wireName: r'getUrl')
  String? get getUrl;

  GetDetailedNodeInfoOK._();

  factory GetDetailedNodeInfoOK([void updates(GetDetailedNodeInfoOKBuilder b)]) = _$GetDetailedNodeInfoOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetDetailedNodeInfoOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetDetailedNodeInfoOK> get serializer => _$GetDetailedNodeInfoOKSerializer();
}

class _$GetDetailedNodeInfoOKSerializer implements PrimitiveSerializer<GetDetailedNodeInfoOK> {
  @override
  final Iterable<Type> types = const [GetDetailedNodeInfoOK, _$GetDetailedNodeInfoOK];

  @override
  final String wireName = r'GetDetailedNodeInfoOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetDetailedNodeInfoOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.profileCount != null) {
      yield r'profileCount';
      yield serializers.serialize(
        object.profileCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.schema != null) {
      yield r'schema';
      yield serializers.serialize(
        object.schema,
        specifiedType: const FullType(String),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(String),
      );
    }
    yield r'consumerId';
    yield serializers.serialize(
      object.consumerId,
      specifiedType: const FullType(String),
    );
    yield r'modifiedAt';
    yield serializers.serialize(
      object.modifiedAt,
      specifiedType: const FullType(String),
    );
    if (object.link != null) {
      yield r'link';
      yield serializers.serialize(
        object.link,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    yield r'parentNodeId';
    yield serializers.serialize(
      object.parentNodeId,
      specifiedType: const FullType(String),
    );
    if (object.consumedFileStorage != null) {
      yield r'consumedFileStorage';
      yield serializers.serialize(
        object.consumedFileStorage,
        specifiedType: const FullType(int),
      );
    }
    if (object.folderCount != null) {
      yield r'folderCount';
      yield serializers.serialize(
        object.folderCount,
        specifiedType: const FullType(int),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(NodeType),
    );
    if (object.fileCount != null) {
      yield r'fileCount';
      yield serializers.serialize(
        object.fileCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.getUrl != null) {
      yield r'getUrl';
      yield serializers.serialize(
        object.getUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.vcCount != null) {
      yield r'vcCount';
      yield serializers.serialize(
        object.vcCount,
        specifiedType: const FullType(int),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(String),
    );
    yield r'createdBy';
    yield serializers.serialize(
      object.createdBy,
      specifiedType: const FullType(String),
    );
    yield r'profileId';
    yield serializers.serialize(
      object.profileId,
      specifiedType: const FullType(String),
    );
    if (object.edekInfo != null) {
      yield r'edekInfo';
      yield serializers.serialize(
        object.edekInfo,
        specifiedType: const FullType(EdekInfo),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'modifiedBy';
    yield serializers.serialize(
      object.modifiedBy,
      specifiedType: const FullType(String),
    );
    yield r'nodeId';
    yield serializers.serialize(
      object.nodeId,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(NodeStatus),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetDetailedNodeInfoOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetDetailedNodeInfoOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'profileCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.profileCount = valueDes;
          break;
        case r'schema':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.schema = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.metadata = valueDes;
          break;
        case r'consumerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.consumerId = valueDes;
          break;
        case r'modifiedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.modifiedAt = valueDes;
          break;
        case r'link':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.link = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'parentNodeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.parentNodeId = valueDes;
          break;
        case r'consumedFileStorage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.consumedFileStorage = valueDes;
          break;
        case r'folderCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.folderCount = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NodeType),
          ) as NodeType;
          result.type = valueDes;
          break;
        case r'fileCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.fileCount = valueDes;
          break;
        case r'getUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.getUrl = valueDes;
          break;
        case r'vcCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.vcCount = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        case r'createdBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdBy = valueDes;
          break;
        case r'profileId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.profileId = valueDes;
          break;
        case r'edekInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EdekInfo),
          ) as EdekInfo;
          result.edekInfo.replace(valueDes);
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'modifiedBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.modifiedBy = valueDes;
          break;
        case r'nodeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nodeId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NodeStatus),
          ) as NodeStatus;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetDetailedNodeInfoOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetDetailedNodeInfoOKBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

