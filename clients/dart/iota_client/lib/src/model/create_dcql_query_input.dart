//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_dcql_query_input.g.dart';

/// CreateDcqlQueryInput
///
/// Properties:
/// * [name] - The name of the DCQL query to quickly identify the query.
/// * [dcqlQuery] - The DCQL query describing the data requirement that must be satisfied by the user. The value is in a JSON stringify format.
/// * [description] - An optional description of what the query is used for.
@BuiltValue()
abstract class CreateDcqlQueryInput implements Built<CreateDcqlQueryInput, CreateDcqlQueryInputBuilder> {
  /// The name of the DCQL query to quickly identify the query.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// The DCQL query describing the data requirement that must be satisfied by the user. The value is in a JSON stringify format.
  @BuiltValueField(wireName: r'dcqlQuery')
  String get dcqlQuery;

  /// An optional description of what the query is used for.
  @BuiltValueField(wireName: r'description')
  String? get description;

  CreateDcqlQueryInput._();

  factory CreateDcqlQueryInput([void updates(CreateDcqlQueryInputBuilder b)]) = _$CreateDcqlQueryInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateDcqlQueryInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateDcqlQueryInput> get serializer => _$CreateDcqlQueryInputSerializer();
}

class _$CreateDcqlQueryInputSerializer implements PrimitiveSerializer<CreateDcqlQueryInput> {
  @override
  final Iterable<Type> types = const [CreateDcqlQueryInput, _$CreateDcqlQueryInput];

  @override
  final String wireName = r'CreateDcqlQueryInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateDcqlQueryInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'dcqlQuery';
    yield serializers.serialize(
      object.dcqlQuery,
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
    CreateDcqlQueryInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateDcqlQueryInputBuilder result,
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
        case r'dcqlQuery':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dcqlQuery = valueDes;
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
  CreateDcqlQueryInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateDcqlQueryInputBuilder();
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

