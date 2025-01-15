//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_user_to_group_input.g.dart';

/// input used to add a user to a group
///
/// Properties:
/// * [name] 
/// * [description] 
/// * [userId] - Unique identifier of the user
@BuiltValue()
abstract class AddUserToGroupInput implements Built<AddUserToGroupInput, AddUserToGroupInputBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Unique identifier of the user
  @BuiltValueField(wireName: r'userId')
  String get userId;

  AddUserToGroupInput._();

  factory AddUserToGroupInput([void updates(AddUserToGroupInputBuilder b)]) = _$AddUserToGroupInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddUserToGroupInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AddUserToGroupInput> get serializer => _$AddUserToGroupInputSerializer();
}

class _$AddUserToGroupInputSerializer implements PrimitiveSerializer<AddUserToGroupInput> {
  @override
  final Iterable<Type> types = const [AddUserToGroupInput, _$AddUserToGroupInput];

  @override
  final String wireName = r'AddUserToGroupInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AddUserToGroupInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
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
    yield r'userId';
    yield serializers.serialize(
      object.userId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AddUserToGroupInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AddUserToGroupInputBuilder result,
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
  AddUserToGroupInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddUserToGroupInputBuilder();
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

