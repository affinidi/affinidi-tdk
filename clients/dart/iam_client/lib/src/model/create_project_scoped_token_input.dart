//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_project_scoped_token_input.g.dart';

/// CreateProjectScopedTokenInput
///
/// Properties:
/// * [projectId]
@BuiltValue()
abstract class CreateProjectScopedTokenInput
    implements
        Built<CreateProjectScopedTokenInput,
            CreateProjectScopedTokenInputBuilder> {
  @BuiltValueField(wireName: r'projectId')
  String get projectId;

  CreateProjectScopedTokenInput._();

  factory CreateProjectScopedTokenInput(
          [void updates(CreateProjectScopedTokenInputBuilder b)]) =
      _$CreateProjectScopedTokenInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateProjectScopedTokenInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateProjectScopedTokenInput> get serializer =>
      _$CreateProjectScopedTokenInputSerializer();
}

class _$CreateProjectScopedTokenInputSerializer
    implements PrimitiveSerializer<CreateProjectScopedTokenInput> {
  @override
  final Iterable<Type> types = const [
    CreateProjectScopedTokenInput,
    _$CreateProjectScopedTokenInput
  ];

  @override
  final String wireName = r'CreateProjectScopedTokenInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateProjectScopedTokenInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'projectId';
    yield serializers.serialize(
      object.projectId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateProjectScopedTokenInput object, {
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
    required CreateProjectScopedTokenInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'projectId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.projectId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateProjectScopedTokenInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateProjectScopedTokenInputBuilder();
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
