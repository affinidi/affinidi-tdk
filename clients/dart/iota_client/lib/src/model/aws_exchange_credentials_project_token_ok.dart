//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_iota_client/src/model/aws_exchange_credentials_project_token_ok_credentials.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'aws_exchange_credentials_project_token_ok.g.dart';

/// AwsExchangeCredentialsProjectTokenOK
///
/// Properties:
/// * [connectionClientId] 
/// * [credentials] 
@BuiltValue()
abstract class AwsExchangeCredentialsProjectTokenOK implements Built<AwsExchangeCredentialsProjectTokenOK, AwsExchangeCredentialsProjectTokenOKBuilder> {
  @BuiltValueField(wireName: r'connectionClientId')
  String get connectionClientId;

  @BuiltValueField(wireName: r'credentials')
  AwsExchangeCredentialsProjectTokenOKCredentials get credentials;

  AwsExchangeCredentialsProjectTokenOK._();

  factory AwsExchangeCredentialsProjectTokenOK([void updates(AwsExchangeCredentialsProjectTokenOKBuilder b)]) = _$AwsExchangeCredentialsProjectTokenOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AwsExchangeCredentialsProjectTokenOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AwsExchangeCredentialsProjectTokenOK> get serializer => _$AwsExchangeCredentialsProjectTokenOKSerializer();
}

class _$AwsExchangeCredentialsProjectTokenOKSerializer implements PrimitiveSerializer<AwsExchangeCredentialsProjectTokenOK> {
  @override
  final Iterable<Type> types = const [AwsExchangeCredentialsProjectTokenOK, _$AwsExchangeCredentialsProjectTokenOK];

  @override
  final String wireName = r'AwsExchangeCredentialsProjectTokenOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AwsExchangeCredentialsProjectTokenOK object, {
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
      specifiedType: const FullType(AwsExchangeCredentialsProjectTokenOKCredentials),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AwsExchangeCredentialsProjectTokenOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AwsExchangeCredentialsProjectTokenOKBuilder result,
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
            specifiedType: const FullType(AwsExchangeCredentialsProjectTokenOKCredentials),
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
  AwsExchangeCredentialsProjectTokenOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AwsExchangeCredentialsProjectTokenOKBuilder();
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

