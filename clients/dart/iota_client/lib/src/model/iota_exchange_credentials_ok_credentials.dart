//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'iota_exchange_credentials_ok_credentials.g.dart';

/// IotaExchangeCredentialsOKCredentials
///
/// Properties:
/// * [accessKeyId]
/// * [secretKey]
/// * [sessionToken]
/// * [expiration]
@BuiltValue()
abstract class IotaExchangeCredentialsOKCredentials
    implements
        Built<IotaExchangeCredentialsOKCredentials,
            IotaExchangeCredentialsOKCredentialsBuilder> {
  @BuiltValueField(wireName: r'accessKeyId')
  String get accessKeyId;

  @BuiltValueField(wireName: r'secretKey')
  String get secretKey;

  @BuiltValueField(wireName: r'sessionToken')
  String get sessionToken;

  @BuiltValueField(wireName: r'expiration')
  String get expiration;

  IotaExchangeCredentialsOKCredentials._();

  factory IotaExchangeCredentialsOKCredentials(
          [void updates(IotaExchangeCredentialsOKCredentialsBuilder b)]) =
      _$IotaExchangeCredentialsOKCredentials;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IotaExchangeCredentialsOKCredentialsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IotaExchangeCredentialsOKCredentials> get serializer =>
      _$IotaExchangeCredentialsOKCredentialsSerializer();
}

class _$IotaExchangeCredentialsOKCredentialsSerializer
    implements PrimitiveSerializer<IotaExchangeCredentialsOKCredentials> {
  @override
  final Iterable<Type> types = const [
    IotaExchangeCredentialsOKCredentials,
    _$IotaExchangeCredentialsOKCredentials
  ];

  @override
  final String wireName = r'IotaExchangeCredentialsOKCredentials';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IotaExchangeCredentialsOKCredentials object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'accessKeyId';
    yield serializers.serialize(
      object.accessKeyId,
      specifiedType: const FullType(String),
    );
    yield r'secretKey';
    yield serializers.serialize(
      object.secretKey,
      specifiedType: const FullType(String),
    );
    yield r'sessionToken';
    yield serializers.serialize(
      object.sessionToken,
      specifiedType: const FullType(String),
    );
    yield r'expiration';
    yield serializers.serialize(
      object.expiration,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IotaExchangeCredentialsOKCredentials object, {
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
    required IotaExchangeCredentialsOKCredentialsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accessKeyId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accessKeyId = valueDes;
          break;
        case r'secretKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.secretKey = valueDes;
          break;
        case r'sessionToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sessionToken = valueDes;
          break;
        case r'expiration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expiration = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IotaExchangeCredentialsOKCredentials deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IotaExchangeCredentialsOKCredentialsBuilder();
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
