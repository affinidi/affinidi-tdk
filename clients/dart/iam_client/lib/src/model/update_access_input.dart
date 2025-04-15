//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_iam_client/src/model/vfs_rights_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_access_input.g.dart';

/// UpdateAccessInput
///
/// Properties:
/// * [rights] 
@BuiltValue()
abstract class UpdateAccessInput implements Built<UpdateAccessInput, UpdateAccessInputBuilder> {
  @BuiltValueField(wireName: r'rights')
  VFSRightsEnum get rights;

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
      specifiedType: const FullType(VFSRightsEnum),
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
            specifiedType: const FullType(VFSRightsEnum),
          ) as VFSRightsEnum;
          result.rights = valueDes;
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

