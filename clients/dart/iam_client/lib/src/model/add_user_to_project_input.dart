//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_user_to_project_input.g.dart';

/// AddUserToProjectInput
///
/// Properties:
/// * [principalId] 
/// * [principalType] 
@BuiltValue()
abstract class AddUserToProjectInput implements Built<AddUserToProjectInput, AddUserToProjectInputBuilder> {
  @BuiltValueField(wireName: r'principalId')
  String get principalId;

  @BuiltValueField(wireName: r'principalType')
  String get principalType;

  AddUserToProjectInput._();

  factory AddUserToProjectInput([void updates(AddUserToProjectInputBuilder b)]) = _$AddUserToProjectInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddUserToProjectInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AddUserToProjectInput> get serializer => _$AddUserToProjectInputSerializer();
}

class _$AddUserToProjectInputSerializer implements PrimitiveSerializer<AddUserToProjectInput> {
  @override
  final Iterable<Type> types = const [AddUserToProjectInput, _$AddUserToProjectInput];

  @override
  final String wireName = r'AddUserToProjectInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AddUserToProjectInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'principalId';
    yield serializers.serialize(
      object.principalId,
      specifiedType: const FullType(String),
    );
    yield r'principalType';
    yield serializers.serialize(
      object.principalType,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AddUserToProjectInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AddUserToProjectInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'principalId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.principalId = valueDes;
          break;
        case r'principalType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.principalType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AddUserToProjectInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddUserToProjectInputBuilder();
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

