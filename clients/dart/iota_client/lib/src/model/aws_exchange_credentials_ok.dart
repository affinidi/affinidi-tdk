//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_iota_client/src/model/aws_exchange_credentials_project_token_ok_credentials.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'aws_exchange_credentials_ok.g.dart';

/// AwsExchangeCredentialsOK
///
/// Properties:
/// * [connectionClientId]
/// * [credentials]
@BuiltValue()
abstract class AwsExchangeCredentialsOK
    implements
        Built<AwsExchangeCredentialsOK, AwsExchangeCredentialsOKBuilder> {
  @BuiltValueField(wireName: r'connectionClientId')
  String get connectionClientId;

  @BuiltValueField(wireName: r'credentials')
  AwsExchangeCredentialsProjectTokenOKCredentials get credentials;

  AwsExchangeCredentialsOK._();

  factory AwsExchangeCredentialsOK(
          [void updates(AwsExchangeCredentialsOKBuilder b)]) =
      _$AwsExchangeCredentialsOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AwsExchangeCredentialsOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AwsExchangeCredentialsOK> get serializer =>
      _$AwsExchangeCredentialsOKSerializer();
}

class _$AwsExchangeCredentialsOKSerializer
    implements PrimitiveSerializer<AwsExchangeCredentialsOK> {
  @override
  final Iterable<Type> types = const [
    AwsExchangeCredentialsOK,
    _$AwsExchangeCredentialsOK
  ];

  @override
  final String wireName = r'AwsExchangeCredentialsOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AwsExchangeCredentialsOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'connectionClientId';
    yield serializers.serialize(
      object.connectionClientId,
      specifiedType: const FullType(String),
    );
    yield r'credentials';
    yield serializers.serialize(
      object.credentials,
      specifiedType:
          const FullType(AwsExchangeCredentialsProjectTokenOKCredentials),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AwsExchangeCredentialsOK object, {
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
    required AwsExchangeCredentialsOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'connectionClientId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.connectionClientId = valueDes;
          break;
        case r'credentials':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(AwsExchangeCredentialsProjectTokenOKCredentials),
          ) as AwsExchangeCredentialsProjectTokenOKCredentials;
          result.credentials.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AwsExchangeCredentialsOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AwsExchangeCredentialsOKBuilder();
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
