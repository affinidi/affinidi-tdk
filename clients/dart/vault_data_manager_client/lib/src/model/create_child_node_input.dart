//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_vault_data_manager_client/src/model/edek_info.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/node_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_child_node_input.g.dart';

/// CreateChildNodeInput
///
/// Properties:
/// * [name] - Name of the item
/// * [type] 
/// * [description] - description of profile if creating a new profile
/// * [edekInfo] 
/// * [dek] - A base64 encoded data encryption key, encrypted using VFS public key, required for node types [FILE, PROFILE]
/// * [metadata] - metadata of the node in stringified json format
@BuiltValue()
abstract class CreateChildNodeInput implements Built<CreateChildNodeInput, CreateChildNodeInputBuilder> {
  /// Name of the item
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'type')
  NodeType get type;
  // enum typeEnum {  VC_ROOT,  VC,  FILE,  FOLDER,  PROFILE,  ROOT_ELEMENT,  TRASH_BIN,  };

  /// description of profile if creating a new profile
  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'edekInfo')
  EdekInfo? get edekInfo;

  /// A base64 encoded data encryption key, encrypted using VFS public key, required for node types [FILE, PROFILE]
  @BuiltValueField(wireName: r'dek')
  String? get dek;

  /// metadata of the node in stringified json format
  @BuiltValueField(wireName: r'metadata')
  String? get metadata;

  CreateChildNodeInput._();

  factory CreateChildNodeInput([void updates(CreateChildNodeInputBuilder b)]) = _$CreateChildNodeInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateChildNodeInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateChildNodeInput> get serializer => _$CreateChildNodeInputSerializer();
}

class _$CreateChildNodeInputSerializer implements PrimitiveSerializer<CreateChildNodeInput> {
  @override
  final Iterable<Type> types = const [CreateChildNodeInput, _$CreateChildNodeInput];

  @override
  final String wireName = r'CreateChildNodeInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateChildNodeInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(NodeType),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.edekInfo != null) {
      yield r'edekInfo';
      yield serializers.serialize(
        object.edekInfo,
        specifiedType: const FullType(EdekInfo),
      );
    }
    if (object.dek != null) {
      yield r'dek';
      yield serializers.serialize(
        object.dek,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateChildNodeInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateChildNodeInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NodeType),
          ) as NodeType;
          result.type = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'edekInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EdekInfo),
          ) as EdekInfo;
          result.edekInfo.replace(valueDes);
          break;
        case r'dek':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dek = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.metadata = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateChildNodeInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateChildNodeInputBuilder();
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

