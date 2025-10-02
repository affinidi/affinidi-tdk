//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_aws_credential_exchange_ok.g.dart';

/// CorsAwsCredentialExchangeOK
///
/// Properties:
/// * [corsAwsCredentialExchangeOk]
@BuiltValue()
abstract class CorsAwsCredentialExchangeOK
    implements
        Built<CorsAwsCredentialExchangeOK, CorsAwsCredentialExchangeOKBuilder> {
  @BuiltValueField(wireName: r'corsAwsCredentialExchangeOk')
  String? get corsAwsCredentialExchangeOk;

  CorsAwsCredentialExchangeOK._();

  factory CorsAwsCredentialExchangeOK(
          [void updates(CorsAwsCredentialExchangeOKBuilder b)]) =
      _$CorsAwsCredentialExchangeOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsAwsCredentialExchangeOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsAwsCredentialExchangeOK> get serializer =>
      _$CorsAwsCredentialExchangeOKSerializer();
}

class _$CorsAwsCredentialExchangeOKSerializer
    implements PrimitiveSerializer<CorsAwsCredentialExchangeOK> {
  @override
  final Iterable<Type> types = const [
    CorsAwsCredentialExchangeOK,
    _$CorsAwsCredentialExchangeOK
  ];

  @override
  final String wireName = r'CorsAwsCredentialExchangeOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsAwsCredentialExchangeOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsAwsCredentialExchangeOk != null) {
      yield r'corsAwsCredentialExchangeOk';
      yield serializers.serialize(
        object.corsAwsCredentialExchangeOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsAwsCredentialExchangeOK object, {
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
    required CorsAwsCredentialExchangeOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsAwsCredentialExchangeOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsAwsCredentialExchangeOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsAwsCredentialExchangeOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsAwsCredentialExchangeOKBuilder();
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
