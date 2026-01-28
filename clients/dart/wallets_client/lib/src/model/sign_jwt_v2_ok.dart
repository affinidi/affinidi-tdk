//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_jwt_v2_ok.g.dart';

/// SignJwtV2OK
///
/// Properties:
/// * [signedJwt]
@BuiltValue()
abstract class SignJwtV2OK implements Built<SignJwtV2OK, SignJwtV2OKBuilder> {
  @BuiltValueField(wireName: r'signedJwt')
  String? get signedJwt;

  SignJwtV2OK._();

  factory SignJwtV2OK([void updates(SignJwtV2OKBuilder b)]) = _$SignJwtV2OK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignJwtV2OKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignJwtV2OK> get serializer => _$SignJwtV2OKSerializer();
}

class _$SignJwtV2OKSerializer implements PrimitiveSerializer<SignJwtV2OK> {
  @override
  final Iterable<Type> types = const [SignJwtV2OK, _$SignJwtV2OK];

  @override
  final String wireName = r'SignJwtV2OK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignJwtV2OK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.signedJwt != null) {
      yield r'signedJwt';
      yield serializers.serialize(
        object.signedJwt,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SignJwtV2OK object, {
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
    required SignJwtV2OKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'signedJwt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.signedJwt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SignJwtV2OK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignJwtV2OKBuilder();
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
