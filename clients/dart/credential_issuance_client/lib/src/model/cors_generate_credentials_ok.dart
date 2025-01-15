//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_generate_credentials_ok.g.dart';

/// CorsGenerateCredentialsOK
///
/// Properties:
/// * [corsGenerateCredentialsOk] 
@BuiltValue()
abstract class CorsGenerateCredentialsOK implements Built<CorsGenerateCredentialsOK, CorsGenerateCredentialsOKBuilder> {
  @BuiltValueField(wireName: r'corsGenerateCredentialsOk')
  String? get corsGenerateCredentialsOk;

  CorsGenerateCredentialsOK._();

  factory CorsGenerateCredentialsOK([void updates(CorsGenerateCredentialsOKBuilder b)]) = _$CorsGenerateCredentialsOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsGenerateCredentialsOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsGenerateCredentialsOK> get serializer => _$CorsGenerateCredentialsOKSerializer();
}

class _$CorsGenerateCredentialsOKSerializer implements PrimitiveSerializer<CorsGenerateCredentialsOK> {
  @override
  final Iterable<Type> types = const [CorsGenerateCredentialsOK, _$CorsGenerateCredentialsOK];

  @override
  final String wireName = r'CorsGenerateCredentialsOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsGenerateCredentialsOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsGenerateCredentialsOk != null) {
      yield r'corsGenerateCredentialsOk';
      yield serializers.serialize(
        object.corsGenerateCredentialsOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsGenerateCredentialsOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CorsGenerateCredentialsOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsGenerateCredentialsOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsGenerateCredentialsOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsGenerateCredentialsOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsGenerateCredentialsOKBuilder();
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

