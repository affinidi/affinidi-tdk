//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'typed_principal_id.g.dart';

/// TypedPrincipalId
///
/// Properties:
/// * [principalId]
@BuiltValue()
abstract class TypedPrincipalId
    implements Built<TypedPrincipalId, TypedPrincipalIdBuilder> {
  @BuiltValueField(wireName: r'principalId')
  String get principalId;

  TypedPrincipalId._();

  factory TypedPrincipalId([void updates(TypedPrincipalIdBuilder b)]) =
      _$TypedPrincipalId;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TypedPrincipalIdBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TypedPrincipalId> get serializer =>
      _$TypedPrincipalIdSerializer();
}

class _$TypedPrincipalIdSerializer
    implements PrimitiveSerializer<TypedPrincipalId> {
  @override
  final Iterable<Type> types = const [TypedPrincipalId, _$TypedPrincipalId];

  @override
  final String wireName = r'TypedPrincipalId';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TypedPrincipalId object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'principalId';
    yield serializers.serialize(
      object.principalId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TypedPrincipalId object, {
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
    required TypedPrincipalIdBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TypedPrincipalId deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TypedPrincipalIdBuilder();
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
