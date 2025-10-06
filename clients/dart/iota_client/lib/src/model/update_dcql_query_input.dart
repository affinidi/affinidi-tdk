//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_dcql_query_input.g.dart';

/// UpdateDcqlQueryInput
///
/// Properties:
/// * [dcqlQuery] - The DCQL query describing the data requirement that must be satisfied by the user. The value is in a JSON stringify format.
/// * [description] - An optional description of what the query is used for.
@BuiltValue()
abstract class UpdateDcqlQueryInput
    implements Built<UpdateDcqlQueryInput, UpdateDcqlQueryInputBuilder> {
  /// The DCQL query describing the data requirement that must be satisfied by the user. The value is in a JSON stringify format.
  @BuiltValueField(wireName: r'dcqlQuery')
  String? get dcqlQuery;

  /// An optional description of what the query is used for.
  @BuiltValueField(wireName: r'description')
  String? get description;

  UpdateDcqlQueryInput._();

  factory UpdateDcqlQueryInput([void updates(UpdateDcqlQueryInputBuilder b)]) =
      _$UpdateDcqlQueryInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateDcqlQueryInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateDcqlQueryInput> get serializer =>
      _$UpdateDcqlQueryInputSerializer();
}

class _$UpdateDcqlQueryInputSerializer
    implements PrimitiveSerializer<UpdateDcqlQueryInput> {
  @override
  final Iterable<Type> types = const [
    UpdateDcqlQueryInput,
    _$UpdateDcqlQueryInput
  ];

  @override
  final String wireName = r'UpdateDcqlQueryInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateDcqlQueryInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.dcqlQuery != null) {
      yield r'dcqlQuery';
      yield serializers.serialize(
        object.dcqlQuery,
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
    UpdateDcqlQueryInput object, {
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
    required UpdateDcqlQueryInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  UpdateDcqlQueryInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateDcqlQueryInputBuilder();
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
