//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'grant_access_input.g.dart';

/// GrantAccessInput
///
/// Properties:
/// * [granteeDid] - DID of the subject being granted access
/// * [rights] - List of rights to grant to the subject
@BuiltValue()
abstract class GrantAccessInput implements Built<GrantAccessInput, GrantAccessInputBuilder> {
  /// DID of the subject being granted access
  @BuiltValueField(wireName: r'granteeDid')
  String get granteeDid;

  /// List of rights to grant to the subject
  @BuiltValueField(wireName: r'rights')
  BuiltList<UpdateAccessInputRightsEnum> get rights;
  // enum rightsEnum {  vfs-read,  vfs-write,  };

  GrantAccessInput._();

  factory GrantAccessInput([void updates(GrantAccessInputBuilder b)]) = _$GrantAccessInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GrantAccessInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GrantAccessInput> get serializer => _$GrantAccessInputSerializer();
}

class _$GrantAccessInputSerializer implements PrimitiveSerializer<GrantAccessInput> {
  @override
  final Iterable<Type> types = const [GrantAccessInput, _$GrantAccessInput];

  @override
  final String wireName = r'GrantAccessInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GrantAccessInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'granteeDid';
    yield serializers.serialize(
      object.granteeDid,
      specifiedType: const FullType(String),
    );
    yield r'rights';
    yield serializers.serialize(
      object.rights,
      specifiedType: const FullType(BuiltList, [FullType(UpdateAccessInputRightsEnum)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GrantAccessInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GrantAccessInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'granteeDid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.granteeDid = valueDes;
          break;
        case r'rights':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(UpdateAccessInputRightsEnum)]),
          ) as BuiltList<UpdateAccessInputRightsEnum>;
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
  GrantAccessInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GrantAccessInputBuilder();
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

class UpdateAccessInputRightsEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'vfs-read')
  static const UpdateAccessInputRightsEnum read = _$updateAccessInputRightsEnum_read;
  @BuiltValueEnumConst(wireName: r'vfs-write')
  static const UpdateAccessInputRightsEnum write = _$updateAccessInputRightsEnum_write;

  static Serializer<UpdateAccessInputRightsEnum> get serializer => _$updateAccessInputRightsEnumSerializer;

  const UpdateAccessInputRightsEnum._(String name): super(name);

  static BuiltSet<UpdateAccessInputRightsEnum> get values => _$updateAccessInputRightsEnumValues;
  static UpdateAccessInputRightsEnum valueOf(String name) => _$updateAccessInputRightsEnumValueOf(name);
}

