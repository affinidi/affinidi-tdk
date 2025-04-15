//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_access_input.g.dart';

/// UpdateAccessInput
///
/// Properties:
/// * [rights] - List of rights to grant to the subject
@BuiltValue()
abstract class UpdateAccessInput implements Built<UpdateAccessInput, UpdateAccessInputBuilder> {
  /// List of rights to grant to the subject
  @BuiltValueField(wireName: r'rights')
  BuiltList<UpdateAccessInputRightsEnum> get rights;
  // enum rightsEnum {  vfs-read,  vfs-write,  };

  UpdateAccessInput._();

  factory UpdateAccessInput([void updates(UpdateAccessInputBuilder b)]) = _$UpdateAccessInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateAccessInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateAccessInput> get serializer => _$UpdateAccessInputSerializer();
}

class _$UpdateAccessInputSerializer implements PrimitiveSerializer<UpdateAccessInput> {
  @override
  final Iterable<Type> types = const [UpdateAccessInput, _$UpdateAccessInput];

  @override
  final String wireName = r'UpdateAccessInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateAccessInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'rights';
    yield serializers.serialize(
      object.rights,
      specifiedType: const FullType(BuiltList, [FullType(UpdateAccessInputRightsEnum)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateAccessInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateAccessInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  UpdateAccessInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateAccessInputBuilder();
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

