//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_login_configuration_client/src/model/o_auth2_token_authorization_details_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'o_auth2_token.g.dart';

/// OAuth2Token
///
/// Properties:
/// * [accessToken] - The access token issued by the authorization server.
/// * [expiresIn] - The lifetime in seconds of the access token.  For example, the value \"3600\" denotes that the access  token will expire in one hour from the time the response was generated.
/// * [idToken] - To retrieve a refresh token request the id_token scope.
/// * [refreshToken] - The refresh token, which can be used to obtain new access tokens. To retrieve it add the scope \"offline\" to your access token request.
/// * [scope] - The scope of the access token
/// * [tokenType] - The type of the token issued
/// * [authorizationDetails] - is used to request issuance of a certain Credential type. This optional field is only applicable in batch credential operations.
@BuiltValue()
abstract class OAuth2Token implements Built<OAuth2Token, OAuth2TokenBuilder> {
  /// The access token issued by the authorization server.
  @BuiltValueField(wireName: r'access_token')
  String? get accessToken;

  /// The lifetime in seconds of the access token.  For example, the value \"3600\" denotes that the access  token will expire in one hour from the time the response was generated.
  @BuiltValueField(wireName: r'expires_in')
  int? get expiresIn;

  /// To retrieve a refresh token request the id_token scope.
  @BuiltValueField(wireName: r'id_token')
  int? get idToken;

  /// The refresh token, which can be used to obtain new access tokens. To retrieve it add the scope \"offline\" to your access token request.
  @BuiltValueField(wireName: r'refresh_token')
  String? get refreshToken;

  /// The scope of the access token
  @BuiltValueField(wireName: r'scope')
  String? get scope;

  /// The type of the token issued
  @BuiltValueField(wireName: r'token_type')
  String? get tokenType;

  /// is used to request issuance of a certain Credential type. This optional field is only applicable in batch credential operations.
  @BuiltValueField(wireName: r'authorization_details')
  BuiltList<OAuth2TokenAuthorizationDetailsInner>? get authorizationDetails;

  OAuth2Token._();

  factory OAuth2Token([void updates(OAuth2TokenBuilder b)]) = _$OAuth2Token;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OAuth2TokenBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OAuth2Token> get serializer => _$OAuth2TokenSerializer();
}

class _$OAuth2TokenSerializer implements PrimitiveSerializer<OAuth2Token> {
  @override
  final Iterable<Type> types = const [OAuth2Token, _$OAuth2Token];

  @override
  final String wireName = r'OAuth2Token';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OAuth2Token object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.accessToken != null) {
      yield r'access_token';
      yield serializers.serialize(
        object.accessToken,
        specifiedType: const FullType(String),
      );
    }
    if (object.expiresIn != null) {
      yield r'expires_in';
      yield serializers.serialize(
        object.expiresIn,
        specifiedType: const FullType(int),
      );
    }
    if (object.idToken != null) {
      yield r'id_token';
      yield serializers.serialize(
        object.idToken,
        specifiedType: const FullType(int),
      );
    }
    if (object.refreshToken != null) {
      yield r'refresh_token';
      yield serializers.serialize(
        object.refreshToken,
        specifiedType: const FullType(String),
      );
    }
    if (object.scope != null) {
      yield r'scope';
      yield serializers.serialize(
        object.scope,
        specifiedType: const FullType(String),
      );
    }
    if (object.tokenType != null) {
      yield r'token_type';
      yield serializers.serialize(
        object.tokenType,
        specifiedType: const FullType(String),
      );
    }
    if (object.authorizationDetails != null) {
      yield r'authorization_details';
      yield serializers.serialize(
        object.authorizationDetails,
        specifiedType: const FullType(
            BuiltList, [FullType(OAuth2TokenAuthorizationDetailsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OAuth2Token object, {
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
    required OAuth2TokenBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'access_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accessToken = valueDes;
          break;
        case r'expires_in':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.expiresIn = valueDes;
          break;
        case r'id_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.idToken = valueDes;
          break;
        case r'refresh_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.refreshToken = valueDes;
          break;
        case r'scope':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.scope = valueDes;
          break;
        case r'token_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tokenType = valueDes;
          break;
        case r'authorization_details':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(OAuth2TokenAuthorizationDetailsInner)]),
          ) as BuiltList<OAuth2TokenAuthorizationDetailsInner>;
          result.authorizationDetails.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OAuth2Token deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OAuth2TokenBuilder();
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
