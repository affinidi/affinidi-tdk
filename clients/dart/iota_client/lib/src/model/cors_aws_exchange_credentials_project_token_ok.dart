//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_aws_exchange_credentials_project_token_ok.g.dart';

/// CorsAwsExchangeCredentialsProjectTokenOK
///
/// Properties:
/// * [corsAwsExchangeCredentialsProjectTokenOk] 
@BuiltValue()
abstract class CorsAwsExchangeCredentialsProjectTokenOK implements Built<CorsAwsExchangeCredentialsProjectTokenOK, CorsAwsExchangeCredentialsProjectTokenOKBuilder> {
  @BuiltValueField(wireName: r'corsAwsExchangeCredentialsProjectTokenOk')
  String? get corsAwsExchangeCredentialsProjectTokenOk;

  CorsAwsExchangeCredentialsProjectTokenOK._();

  factory CorsAwsExchangeCredentialsProjectTokenOK([void updates(CorsAwsExchangeCredentialsProjectTokenOKBuilder b)]) = _$CorsAwsExchangeCredentialsProjectTokenOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsAwsExchangeCredentialsProjectTokenOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsAwsExchangeCredentialsProjectTokenOK> get serializer => _$CorsAwsExchangeCredentialsProjectTokenOKSerializer();
}

class _$CorsAwsExchangeCredentialsProjectTokenOKSerializer implements PrimitiveSerializer<CorsAwsExchangeCredentialsProjectTokenOK> {
  @override
  final Iterable<Type> types = const [CorsAwsExchangeCredentialsProjectTokenOK, _$CorsAwsExchangeCredentialsProjectTokenOK];

  @override
  final String wireName = r'CorsAwsExchangeCredentialsProjectTokenOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsAwsExchangeCredentialsProjectTokenOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsAwsExchangeCredentialsProjectTokenOk != null) {
      yield r'corsAwsExchangeCredentialsProjectTokenOk';
      yield serializers.serialize(
        object.corsAwsExchangeCredentialsProjectTokenOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsAwsExchangeCredentialsProjectTokenOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CorsAwsExchangeCredentialsProjectTokenOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsAwsExchangeCredentialsProjectTokenOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsAwsExchangeCredentialsProjectTokenOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsAwsExchangeCredentialsProjectTokenOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsAwsExchangeCredentialsProjectTokenOKBuilder();
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

