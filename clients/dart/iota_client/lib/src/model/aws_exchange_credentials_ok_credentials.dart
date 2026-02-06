//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'aws_exchange_credentials_ok_credentials.g.dart';

/// AwsExchangeCredentialsOKCredentials
///
/// Properties:
/// * [identityId]
/// * [token]
@BuiltValue()
abstract class AwsExchangeCredentialsOKCredentials
    implements
        Built<AwsExchangeCredentialsOKCredentials,
            AwsExchangeCredentialsOKCredentialsBuilder> {
  @BuiltValueField(wireName: r'identityId')
  String get identityId;

  @BuiltValueField(wireName: r'token')
  String get token;

  AwsExchangeCredentialsOKCredentials._();

  factory AwsExchangeCredentialsOKCredentials(
          [void updates(AwsExchangeCredentialsOKCredentialsBuilder b)]) =
      _$AwsExchangeCredentialsOKCredentials;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AwsExchangeCredentialsOKCredentialsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AwsExchangeCredentialsOKCredentials> get serializer =>
      _$AwsExchangeCredentialsOKCredentialsSerializer();
}

class _$AwsExchangeCredentialsOKCredentialsSerializer
    implements PrimitiveSerializer<AwsExchangeCredentialsOKCredentials> {
  @override
  final Iterable<Type> types = const [
    AwsExchangeCredentialsOKCredentials,
    _$AwsExchangeCredentialsOKCredentials
  ];

  @override
  final String wireName = r'AwsExchangeCredentialsOKCredentials';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AwsExchangeCredentialsOKCredentials object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'identityId';
    yield serializers.serialize(
      object.identityId,
      specifiedType: const FullType(String),
    );
    yield r'token';
    yield serializers.serialize(
      object.token,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AwsExchangeCredentialsOKCredentials object, {
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
    required AwsExchangeCredentialsOKCredentialsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'identityId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.identityId = valueDes;
          break;
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.token = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AwsExchangeCredentialsOKCredentials deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AwsExchangeCredentialsOKCredentialsBuilder();
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
