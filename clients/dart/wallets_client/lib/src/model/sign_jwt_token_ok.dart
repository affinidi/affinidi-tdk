//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_jwt_token_ok.g.dart';

/// SignJwtTokenOK
///
/// Properties:
/// * [signedJwt]
@BuiltValue()
abstract class SignJwtTokenOK
    implements Built<SignJwtTokenOK, SignJwtTokenOKBuilder> {
  @BuiltValueField(wireName: r'signedJwt')
  String? get signedJwt;

  SignJwtTokenOK._();

  factory SignJwtTokenOK([void updates(SignJwtTokenOKBuilder b)]) =
      _$SignJwtTokenOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignJwtTokenOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignJwtTokenOK> get serializer =>
      _$SignJwtTokenOKSerializer();
}

class _$SignJwtTokenOKSerializer
    implements PrimitiveSerializer<SignJwtTokenOK> {
  @override
  final Iterable<Type> types = const [SignJwtTokenOK, _$SignJwtTokenOK];

  @override
  final String wireName = r'SignJwtTokenOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignJwtTokenOK object, {
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
    SignJwtTokenOK object, {
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
    required SignJwtTokenOKBuilder result,
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
  SignJwtTokenOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignJwtTokenOKBuilder();
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
