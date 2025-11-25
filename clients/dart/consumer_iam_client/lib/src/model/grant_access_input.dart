//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_consumer_iam_client/src/model/permission.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'grant_access_input.g.dart';

/// GrantAccessInput
///
/// Properties:
/// * [permissions] - List of permissions
@BuiltValue()
abstract class GrantAccessInput
    implements Built<GrantAccessInput, GrantAccessInputBuilder> {
  /// List of permissions
  @BuiltValueField(wireName: r'permissions')
  BuiltList<Permission> get permissions;

  GrantAccessInput._();

  factory GrantAccessInput([void updates(GrantAccessInputBuilder b)]) =
      _$GrantAccessInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GrantAccessInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GrantAccessInput> get serializer =>
      _$GrantAccessInputSerializer();
}

class _$GrantAccessInputSerializer
    implements PrimitiveSerializer<GrantAccessInput> {
  @override
  final Iterable<Type> types = const [GrantAccessInput, _$GrantAccessInput];

  @override
  final String wireName = r'GrantAccessInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GrantAccessInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'permissions';
    yield serializers.serialize(
      object.permissions,
      specifiedType: const FullType(BuiltList, [FullType(Permission)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GrantAccessInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
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
        case r'permissions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Permission)]),
          ) as BuiltList<Permission>;
          result.permissions.replace(valueDes);
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
