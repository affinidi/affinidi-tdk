// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_endpoint_auth_method.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TokenEndpointAuthMethod _$clientSecretBasic =
    const TokenEndpointAuthMethod._('clientSecretBasic');
const TokenEndpointAuthMethod _$clientSecretPost =
    const TokenEndpointAuthMethod._('clientSecretPost');
const TokenEndpointAuthMethod _$none = const TokenEndpointAuthMethod._('none');

TokenEndpointAuthMethod _$valueOf(String name) {
  switch (name) {
    case 'clientSecretBasic':
      return _$clientSecretBasic;
    case 'clientSecretPost':
      return _$clientSecretPost;
    case 'none':
      return _$none;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TokenEndpointAuthMethod> _$values =
    new BuiltSet<TokenEndpointAuthMethod>(const <TokenEndpointAuthMethod>[
  _$clientSecretBasic,
  _$clientSecretPost,
  _$none,
]);

class _$TokenEndpointAuthMethodMeta {
  const _$TokenEndpointAuthMethodMeta();
  TokenEndpointAuthMethod get clientSecretBasic => _$clientSecretBasic;
  TokenEndpointAuthMethod get clientSecretPost => _$clientSecretPost;
  TokenEndpointAuthMethod get none => _$none;
  TokenEndpointAuthMethod valueOf(String name) => _$valueOf(name);
  BuiltSet<TokenEndpointAuthMethod> get values => _$values;
}

abstract class _$TokenEndpointAuthMethodMixin {
  // ignore: non_constant_identifier_names
  _$TokenEndpointAuthMethodMeta get TokenEndpointAuthMethod =>
      const _$TokenEndpointAuthMethodMeta();
}

Serializer<TokenEndpointAuthMethod> _$tokenEndpointAuthMethodSerializer =
    new _$TokenEndpointAuthMethodSerializer();

class _$TokenEndpointAuthMethodSerializer
    implements PrimitiveSerializer<TokenEndpointAuthMethod> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'clientSecretBasic': 'client_secret_basic',
    'clientSecretPost': 'client_secret_post',
    'none': 'none',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'client_secret_basic': 'clientSecretBasic',
    'client_secret_post': 'clientSecretPost',
    'none': 'none',
  };

  @override
  final Iterable<Type> types = const <Type>[TokenEndpointAuthMethod];
  @override
  final String wireName = 'TokenEndpointAuthMethod';

  @override
  Object serialize(Serializers serializers, TokenEndpointAuthMethod object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TokenEndpointAuthMethod deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TokenEndpointAuthMethod.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
