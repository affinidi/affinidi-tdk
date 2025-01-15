//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'aws_exchange_credentials_project_token_ok_credentials.g.dart';

/// AwsExchangeCredentialsProjectTokenOKCredentials
///
/// Properties:
/// * [identityId] 
/// * [token] 
@BuiltValue()
abstract class AwsExchangeCredentialsProjectTokenOKCredentials implements Built<AwsExchangeCredentialsProjectTokenOKCredentials, AwsExchangeCredentialsProjectTokenOKCredentialsBuilder> {
  @BuiltValueField(wireName: r'identityId')
  String get identityId;

  @BuiltValueField(wireName: r'token')
  String get token;

  AwsExchangeCredentialsProjectTokenOKCredentials._();

  factory AwsExchangeCredentialsProjectTokenOKCredentials([void updates(AwsExchangeCredentialsProjectTokenOKCredentialsBuilder b)]) = _$AwsExchangeCredentialsProjectTokenOKCredentials;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AwsExchangeCredentialsProjectTokenOKCredentialsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AwsExchangeCredentialsProjectTokenOKCredentials> get serializer => _$AwsExchangeCredentialsProjectTokenOKCredentialsSerializer();
}

class _$AwsExchangeCredentialsProjectTokenOKCredentialsSerializer implements PrimitiveSerializer<AwsExchangeCredentialsProjectTokenOKCredentials> {
  @override
  final Iterable<Type> types = const [AwsExchangeCredentialsProjectTokenOKCredentials, _$AwsExchangeCredentialsProjectTokenOKCredentials];

  @override
  final String wireName = r'AwsExchangeCredentialsProjectTokenOKCredentials';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AwsExchangeCredentialsProjectTokenOKCredentials object, {
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
    AwsExchangeCredentialsProjectTokenOKCredentials object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AwsExchangeCredentialsProjectTokenOKCredentialsBuilder result,
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
  AwsExchangeCredentialsProjectTokenOKCredentials deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AwsExchangeCredentialsProjectTokenOKCredentialsBuilder();
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

