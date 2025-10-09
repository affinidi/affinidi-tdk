//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_auth_token_endpoint_input.g.dart';

/// ConsumerAuthTokenEndpointInput
///
/// Properties:
/// * [grantType]
/// * [clientAssertionType]
/// * [clientAssertion]
/// * [code]
/// * [refreshToken]
/// * [redirectUri]
/// * [clientId]
@BuiltValue()
abstract class ConsumerAuthTokenEndpointInput
    implements
        Built<ConsumerAuthTokenEndpointInput,
            ConsumerAuthTokenEndpointInputBuilder> {
  @BuiltValueField(wireName: r'grant_type')
  ConsumerAuthTokenEndpointInputGrantTypeEnum get grantType;
  // enum grantTypeEnum {  client_credentials,  affinidi_delegation,  };

  @BuiltValueField(wireName: r'client_assertion_type')
  ConsumerAuthTokenEndpointInputClientAssertionTypeEnum get clientAssertionType;
  // enum clientAssertionTypeEnum {  urn:ietf:params:oauth:client-assertion-type:jwt-bearer,  urn:ietf:params:oauth:delegation-assertion-type:jwt-bearer,  };

  @BuiltValueField(wireName: r'client_assertion')
  String get clientAssertion;

  @BuiltValueField(wireName: r'code')
  String? get code;

  @BuiltValueField(wireName: r'refresh_token')
  String? get refreshToken;

  @BuiltValueField(wireName: r'redirect_uri')
  String? get redirectUri;

  @BuiltValueField(wireName: r'client_id')
  String? get clientId;

  ConsumerAuthTokenEndpointInput._();

  factory ConsumerAuthTokenEndpointInput(
          [void updates(ConsumerAuthTokenEndpointInputBuilder b)]) =
      _$ConsumerAuthTokenEndpointInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerAuthTokenEndpointInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerAuthTokenEndpointInput> get serializer =>
      _$ConsumerAuthTokenEndpointInputSerializer();
}

class _$ConsumerAuthTokenEndpointInputSerializer
    implements PrimitiveSerializer<ConsumerAuthTokenEndpointInput> {
  @override
  final Iterable<Type> types = const [
    ConsumerAuthTokenEndpointInput,
    _$ConsumerAuthTokenEndpointInput
  ];

  @override
  final String wireName = r'ConsumerAuthTokenEndpointInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerAuthTokenEndpointInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'grant_type';
    yield serializers.serialize(
      object.grantType,
      specifiedType:
          const FullType(ConsumerAuthTokenEndpointInputGrantTypeEnum),
    );
    yield r'client_assertion_type';
    yield serializers.serialize(
      object.clientAssertionType,
      specifiedType:
          const FullType(ConsumerAuthTokenEndpointInputClientAssertionTypeEnum),
    );
    yield r'client_assertion';
    yield serializers.serialize(
      object.clientAssertion,
      specifiedType: const FullType(String),
    );
    if (object.code != null) {
      yield r'code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType(String),
      );
    }
    if (object.refreshToken != null) {
      yield r'refresh_token';
      yield serializers.serialize(
        object.refreshToken,
        specifiedType: const FullType(String),
      );
    }
    if (object.redirectUri != null) {
      yield r'redirect_uri';
      yield serializers.serialize(
        object.redirectUri,
        specifiedType: const FullType(String),
      );
    }
    if (object.clientId != null) {
      yield r'client_id';
      yield serializers.serialize(
        object.clientId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerAuthTokenEndpointInput object, {
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
    required ConsumerAuthTokenEndpointInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'grant_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(ConsumerAuthTokenEndpointInputGrantTypeEnum),
          ) as ConsumerAuthTokenEndpointInputGrantTypeEnum;
          result.grantType = valueDes;
          break;
        case r'client_assertion_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                ConsumerAuthTokenEndpointInputClientAssertionTypeEnum),
          ) as ConsumerAuthTokenEndpointInputClientAssertionTypeEnum;
          result.clientAssertionType = valueDes;
          break;
        case r'client_assertion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.clientAssertion = valueDes;
          break;
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.code = valueDes;
          break;
        case r'refresh_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.refreshToken = valueDes;
          break;
        case r'redirect_uri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.redirectUri = valueDes;
          break;
        case r'client_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.clientId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerAuthTokenEndpointInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerAuthTokenEndpointInputBuilder();
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

class ConsumerAuthTokenEndpointInputGrantTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'client_credentials')
  static const ConsumerAuthTokenEndpointInputGrantTypeEnum clientCredentials =
      _$consumerAuthTokenEndpointInputGrantTypeEnum_clientCredentials;
  @BuiltValueEnumConst(wireName: r'affinidi_delegation')
  static const ConsumerAuthTokenEndpointInputGrantTypeEnum affinidiDelegation =
      _$consumerAuthTokenEndpointInputGrantTypeEnum_affinidiDelegation;

  static Serializer<ConsumerAuthTokenEndpointInputGrantTypeEnum>
      get serializer => _$consumerAuthTokenEndpointInputGrantTypeEnumSerializer;

  const ConsumerAuthTokenEndpointInputGrantTypeEnum._(String name)
      : super(name);

  static BuiltSet<ConsumerAuthTokenEndpointInputGrantTypeEnum> get values =>
      _$consumerAuthTokenEndpointInputGrantTypeEnumValues;
  static ConsumerAuthTokenEndpointInputGrantTypeEnum valueOf(String name) =>
      _$consumerAuthTokenEndpointInputGrantTypeEnumValueOf(name);
}

class ConsumerAuthTokenEndpointInputClientAssertionTypeEnum extends EnumClass {
  @BuiltValueEnumConst(
      wireName: r'urn:ietf:params:oauth:client-assertion-type:jwt-bearer')
  static const ConsumerAuthTokenEndpointInputClientAssertionTypeEnum
      urnColonIetfColonParamsColonOauthColonClientAssertionTypeColonJwtBearer =
      _$consumerAuthTokenEndpointInputClientAssertionTypeEnum_urnColonIetfColonParamsColonOauthColonClientAssertionTypeColonJwtBearer;
  @BuiltValueEnumConst(
      wireName: r'urn:ietf:params:oauth:delegation-assertion-type:jwt-bearer')
  static const ConsumerAuthTokenEndpointInputClientAssertionTypeEnum
      urnColonIetfColonParamsColonOauthColonDelegationAssertionTypeColonJwtBearer =
      _$consumerAuthTokenEndpointInputClientAssertionTypeEnum_urnColonIetfColonParamsColonOauthColonDelegationAssertionTypeColonJwtBearer;

  static Serializer<ConsumerAuthTokenEndpointInputClientAssertionTypeEnum>
      get serializer =>
          _$consumerAuthTokenEndpointInputClientAssertionTypeEnumSerializer;

  const ConsumerAuthTokenEndpointInputClientAssertionTypeEnum._(String name)
      : super(name);

  static BuiltSet<ConsumerAuthTokenEndpointInputClientAssertionTypeEnum>
      get values =>
          _$consumerAuthTokenEndpointInputClientAssertionTypeEnumValues;
  static ConsumerAuthTokenEndpointInputClientAssertionTypeEnum valueOf(
          String name) =>
      _$consumerAuthTokenEndpointInputClientAssertionTypeEnumValueOf(name);
}
