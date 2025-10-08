//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'remove_user_from_group_input.g.dart';

/// input used to remove a user from a group
///
/// Properties:
/// * [userId] - Unique identifier of the user
@BuiltValue()
abstract class RemoveUserFromGroupInput
    implements
        Built<RemoveUserFromGroupInput, RemoveUserFromGroupInputBuilder> {
  /// Unique identifier of the user
  @BuiltValueField(wireName: r'userId')
  String get userId;

  RemoveUserFromGroupInput._();

  factory RemoveUserFromGroupInput(
          [void updates(RemoveUserFromGroupInputBuilder b)]) =
      _$RemoveUserFromGroupInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RemoveUserFromGroupInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RemoveUserFromGroupInput> get serializer =>
      _$RemoveUserFromGroupInputSerializer();
}

class _$RemoveUserFromGroupInputSerializer
    implements PrimitiveSerializer<RemoveUserFromGroupInput> {
  @override
  final Iterable<Type> types = const [
    RemoveUserFromGroupInput,
    _$RemoveUserFromGroupInput
  ];

  @override
  final String wireName = r'RemoveUserFromGroupInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RemoveUserFromGroupInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'userId';
    yield serializers.serialize(
      object.userId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RemoveUserFromGroupInput object, {
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
    required RemoveUserFromGroupInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RemoveUserFromGroupInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RemoveUserFromGroupInputBuilder();
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
