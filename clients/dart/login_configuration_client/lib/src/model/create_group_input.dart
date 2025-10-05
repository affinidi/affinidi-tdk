//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_group_input.g.dart';

/// CreateGroupInput
///
/// Properties:
/// * [groupName] - name of the group for users, used as an id
/// * [name]
/// * [description]
@BuiltValue()
abstract class CreateGroupInput
    implements Built<CreateGroupInput, CreateGroupInputBuilder> {
  /// name of the group for users, used as an id
  @BuiltValueField(wireName: r'groupName')
  String get groupName;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  CreateGroupInput._();

  factory CreateGroupInput([void updates(CreateGroupInputBuilder b)]) =
      _$CreateGroupInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateGroupInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateGroupInput> get serializer =>
      _$CreateGroupInputSerializer();
}

class _$CreateGroupInputSerializer
    implements PrimitiveSerializer<CreateGroupInput> {
  @override
  final Iterable<Type> types = const [CreateGroupInput, _$CreateGroupInput];

  @override
  final String wireName = r'CreateGroupInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateGroupInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'groupName';
    yield serializers.serialize(
      object.groupName,
      specifiedType: const FullType(String),
    );
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
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateGroupInput object, {
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
    required CreateGroupInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'groupName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.groupName = valueDes;
          break;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateGroupInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateGroupInputBuilder();
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
