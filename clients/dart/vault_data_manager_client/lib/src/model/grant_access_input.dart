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
/// * [subjectDid] - DID of the consumer to share Nodes hierarchy with
/// * [rights] - types of access to grant
@BuiltValue()
abstract class GrantAccessInput implements Built<GrantAccessInput, GrantAccessInputBuilder> {
  /// DID of the consumer to share Nodes hierarchy with
  @BuiltValueField(wireName: r'subjectDid')
  String get subjectDid;

  /// types of access to grant
  @BuiltValueField(wireName: r'rights')
  BuiltList<GrantAccessInputRightsEnum> get rights;
  // enum rightsEnum {  READ,  WRITE,  };

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
    yield r'subjectDid';
    yield serializers.serialize(
      object.subjectDid,
      specifiedType: const FullType(String),
    );
    yield r'rights';
    yield serializers.serialize(
      object.rights,
      specifiedType: const FullType(BuiltList, [FullType(GrantAccessInputRightsEnum)]),
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

