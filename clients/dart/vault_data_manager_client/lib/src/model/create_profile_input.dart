//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_vault_data_manager_client/src/model/edek_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_profile_input.g.dart';

/// CreateProfileInput
///
/// Properties:
/// * [name] - Name of the item
/// * [description] - description of profile
/// * [edekInfo] 
/// * [dek] - A base64 encoded data encryption key, encrypted using VFS public key, required for node types [FILE, PROFILE]
/// * [metadata] - metadata of the node in stringified json format
/// * [subjectDid] - DID to grant access to Profile
/// * [rights] - types of access to grant
@BuiltValue()
abstract class CreateProfileInput implements Built<CreateProfileInput, CreateProfileInputBuilder> {
  /// Name of the item
  @BuiltValueField(wireName: r'name')
  String get name;

  /// description of profile
  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'edekInfo')
  EdekInfo get edekInfo;

  /// A base64 encoded data encryption key, encrypted using VFS public key, required for node types [FILE, PROFILE]
  @BuiltValueField(wireName: r'dek')
  String get dek;

  /// metadata of the node in stringified json format
  @BuiltValueField(wireName: r'metadata')
  String? get metadata;

  /// DID to grant access to Profile
  @BuiltValueField(wireName: r'subjectDid')
  String? get subjectDid;

  /// types of access to grant
  @BuiltValueField(wireName: r'rights')
  BuiltList<GrantAccessInputRightsEnum>? get rights;
  // enum rightsEnum {  READ,  WRITE,  };

  CreateProfileInput._();

  factory CreateProfileInput([void updates(CreateProfileInputBuilder b)]) = _$CreateProfileInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateProfileInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateProfileInput> get serializer => _$CreateProfileInputSerializer();
}

class _$CreateProfileInputSerializer implements PrimitiveSerializer<CreateProfileInput> {
  @override
  final Iterable<Type> types = const [CreateProfileInput, _$CreateProfileInput];

  @override
  final String wireName = r'CreateProfileInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateProfileInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    yield r'edekInfo';
    yield serializers.serialize(
      object.edekInfo,
      specifiedType: const FullType(EdekInfo),
    );
    yield r'dek';
    yield serializers.serialize(
      object.dek,
      specifiedType: const FullType(String),
    );
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(String),
      );
    }
    if (object.subjectDid != null) {
      yield r'subjectDid';
      yield serializers.serialize(
        object.subjectDid,
        specifiedType: const FullType(String),
      );
    }
    if (object.rights != null) {
      yield r'rights';
      yield serializers.serialize(
        object.rights,
        specifiedType: const FullType(BuiltList, [FullType(GrantAccessInputRightsEnum)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateProfileInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateProfileInputBuilder result,
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
        case r'subjectDid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subjectDid = valueDes;
          break;
        case r'rights':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GrantAccessInputRightsEnum)]),
          ) as BuiltList<GrantAccessInputRightsEnum>;
          result.rights.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateProfileInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateProfileInputBuilder();
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

class GrantAccessInputRightsEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'READ')
  static const GrantAccessInputRightsEnum READ = _$grantAccessInputRightsEnum_READ;
  @BuiltValueEnumConst(wireName: r'WRITE')
  static const GrantAccessInputRightsEnum WRITE = _$grantAccessInputRightsEnum_WRITE;

  static Serializer<GrantAccessInputRightsEnum> get serializer => _$grantAccessInputRightsEnumSerializer;

  const GrantAccessInputRightsEnum._(String name): super(name);

  static BuiltSet<GrantAccessInputRightsEnum> get values => _$grantAccessInputRightsEnumValues;
  static GrantAccessInputRightsEnum valueOf(String name) => _$grantAccessInputRightsEnumValueOf(name);
}

