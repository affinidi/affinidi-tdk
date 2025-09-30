//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'aws_exchange_credentials.g.dart';

/// AwsExchangeCredentials
///
/// Properties:
/// * [assertion] - A valid JSON Web Token (JWT) that secures the WebSocket connection. The JWT is signed with the key pair's private key used to create the Personal Access Token (PAT).
@BuiltValue()
abstract class AwsExchangeCredentials
    implements Built<AwsExchangeCredentials, AwsExchangeCredentialsBuilder> {
  /// A valid JSON Web Token (JWT) that secures the WebSocket connection. The JWT is signed with the key pair's private key used to create the Personal Access Token (PAT).
  @BuiltValueField(wireName: r'assertion')
  String get assertion;

  AwsExchangeCredentials._();

  factory AwsExchangeCredentials(
          [void updates(AwsExchangeCredentialsBuilder b)]) =
      _$AwsExchangeCredentials;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AwsExchangeCredentialsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AwsExchangeCredentials> get serializer =>
      _$AwsExchangeCredentialsSerializer();
}

class _$AwsExchangeCredentialsSerializer
    implements PrimitiveSerializer<AwsExchangeCredentials> {
  @override
  final Iterable<Type> types = const [
    AwsExchangeCredentials,
    _$AwsExchangeCredentials
  ];

  @override
  final String wireName = r'AwsExchangeCredentials';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AwsExchangeCredentials object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'assertion';
    yield serializers.serialize(
      object.assertion,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AwsExchangeCredentials object, {
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
    required AwsExchangeCredentialsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'assertion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.assertion = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AwsExchangeCredentials deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AwsExchangeCredentialsBuilder();
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
