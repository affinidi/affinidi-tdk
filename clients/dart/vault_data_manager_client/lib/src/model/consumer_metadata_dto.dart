//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_vault_data_manager_client/src/model/node_status.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/node_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_metadata_dto.g.dart';

/// ConsumerMetadataDto
///
/// Properties:
/// * [nodeId] 
/// * [status] 
/// * [fileCount] 
/// * [folderCount] 
/// * [profileCount] 
/// * [name] 
/// * [consumerId] 
/// * [createdAt] - creation date/time
/// * [modifiedAt] - modification date/time
/// * [createdBy] - Identifier of the user who created
/// * [modifiedBy] - Identifier of the user who last updated
/// * [description] - Description of the node
/// * [type] 
/// * [consumedFileStorage] - Tracks the amount of bytes used by the stored data.
@BuiltValue()
abstract class ConsumerMetadataDto implements Built<ConsumerMetadataDto, ConsumerMetadataDtoBuilder> {
  @BuiltValueField(wireName: r'nodeId')
  String get nodeId;

  @BuiltValueField(wireName: r'status')
  NodeStatus get status;
  // enum statusEnum {  NOT_SET,  HIDDEN,  DELETED,  INITIALIZED,  CREATED,  };

  @BuiltValueField(wireName: r'fileCount')
  int? get fileCount;

  @BuiltValueField(wireName: r'folderCount')
  int? get folderCount;

  @BuiltValueField(wireName: r'profileCount')
  int? get profileCount;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'consumerId')
  String get consumerId;

  /// creation date/time
  @BuiltValueField(wireName: r'createdAt')
  String get createdAt;

  /// modification date/time
  @BuiltValueField(wireName: r'modifiedAt')
  String get modifiedAt;

  /// Identifier of the user who created
  @BuiltValueField(wireName: r'createdBy')
  String get createdBy;

  /// Identifier of the user who last updated
  @BuiltValueField(wireName: r'modifiedBy')
  String get modifiedBy;

  /// Description of the node
  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'type')
  NodeType get type;
  // enum typeEnum {  VC_ROOT,  VC,  FILE,  FOLDER,  PROFILE,  ROOT_ELEMENT,  TRASH_BIN,  };

  /// Tracks the amount of bytes used by the stored data.
  @BuiltValueField(wireName: r'consumedFileStorage')
  int get consumedFileStorage;

  ConsumerMetadataDto._();

  factory ConsumerMetadataDto([void updates(ConsumerMetadataDtoBuilder b)]) = _$ConsumerMetadataDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerMetadataDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerMetadataDto> get serializer => _$ConsumerMetadataDtoSerializer();
}

class _$ConsumerMetadataDtoSerializer implements PrimitiveSerializer<ConsumerMetadataDto> {
  @override
  final Iterable<Type> types = const [ConsumerMetadataDto, _$ConsumerMetadataDto];

  @override
  final String wireName = r'ConsumerMetadataDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerMetadataDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.fileCount != null) {
      yield r'fileCount';
      yield serializers.serialize(
        object.fileCount,
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
    if (object.profileCount != null) {
      yield r'profileCount';
      yield serializers.serialize(
        object.profileCount,
        specifiedType: const FullType(int),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'consumerId';
    yield serializers.serialize(
      object.consumerId,
      specifiedType: const FullType(String),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(String),
    );
    yield r'modifiedAt';
    yield serializers.serialize(
      object.modifiedAt,
      specifiedType: const FullType(String),
    );
    yield r'createdBy';
    yield serializers.serialize(
      object.createdBy,
      specifiedType: const FullType(String),
    );
    yield r'modifiedBy';
    yield serializers.serialize(
      object.modifiedBy,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(NodeType),
    );
    yield r'consumedFileStorage';
    yield serializers.serialize(
      object.consumedFileStorage,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerMetadataDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerMetadataDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'fileCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.fileCount = valueDes;
          break;
        case r'folderCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.folderCount = valueDes;
          break;
        case r'profileCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.profileCount = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'consumerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.consumerId = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        case r'modifiedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.modifiedAt = valueDes;
          break;
        case r'createdBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdBy = valueDes;
          break;
        case r'modifiedBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.modifiedBy = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NodeType),
          ) as NodeType;
          result.type = valueDes;
          break;
        case r'consumedFileStorage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.consumedFileStorage = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerMetadataDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerMetadataDtoBuilder();
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

