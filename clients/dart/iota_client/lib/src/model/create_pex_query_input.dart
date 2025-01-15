//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_pex_query_input.g.dart';

/// CreatePexQueryInput
///
/// Properties:
/// * [name] - The name of the presentation definition to quickly identify the query.
/// * [vpDefinition] - The presentation definition describing the data requirement that must be satisfied by the user. The value is in a JSON stringify format.
/// * [description] - An optional description of what the query is used for.
@BuiltValue()
abstract class CreatePexQueryInput implements Built<CreatePexQueryInput, CreatePexQueryInputBuilder> {
  /// The name of the presentation definition to quickly identify the query.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// The presentation definition describing the data requirement that must be satisfied by the user. The value is in a JSON stringify format.
  @BuiltValueField(wireName: r'vpDefinition')
  String get vpDefinition;

  /// An optional description of what the query is used for.
  @BuiltValueField(wireName: r'description')
  String? get description;

  CreatePexQueryInput._();

  factory CreatePexQueryInput([void updates(CreatePexQueryInputBuilder b)]) = _$CreatePexQueryInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreatePexQueryInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreatePexQueryInput> get serializer => _$CreatePexQueryInputSerializer();
}

class _$CreatePexQueryInputSerializer implements PrimitiveSerializer<CreatePexQueryInput> {
  @override
  final Iterable<Type> types = const [CreatePexQueryInput, _$CreatePexQueryInput];

  @override
  final String wireName = r'CreatePexQueryInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreatePexQueryInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'vpDefinition';
    yield serializers.serialize(
      object.vpDefinition,
      specifiedType: const FullType(String),
    );
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
    CreatePexQueryInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreatePexQueryInputBuilder result,
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
        case r'vpDefinition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.vpDefinition = valueDes;
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
  CreatePexQueryInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatePexQueryInputBuilder();
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

