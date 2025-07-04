// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_auth_token_endpoint_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ConsumerAuthTokenEndpointInputGrantTypeEnum
    _$consumerAuthTokenEndpointInputGrantTypeEnum_clientCredentials =
    const ConsumerAuthTokenEndpointInputGrantTypeEnum._('clientCredentials');
const ConsumerAuthTokenEndpointInputGrantTypeEnum
    _$consumerAuthTokenEndpointInputGrantTypeEnum_affinidiDelegation =
    const ConsumerAuthTokenEndpointInputGrantTypeEnum._('affinidiDelegation');

ConsumerAuthTokenEndpointInputGrantTypeEnum
    _$consumerAuthTokenEndpointInputGrantTypeEnumValueOf(String name) {
  switch (name) {
    case 'clientCredentials':
      return _$consumerAuthTokenEndpointInputGrantTypeEnum_clientCredentials;
    case 'affinidiDelegation':
      return _$consumerAuthTokenEndpointInputGrantTypeEnum_affinidiDelegation;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ConsumerAuthTokenEndpointInputGrantTypeEnum>
    _$consumerAuthTokenEndpointInputGrantTypeEnumValues = BuiltSet<
        ConsumerAuthTokenEndpointInputGrantTypeEnum>(const <ConsumerAuthTokenEndpointInputGrantTypeEnum>[
  _$consumerAuthTokenEndpointInputGrantTypeEnum_clientCredentials,
  _$consumerAuthTokenEndpointInputGrantTypeEnum_affinidiDelegation,
]);

const ConsumerAuthTokenEndpointInputClientAssertionTypeEnum
    _$consumerAuthTokenEndpointInputClientAssertionTypeEnum_urnColonIetfColonParamsColonOauthColonClientAssertionTypeColonJwtBearer =
    const ConsumerAuthTokenEndpointInputClientAssertionTypeEnum._(
        'urnColonIetfColonParamsColonOauthColonClientAssertionTypeColonJwtBearer');
const ConsumerAuthTokenEndpointInputClientAssertionTypeEnum
    _$consumerAuthTokenEndpointInputClientAssertionTypeEnum_urnColonIetfColonParamsColonOauthColonDelegationAssertionTypeColonJwtBearer =
    const ConsumerAuthTokenEndpointInputClientAssertionTypeEnum._(
        'urnColonIetfColonParamsColonOauthColonDelegationAssertionTypeColonJwtBearer');

ConsumerAuthTokenEndpointInputClientAssertionTypeEnum
    _$consumerAuthTokenEndpointInputClientAssertionTypeEnumValueOf(
        String name) {
  switch (name) {
    case 'urnColonIetfColonParamsColonOauthColonClientAssertionTypeColonJwtBearer':
      return _$consumerAuthTokenEndpointInputClientAssertionTypeEnum_urnColonIetfColonParamsColonOauthColonClientAssertionTypeColonJwtBearer;
    case 'urnColonIetfColonParamsColonOauthColonDelegationAssertionTypeColonJwtBearer':
      return _$consumerAuthTokenEndpointInputClientAssertionTypeEnum_urnColonIetfColonParamsColonOauthColonDelegationAssertionTypeColonJwtBearer;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ConsumerAuthTokenEndpointInputClientAssertionTypeEnum>
    _$consumerAuthTokenEndpointInputClientAssertionTypeEnumValues = BuiltSet<
        ConsumerAuthTokenEndpointInputClientAssertionTypeEnum>(const <ConsumerAuthTokenEndpointInputClientAssertionTypeEnum>[
  _$consumerAuthTokenEndpointInputClientAssertionTypeEnum_urnColonIetfColonParamsColonOauthColonClientAssertionTypeColonJwtBearer,
  _$consumerAuthTokenEndpointInputClientAssertionTypeEnum_urnColonIetfColonParamsColonOauthColonDelegationAssertionTypeColonJwtBearer,
]);

Serializer<ConsumerAuthTokenEndpointInputGrantTypeEnum>
    _$consumerAuthTokenEndpointInputGrantTypeEnumSerializer =
    _$ConsumerAuthTokenEndpointInputGrantTypeEnumSerializer();
Serializer<ConsumerAuthTokenEndpointInputClientAssertionTypeEnum>
    _$consumerAuthTokenEndpointInputClientAssertionTypeEnumSerializer =
    _$ConsumerAuthTokenEndpointInputClientAssertionTypeEnumSerializer();

class _$ConsumerAuthTokenEndpointInputGrantTypeEnumSerializer
    implements
        PrimitiveSerializer<ConsumerAuthTokenEndpointInputGrantTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'clientCredentials': 'client_credentials',
    'affinidiDelegation': 'affinidi_delegation',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'client_credentials': 'clientCredentials',
    'affinidi_delegation': 'affinidiDelegation',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ConsumerAuthTokenEndpointInputGrantTypeEnum
  ];
  @override
  final String wireName = 'ConsumerAuthTokenEndpointInputGrantTypeEnum';

  @override
  Object serialize(Serializers serializers,
          ConsumerAuthTokenEndpointInputGrantTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ConsumerAuthTokenEndpointInputGrantTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ConsumerAuthTokenEndpointInputGrantTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ConsumerAuthTokenEndpointInputClientAssertionTypeEnumSerializer
    implements
        PrimitiveSerializer<
            ConsumerAuthTokenEndpointInputClientAssertionTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'urnColonIetfColonParamsColonOauthColonClientAssertionTypeColonJwtBearer':
        'urn:ietf:params:oauth:client-assertion-type:jwt-bearer',
    'urnColonIetfColonParamsColonOauthColonDelegationAssertionTypeColonJwtBearer':
        'urn:ietf:params:oauth:delegation-assertion-type:jwt-bearer',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'urn:ietf:params:oauth:client-assertion-type:jwt-bearer':
        'urnColonIetfColonParamsColonOauthColonClientAssertionTypeColonJwtBearer',
    'urn:ietf:params:oauth:delegation-assertion-type:jwt-bearer':
        'urnColonIetfColonParamsColonOauthColonDelegationAssertionTypeColonJwtBearer',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ConsumerAuthTokenEndpointInputClientAssertionTypeEnum
  ];
  @override
  final String wireName =
      'ConsumerAuthTokenEndpointInputClientAssertionTypeEnum';

  @override
  Object serialize(Serializers serializers,
          ConsumerAuthTokenEndpointInputClientAssertionTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ConsumerAuthTokenEndpointInputClientAssertionTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ConsumerAuthTokenEndpointInputClientAssertionTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ConsumerAuthTokenEndpointInput extends ConsumerAuthTokenEndpointInput {
  @override
  final ConsumerAuthTokenEndpointInputGrantTypeEnum grantType;
  @override
  final ConsumerAuthTokenEndpointInputClientAssertionTypeEnum
      clientAssertionType;
  @override
  final String clientAssertion;
  @override
  final String? code;
  @override
  final String? refreshToken;
  @override
  final String? redirectUri;
  @override
  final String? clientId;

  factory _$ConsumerAuthTokenEndpointInput(
          [void Function(ConsumerAuthTokenEndpointInputBuilder)? updates]) =>
      (ConsumerAuthTokenEndpointInputBuilder()..update(updates))._build();

  _$ConsumerAuthTokenEndpointInput._(
      {required this.grantType,
      required this.clientAssertionType,
      required this.clientAssertion,
      this.code,
      this.refreshToken,
      this.redirectUri,
      this.clientId})
      : super._();
  @override
  ConsumerAuthTokenEndpointInput rebuild(
          void Function(ConsumerAuthTokenEndpointInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerAuthTokenEndpointInputBuilder toBuilder() =>
      ConsumerAuthTokenEndpointInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerAuthTokenEndpointInput &&
        grantType == other.grantType &&
        clientAssertionType == other.clientAssertionType &&
        clientAssertion == other.clientAssertion &&
        code == other.code &&
        refreshToken == other.refreshToken &&
        redirectUri == other.redirectUri &&
        clientId == other.clientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, grantType.hashCode);
    _$hash = $jc(_$hash, clientAssertionType.hashCode);
    _$hash = $jc(_$hash, clientAssertion.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jc(_$hash, redirectUri.hashCode);
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerAuthTokenEndpointInput')
          ..add('grantType', grantType)
          ..add('clientAssertionType', clientAssertionType)
          ..add('clientAssertion', clientAssertion)
          ..add('code', code)
          ..add('refreshToken', refreshToken)
          ..add('redirectUri', redirectUri)
          ..add('clientId', clientId))
        .toString();
  }
}

class ConsumerAuthTokenEndpointInputBuilder
    implements
        Builder<ConsumerAuthTokenEndpointInput,
            ConsumerAuthTokenEndpointInputBuilder> {
  _$ConsumerAuthTokenEndpointInput? _$v;

  ConsumerAuthTokenEndpointInputGrantTypeEnum? _grantType;
  ConsumerAuthTokenEndpointInputGrantTypeEnum? get grantType =>
      _$this._grantType;
  set grantType(ConsumerAuthTokenEndpointInputGrantTypeEnum? grantType) =>
      _$this._grantType = grantType;

  ConsumerAuthTokenEndpointInputClientAssertionTypeEnum? _clientAssertionType;
  ConsumerAuthTokenEndpointInputClientAssertionTypeEnum?
      get clientAssertionType => _$this._clientAssertionType;
  set clientAssertionType(
          ConsumerAuthTokenEndpointInputClientAssertionTypeEnum?
              clientAssertionType) =>
      _$this._clientAssertionType = clientAssertionType;

  String? _clientAssertion;
  String? get clientAssertion => _$this._clientAssertion;
  set clientAssertion(String? clientAssertion) =>
      _$this._clientAssertion = clientAssertion;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  String? _redirectUri;
  String? get redirectUri => _$this._redirectUri;
  set redirectUri(String? redirectUri) => _$this._redirectUri = redirectUri;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  ConsumerAuthTokenEndpointInputBuilder() {
    ConsumerAuthTokenEndpointInput._defaults(this);
  }

  ConsumerAuthTokenEndpointInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _grantType = $v.grantType;
      _clientAssertionType = $v.clientAssertionType;
      _clientAssertion = $v.clientAssertion;
      _code = $v.code;
      _refreshToken = $v.refreshToken;
      _redirectUri = $v.redirectUri;
      _clientId = $v.clientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerAuthTokenEndpointInput other) {
    _$v = other as _$ConsumerAuthTokenEndpointInput;
  }

  @override
  void update(void Function(ConsumerAuthTokenEndpointInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerAuthTokenEndpointInput build() => _build();

  _$ConsumerAuthTokenEndpointInput _build() {
    final _$result = _$v ??
        _$ConsumerAuthTokenEndpointInput._(
          grantType: BuiltValueNullFieldError.checkNotNull(
              grantType, r'ConsumerAuthTokenEndpointInput', 'grantType'),
          clientAssertionType: BuiltValueNullFieldError.checkNotNull(
              clientAssertionType,
              r'ConsumerAuthTokenEndpointInput',
              'clientAssertionType'),
          clientAssertion: BuiltValueNullFieldError.checkNotNull(
              clientAssertion,
              r'ConsumerAuthTokenEndpointInput',
              'clientAssertion'),
          code: code,
          refreshToken: refreshToken,
          redirectUri: redirectUri,
          clientId: clientId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
