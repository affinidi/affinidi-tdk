//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'w3c_credential_credential_schema.g.dart';

/// W3cCredentialCredentialSchema
///
/// Properties:
/// * [id] 
/// * [type] 
@BuiltValue()
abstract class W3cCredentialCredentialSchema implements Built<W3cCredentialCredentialSchema, W3cCredentialCredentialSchemaBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'type')
  String? get type;

  W3cCredentialCredentialSchema._();

  factory W3cCredentialCredentialSchema([void updates(W3cCredentialCredentialSchemaBuilder b)]) = _$W3cCredentialCredentialSchema;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(W3cCredentialCredentialSchemaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<W3cCredentialCredentialSchema> get serializer => _$W3cCredentialCredentialSchemaSerializer();
}

class _$W3cCredentialCredentialSchemaSerializer implements PrimitiveSerializer<W3cCredentialCredentialSchema> {
  @override
  final Iterable<Type> types = const [W3cCredentialCredentialSchema, _$W3cCredentialCredentialSchema];

  @override
  final String wireName = r'W3cCredentialCredentialSchema';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    W3cCredentialCredentialSchema object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    W3cCredentialCredentialSchema object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required W3cCredentialCredentialSchemaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  W3cCredentialCredentialSchema deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = W3cCredentialCredentialSchemaBuilder();
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

