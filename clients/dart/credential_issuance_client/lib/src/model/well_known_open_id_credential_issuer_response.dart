//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/well_known_open_id_credential_issuer_response_credentials_supported_inner.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'well_known_open_id_credential_issuer_response.g.dart';

/// WellKnownOpenIdCredentialIssuerResponse
///
/// Properties:
/// * [authorizationEndpoint] 
/// * [credentialEndpoint] 
/// * [credentialIssuer] 
/// * [credentialsSupported] 
/// * [deferredCredentialEndpoint] 
/// * [grantTypesSupported] 
/// * [jwksUri] 
/// * [scopesSupported] 
/// * [tokenEndpoint] 
/// * [tokenEndpointAuthMethodsSupported] 
@BuiltValue()
abstract class WellKnownOpenIdCredentialIssuerResponse implements Built<WellKnownOpenIdCredentialIssuerResponse, WellKnownOpenIdCredentialIssuerResponseBuilder> {
  @BuiltValueField(wireName: r'authorization_endpoint')
  String? get authorizationEndpoint;

  @BuiltValueField(wireName: r'credential_endpoint')
  String? get credentialEndpoint;

  @BuiltValueField(wireName: r'credential_issuer')
  String? get credentialIssuer;

  @BuiltValueField(wireName: r'credentials_supported')
  BuiltList<WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner>? get credentialsSupported;

  @BuiltValueField(wireName: r'deferred_credential_endpoint')
  String? get deferredCredentialEndpoint;

  @BuiltValueField(wireName: r'grant_types_supported')
  BuiltList<WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum>? get grantTypesSupported;
  // enum grantTypesSupportedEnum {  authorization_code,  urn:ietf:params:oauth:grant-type:pre-authorized_code,  };

  @BuiltValueField(wireName: r'jwks_uri')
  String? get jwksUri;

  @BuiltValueField(wireName: r'scopes_supported')
  BuiltList<WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnum>? get scopesSupported;
  // enum scopesSupportedEnum {  openid,  };

  @BuiltValueField(wireName: r'token_endpoint')
  String? get tokenEndpoint;

  @BuiltValueField(wireName: r'token_endpoint_auth_methods_supported')
  BuiltList<WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum>? get tokenEndpointAuthMethodsSupported;
  // enum tokenEndpointAuthMethodsSupportedEnum {  client_secret_post,  client_secret_basic,  none,  };

  WellKnownOpenIdCredentialIssuerResponse._();

  factory WellKnownOpenIdCredentialIssuerResponse([void updates(WellKnownOpenIdCredentialIssuerResponseBuilder b)]) = _$WellKnownOpenIdCredentialIssuerResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WellKnownOpenIdCredentialIssuerResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WellKnownOpenIdCredentialIssuerResponse> get serializer => _$WellKnownOpenIdCredentialIssuerResponseSerializer();
}

class _$WellKnownOpenIdCredentialIssuerResponseSerializer implements PrimitiveSerializer<WellKnownOpenIdCredentialIssuerResponse> {
  @override
  final Iterable<Type> types = const [WellKnownOpenIdCredentialIssuerResponse, _$WellKnownOpenIdCredentialIssuerResponse];

