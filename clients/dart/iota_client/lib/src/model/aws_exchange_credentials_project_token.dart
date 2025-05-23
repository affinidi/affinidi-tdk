//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'aws_exchange_credentials_project_token.g.dart';

/// AwsExchangeCredentialsProjectToken
///
/// Properties:
/// * [sessionId] - ID of the session generated by a client.
/// * [configurationId] - ID of the Affinidi Iota Framework configuration.
/// * [did] - The Decentalised Identifier (DID) of the user.
@BuiltValue()
abstract class AwsExchangeCredentialsProjectToken implements Built<AwsExchangeCredentialsProjectToken, AwsExchangeCredentialsProjectTokenBuilder> {
  /// ID of the session generated by a client.
  @BuiltValueField(wireName: r'sessionId')
  String get sessionId;

  /// ID of the Affinidi Iota Framework configuration.
  @BuiltValueField(wireName: r'configurationId')
  String get configurationId;

  /// The Decentalised Identifier (DID) of the user.
  @BuiltValueField(wireName: r'did')
  String get did;

  AwsExchangeCredentialsProjectToken._();

  factory AwsExchangeCredentialsProjectToken([void updates(AwsExchangeCredentialsProjectTokenBuilder b)]) = _$AwsExchangeCredentialsProjectToken;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AwsExchangeCredentialsProjectTokenBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AwsExchangeCredentialsProjectToken> get serializer => _$AwsExchangeCredentialsProjectTokenSerializer();
}

class _$AwsExchangeCredentialsProjectTokenSerializer implements PrimitiveSerializer<AwsExchangeCredentialsProjectToken> {
  @override
  final Iterable<Type> types = const [AwsExchangeCredentialsProjectToken, _$AwsExchangeCredentialsProjectToken];

  @override
  final String wireName = r'AwsExchangeCredentialsProjectToken';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AwsExchangeCredentialsProjectToken object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sessionId';
    yield serializers.serialize(
      object.sessionId,
      specifiedType: const FullType(String),
    );
    yield r'configurationId';
    yield serializers.serialize(
      object.configurationId,
      specifiedType: const FullType(String),
    );
    yield r'did';
    yield serializers.serialize(
      object.did,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AwsExchangeCredentialsProjectToken object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AwsExchangeCredentialsProjectTokenBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sessionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sessionId = valueDes;
          break;
        case r'configurationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.configurationId = valueDes;
          break;
        case r'did':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.did = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AwsExchangeCredentialsProjectToken deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AwsExchangeCredentialsProjectTokenBuilder();
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

