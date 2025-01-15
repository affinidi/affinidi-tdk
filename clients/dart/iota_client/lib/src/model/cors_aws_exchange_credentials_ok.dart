//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_aws_exchange_credentials_ok.g.dart';

/// CorsAwsExchangeCredentialsOK
///
/// Properties:
/// * [corsAwsExchangeCredentialsOk] 
@BuiltValue()
abstract class CorsAwsExchangeCredentialsOK implements Built<CorsAwsExchangeCredentialsOK, CorsAwsExchangeCredentialsOKBuilder> {
  @BuiltValueField(wireName: r'corsAwsExchangeCredentialsOk')
  String? get corsAwsExchangeCredentialsOk;

  CorsAwsExchangeCredentialsOK._();

  factory CorsAwsExchangeCredentialsOK([void updates(CorsAwsExchangeCredentialsOKBuilder b)]) = _$CorsAwsExchangeCredentialsOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsAwsExchangeCredentialsOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsAwsExchangeCredentialsOK> get serializer => _$CorsAwsExchangeCredentialsOKSerializer();
}

class _$CorsAwsExchangeCredentialsOKSerializer implements PrimitiveSerializer<CorsAwsExchangeCredentialsOK> {
  @override
  final Iterable<Type> types = const [CorsAwsExchangeCredentialsOK, _$CorsAwsExchangeCredentialsOK];

  @override
  final String wireName = r'CorsAwsExchangeCredentialsOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsAwsExchangeCredentialsOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsAwsExchangeCredentialsOk != null) {
      yield r'corsAwsExchangeCredentialsOk';
      yield serializers.serialize(
        object.corsAwsExchangeCredentialsOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsAwsExchangeCredentialsOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CorsAwsExchangeCredentialsOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsAwsExchangeCredentialsOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsAwsExchangeCredentialsOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsAwsExchangeCredentialsOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsAwsExchangeCredentialsOKBuilder();
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

