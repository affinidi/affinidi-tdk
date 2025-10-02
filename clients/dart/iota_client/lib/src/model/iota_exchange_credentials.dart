//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'iota_exchange_credentials.g.dart';

/// IotaExchangeCredentials
///
/// Properties:
/// * [assertion] - A valid JSON Web Token (JWT) that secures the WebSocket connection. The JWT is signed with the key pair's private key used to create the Personal Access Token (PAT).
@BuiltValue()
abstract class IotaExchangeCredentials
    implements Built<IotaExchangeCredentials, IotaExchangeCredentialsBuilder> {
  /// A valid JSON Web Token (JWT) that secures the WebSocket connection. The JWT is signed with the key pair's private key used to create the Personal Access Token (PAT).
  @BuiltValueField(wireName: r'assertion')
  String get assertion;

  IotaExchangeCredentials._();

  factory IotaExchangeCredentials(
          [void updates(IotaExchangeCredentialsBuilder b)]) =
      _$IotaExchangeCredentials;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IotaExchangeCredentialsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IotaExchangeCredentials> get serializer =>
      _$IotaExchangeCredentialsSerializer();
}

class _$IotaExchangeCredentialsSerializer
    implements PrimitiveSerializer<IotaExchangeCredentials> {
  @override
  final Iterable<Type> types = const [
    IotaExchangeCredentials,
    _$IotaExchangeCredentials
  ];

  @override
  final String wireName = r'IotaExchangeCredentials';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IotaExchangeCredentials object, {
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
    IotaExchangeCredentials object, {
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
    required IotaExchangeCredentialsBuilder result,
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
  IotaExchangeCredentials deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IotaExchangeCredentialsBuilder();
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