  @override
  final String wireName = r'WellKnownOpenIdCredentialIssuerResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WellKnownOpenIdCredentialIssuerResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.authorizationEndpoint != null) {
      yield r'authorization_endpoint';
      yield serializers.serialize(
        object.authorizationEndpoint,
        specifiedType: const FullType(String),
      );
    }
    if (object.credentialEndpoint != null) {
      yield r'credential_endpoint';
      yield serializers.serialize(
        object.credentialEndpoint,
        specifiedType: const FullType(String),
      );
    }
    if (object.credentialIssuer != null) {
      yield r'credential_issuer';
      yield serializers.serialize(
        object.credentialIssuer,
        specifiedType: const FullType(String),
      );
    }
    if (object.credentialsSupported != null) {
      yield r'credentials_supported';
      yield serializers.serialize(
        object.credentialsSupported,
        specifiedType: const FullType(BuiltList, [FullType(WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner)]),
      );
    }
    if (object.deferredCredentialEndpoint != null) {
      yield r'deferred_credential_endpoint';
      yield serializers.serialize(
        object.deferredCredentialEndpoint,
        specifiedType: const FullType(String),
      );
    }
    if (object.grantTypesSupported != null) {
      yield r'grant_types_supported';
      yield serializers.serialize(
        object.grantTypesSupported,
        specifiedType: const FullType(BuiltList, [FullType(WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum)]),
      );
    }
    if (object.jwksUri != null) {
      yield r'jwks_uri';
      yield serializers.serialize(
        object.jwksUri,
        specifiedType: const FullType(String),
      );
    }
    if (object.scopesSupported != null) {
      yield r'scopes_supported';
      yield serializers.serialize(
        object.scopesSupported,
        specifiedType: const FullType(BuiltList, [FullType(WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnum)]),
      );
    }
    if (object.tokenEndpoint != null) {
      yield r'token_endpoint';
      yield serializers.serialize(
        object.tokenEndpoint,
        specifiedType: const FullType(String),
      );
    }
    if (object.tokenEndpointAuthMethodsSupported != null) {
      yield r'token_endpoint_auth_methods_supported';
      yield serializers.serialize(
        object.tokenEndpointAuthMethodsSupported,
        specifiedType: const FullType(BuiltList, [FullType(WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WellKnownOpenIdCredentialIssuerResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WellKnownOpenIdCredentialIssuerResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'authorization_endpoint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.authorizationEndpoint = valueDes;
          break;
        case r'credential_endpoint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.credentialEndpoint = valueDes;
          break;
        case r'credential_issuer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.credentialIssuer = valueDes;
          break;
        case r'credentials_supported':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner)]),
          ) as BuiltList<WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner>;
          result.credentialsSupported.replace(valueDes);
          break;
        case r'deferred_credential_endpoint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.deferredCredentialEndpoint = valueDes;
          break;
        case r'grant_types_supported':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum)]),
          ) as BuiltList<WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum>;
          result.grantTypesSupported.replace(valueDes);
          break;
        case r'jwks_uri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.jwksUri = valueDes;
          break;
        case r'scopes_supported':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnum)]),
          ) as BuiltList<WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnum>;
          result.scopesSupported.replace(valueDes);
          break;
        case r'token_endpoint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tokenEndpoint = valueDes;
          break;
        case r'token_endpoint_auth_methods_supported':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum)]),
          ) as BuiltList<WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum>;
          result.tokenEndpointAuthMethodsSupported.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WellKnownOpenIdCredentialIssuerResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WellKnownOpenIdCredentialIssuerResponseBuilder();
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

class WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'authorization_code')
  static const WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum authorizationCode = _$wellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum_authorizationCode;
  @BuiltValueEnumConst(wireName: r'urn:ietf:params:oauth:grant-type:pre-authorized_code')
  static const WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum urnColonIetfColonParamsColonOauthColonGrantTypeColonPreAuthorizedCode = _$wellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum_urnColonIetfColonParamsColonOauthColonGrantTypeColonPreAuthorizedCode;

  static Serializer<WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum> get serializer => _$wellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnumSerializer;

  const WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum._(String name): super(name);

  static BuiltSet<WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum> get values => _$wellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnumValues;
  static WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum valueOf(String name) => _$wellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnumValueOf(name);
}

class WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'openid')
  static const WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnum openid = _$wellKnownOpenIdCredentialIssuerResponseScopesSupportedEnum_openid;

  static Serializer<WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnum> get serializer => _$wellKnownOpenIdCredentialIssuerResponseScopesSupportedEnumSerializer;

  const WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnum._(String name): super(name);

  static BuiltSet<WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnum> get values => _$wellKnownOpenIdCredentialIssuerResponseScopesSupportedEnumValues;
  static WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnum valueOf(String name) => _$wellKnownOpenIdCredentialIssuerResponseScopesSupportedEnumValueOf(name);
}

class WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'client_secret_post')
  static const WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum clientSecretPost = _$wellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum_clientSecretPost;
  @BuiltValueEnumConst(wireName: r'client_secret_basic')
  static const WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum clientSecretBasic = _$wellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum_clientSecretBasic;
  @BuiltValueEnumConst(wireName: r'none')
  static const WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum none = _$wellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum_none;

  static Serializer<WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum> get serializer => _$wellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnumSerializer;

  const WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum._(String name): super(name);

  static BuiltSet<WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum> get values => _$wellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnumValues;
  static WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum valueOf(String name) => _$wellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnumValueOf(name);
}

