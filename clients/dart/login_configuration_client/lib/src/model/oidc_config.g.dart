// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oidc_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OIDCConfig extends OIDCConfig {
  @override
  final String authorizationEndpoint;
  @override
  final bool? backchannelLogoutSessionSupported;
  @override
  final bool? backchannelLogoutSupported;
  @override
  final bool? claimsParameterSupported;
  @override
  final BuiltList<String>? claimsSupported;
  @override
  final BuiltList<String>? codeChallengeMethodsSupported;
  @override
  final String? credentialsEndpointDraft00;
  @override
  final BuiltList<OIDCConfigCredentialsSupportedDraft00Inner>?
      credentialsSupportedDraft00;
  @override
  final String? endSessionEndpoint;
  @override
  final bool? frontchannelLogoutSessionSupported;
  @override
  final bool? frontchannelLogoutSupported;
  @override
  final BuiltList<String>? grantTypesSupported;
  @override
  final BuiltList<String> idTokenSignedResponseAlg;
  @override
  final BuiltList<String> idTokenSigningAlgValuesSupported;
  @override
  final String issuer;
  @override
  final String jwksUri;
  @override
  final String? registrationEndpoint;
  @override
  final BuiltList<String>? requestObjectSigningAlgValuesSupported;
  @override
  final bool? requestParameterSupported;
  @override
  final bool? requestUriParameterSupported;
  @override
  final bool? requireRequestUriRegistration;
  @override
  final BuiltList<String>? responseModesSupported;
  @override
  final BuiltList<String> responseTypesSupported;
  @override
  final String? revocationEndpoint;
  @override
  final BuiltList<String>? scopesSupported;
  @override
  final BuiltList<String> subjectTypesSupported;
  @override
  final String tokenEndpoint;
  @override
  final BuiltList<String>? tokenEndpointAuthMethodsSupported;
  @override
  final String? userinfoEndpoint;
  @override
  final BuiltList<String> userinfoSignedResponseAlg;
  @override
  final BuiltList<String>? userinfoSigningAlgValuesSupported;

  factory _$OIDCConfig([void Function(OIDCConfigBuilder)? updates]) =>
      (OIDCConfigBuilder()..update(updates))._build();

  _$OIDCConfig._(
      {required this.authorizationEndpoint,
      this.backchannelLogoutSessionSupported,
      this.backchannelLogoutSupported,
      this.claimsParameterSupported,
      this.claimsSupported,
      this.codeChallengeMethodsSupported,
      this.credentialsEndpointDraft00,
      this.credentialsSupportedDraft00,
      this.endSessionEndpoint,
      this.frontchannelLogoutSessionSupported,
      this.frontchannelLogoutSupported,
      this.grantTypesSupported,
      required this.idTokenSignedResponseAlg,
      required this.idTokenSigningAlgValuesSupported,
      required this.issuer,
      required this.jwksUri,
      this.registrationEndpoint,
      this.requestObjectSigningAlgValuesSupported,
      this.requestParameterSupported,
      this.requestUriParameterSupported,
      this.requireRequestUriRegistration,
      this.responseModesSupported,
      required this.responseTypesSupported,
      this.revocationEndpoint,
      this.scopesSupported,
      required this.subjectTypesSupported,
      required this.tokenEndpoint,
      this.tokenEndpointAuthMethodsSupported,
      this.userinfoEndpoint,
      required this.userinfoSignedResponseAlg,
      this.userinfoSigningAlgValuesSupported})
      : super._();
  @override
  OIDCConfig rebuild(void Function(OIDCConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OIDCConfigBuilder toBuilder() => OIDCConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OIDCConfig &&
        authorizationEndpoint == other.authorizationEndpoint &&
        backchannelLogoutSessionSupported ==
            other.backchannelLogoutSessionSupported &&
        backchannelLogoutSupported == other.backchannelLogoutSupported &&
        claimsParameterSupported == other.claimsParameterSupported &&
        claimsSupported == other.claimsSupported &&
        codeChallengeMethodsSupported == other.codeChallengeMethodsSupported &&
        credentialsEndpointDraft00 == other.credentialsEndpointDraft00 &&
        credentialsSupportedDraft00 == other.credentialsSupportedDraft00 &&
        endSessionEndpoint == other.endSessionEndpoint &&
        frontchannelLogoutSessionSupported ==
            other.frontchannelLogoutSessionSupported &&
        frontchannelLogoutSupported == other.frontchannelLogoutSupported &&
        grantTypesSupported == other.grantTypesSupported &&
        idTokenSignedResponseAlg == other.idTokenSignedResponseAlg &&
        idTokenSigningAlgValuesSupported ==
            other.idTokenSigningAlgValuesSupported &&
        issuer == other.issuer &&
        jwksUri == other.jwksUri &&
        registrationEndpoint == other.registrationEndpoint &&
        requestObjectSigningAlgValuesSupported ==
            other.requestObjectSigningAlgValuesSupported &&
        requestParameterSupported == other.requestParameterSupported &&
        requestUriParameterSupported == other.requestUriParameterSupported &&
        requireRequestUriRegistration == other.requireRequestUriRegistration &&
        responseModesSupported == other.responseModesSupported &&
        responseTypesSupported == other.responseTypesSupported &&
        revocationEndpoint == other.revocationEndpoint &&
        scopesSupported == other.scopesSupported &&
        subjectTypesSupported == other.subjectTypesSupported &&
        tokenEndpoint == other.tokenEndpoint &&
        tokenEndpointAuthMethodsSupported ==
            other.tokenEndpointAuthMethodsSupported &&
        userinfoEndpoint == other.userinfoEndpoint &&
        userinfoSignedResponseAlg == other.userinfoSignedResponseAlg &&
        userinfoSigningAlgValuesSupported ==
            other.userinfoSigningAlgValuesSupported;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, authorizationEndpoint.hashCode);
    _$hash = $jc(_$hash, backchannelLogoutSessionSupported.hashCode);
    _$hash = $jc(_$hash, backchannelLogoutSupported.hashCode);
    _$hash = $jc(_$hash, claimsParameterSupported.hashCode);
    _$hash = $jc(_$hash, claimsSupported.hashCode);
    _$hash = $jc(_$hash, codeChallengeMethodsSupported.hashCode);
    _$hash = $jc(_$hash, credentialsEndpointDraft00.hashCode);
    _$hash = $jc(_$hash, credentialsSupportedDraft00.hashCode);
    _$hash = $jc(_$hash, endSessionEndpoint.hashCode);
    _$hash = $jc(_$hash, frontchannelLogoutSessionSupported.hashCode);
    _$hash = $jc(_$hash, frontchannelLogoutSupported.hashCode);
    _$hash = $jc(_$hash, grantTypesSupported.hashCode);
    _$hash = $jc(_$hash, idTokenSignedResponseAlg.hashCode);
    _$hash = $jc(_$hash, idTokenSigningAlgValuesSupported.hashCode);
    _$hash = $jc(_$hash, issuer.hashCode);
    _$hash = $jc(_$hash, jwksUri.hashCode);
    _$hash = $jc(_$hash, registrationEndpoint.hashCode);
    _$hash = $jc(_$hash, requestObjectSigningAlgValuesSupported.hashCode);
    _$hash = $jc(_$hash, requestParameterSupported.hashCode);
    _$hash = $jc(_$hash, requestUriParameterSupported.hashCode);
    _$hash = $jc(_$hash, requireRequestUriRegistration.hashCode);
    _$hash = $jc(_$hash, responseModesSupported.hashCode);
    _$hash = $jc(_$hash, responseTypesSupported.hashCode);
    _$hash = $jc(_$hash, revocationEndpoint.hashCode);
    _$hash = $jc(_$hash, scopesSupported.hashCode);
    _$hash = $jc(_$hash, subjectTypesSupported.hashCode);
    _$hash = $jc(_$hash, tokenEndpoint.hashCode);
    _$hash = $jc(_$hash, tokenEndpointAuthMethodsSupported.hashCode);
    _$hash = $jc(_$hash, userinfoEndpoint.hashCode);
    _$hash = $jc(_$hash, userinfoSignedResponseAlg.hashCode);
    _$hash = $jc(_$hash, userinfoSigningAlgValuesSupported.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OIDCConfig')
          ..add('authorizationEndpoint', authorizationEndpoint)
          ..add('backchannelLogoutSessionSupported',
              backchannelLogoutSessionSupported)
          ..add('backchannelLogoutSupported', backchannelLogoutSupported)
          ..add('claimsParameterSupported', claimsParameterSupported)
          ..add('claimsSupported', claimsSupported)
          ..add('codeChallengeMethodsSupported', codeChallengeMethodsSupported)
          ..add('credentialsEndpointDraft00', credentialsEndpointDraft00)
          ..add('credentialsSupportedDraft00', credentialsSupportedDraft00)
          ..add('endSessionEndpoint', endSessionEndpoint)
          ..add('frontchannelLogoutSessionSupported',
              frontchannelLogoutSessionSupported)
          ..add('frontchannelLogoutSupported', frontchannelLogoutSupported)
          ..add('grantTypesSupported', grantTypesSupported)
          ..add('idTokenSignedResponseAlg', idTokenSignedResponseAlg)
          ..add('idTokenSigningAlgValuesSupported',
              idTokenSigningAlgValuesSupported)
          ..add('issuer', issuer)
          ..add('jwksUri', jwksUri)
          ..add('registrationEndpoint', registrationEndpoint)
          ..add('requestObjectSigningAlgValuesSupported',
              requestObjectSigningAlgValuesSupported)
          ..add('requestParameterSupported', requestParameterSupported)
          ..add('requestUriParameterSupported', requestUriParameterSupported)
          ..add('requireRequestUriRegistration', requireRequestUriRegistration)
          ..add('responseModesSupported', responseModesSupported)
          ..add('responseTypesSupported', responseTypesSupported)
          ..add('revocationEndpoint', revocationEndpoint)
          ..add('scopesSupported', scopesSupported)
          ..add('subjectTypesSupported', subjectTypesSupported)
          ..add('tokenEndpoint', tokenEndpoint)
          ..add('tokenEndpointAuthMethodsSupported',
              tokenEndpointAuthMethodsSupported)
          ..add('userinfoEndpoint', userinfoEndpoint)
          ..add('userinfoSignedResponseAlg', userinfoSignedResponseAlg)
          ..add('userinfoSigningAlgValuesSupported',
              userinfoSigningAlgValuesSupported))
        .toString();
  }
}

class OIDCConfigBuilder implements Builder<OIDCConfig, OIDCConfigBuilder> {
  _$OIDCConfig? _$v;

  String? _authorizationEndpoint;
  String? get authorizationEndpoint => _$this._authorizationEndpoint;
  set authorizationEndpoint(String? authorizationEndpoint) =>
      _$this._authorizationEndpoint = authorizationEndpoint;

  bool? _backchannelLogoutSessionSupported;
  bool? get backchannelLogoutSessionSupported =>
      _$this._backchannelLogoutSessionSupported;
  set backchannelLogoutSessionSupported(
          bool? backchannelLogoutSessionSupported) =>
      _$this._backchannelLogoutSessionSupported =
          backchannelLogoutSessionSupported;

  bool? _backchannelLogoutSupported;
  bool? get backchannelLogoutSupported => _$this._backchannelLogoutSupported;
  set backchannelLogoutSupported(bool? backchannelLogoutSupported) =>
      _$this._backchannelLogoutSupported = backchannelLogoutSupported;

  bool? _claimsParameterSupported;
  bool? get claimsParameterSupported => _$this._claimsParameterSupported;
  set claimsParameterSupported(bool? claimsParameterSupported) =>
      _$this._claimsParameterSupported = claimsParameterSupported;

  ListBuilder<String>? _claimsSupported;
  ListBuilder<String> get claimsSupported =>
      _$this._claimsSupported ??= ListBuilder<String>();
  set claimsSupported(ListBuilder<String>? claimsSupported) =>
      _$this._claimsSupported = claimsSupported;

  ListBuilder<String>? _codeChallengeMethodsSupported;
  ListBuilder<String> get codeChallengeMethodsSupported =>
      _$this._codeChallengeMethodsSupported ??= ListBuilder<String>();
  set codeChallengeMethodsSupported(
          ListBuilder<String>? codeChallengeMethodsSupported) =>
      _$this._codeChallengeMethodsSupported = codeChallengeMethodsSupported;

  String? _credentialsEndpointDraft00;
  String? get credentialsEndpointDraft00 => _$this._credentialsEndpointDraft00;
  set credentialsEndpointDraft00(String? credentialsEndpointDraft00) =>
      _$this._credentialsEndpointDraft00 = credentialsEndpointDraft00;

  ListBuilder<OIDCConfigCredentialsSupportedDraft00Inner>?
      _credentialsSupportedDraft00;
  ListBuilder<OIDCConfigCredentialsSupportedDraft00Inner>
      get credentialsSupportedDraft00 => _$this._credentialsSupportedDraft00 ??=
          ListBuilder<OIDCConfigCredentialsSupportedDraft00Inner>();
  set credentialsSupportedDraft00(
          ListBuilder<OIDCConfigCredentialsSupportedDraft00Inner>?
              credentialsSupportedDraft00) =>
      _$this._credentialsSupportedDraft00 = credentialsSupportedDraft00;

  String? _endSessionEndpoint;
  String? get endSessionEndpoint => _$this._endSessionEndpoint;
  set endSessionEndpoint(String? endSessionEndpoint) =>
      _$this._endSessionEndpoint = endSessionEndpoint;

  bool? _frontchannelLogoutSessionSupported;
  bool? get frontchannelLogoutSessionSupported =>
      _$this._frontchannelLogoutSessionSupported;
  set frontchannelLogoutSessionSupported(
          bool? frontchannelLogoutSessionSupported) =>
      _$this._frontchannelLogoutSessionSupported =
          frontchannelLogoutSessionSupported;

  bool? _frontchannelLogoutSupported;
  bool? get frontchannelLogoutSupported => _$this._frontchannelLogoutSupported;
  set frontchannelLogoutSupported(bool? frontchannelLogoutSupported) =>
      _$this._frontchannelLogoutSupported = frontchannelLogoutSupported;

  ListBuilder<String>? _grantTypesSupported;
  ListBuilder<String> get grantTypesSupported =>
      _$this._grantTypesSupported ??= ListBuilder<String>();
  set grantTypesSupported(ListBuilder<String>? grantTypesSupported) =>
      _$this._grantTypesSupported = grantTypesSupported;

  ListBuilder<String>? _idTokenSignedResponseAlg;
  ListBuilder<String> get idTokenSignedResponseAlg =>
      _$this._idTokenSignedResponseAlg ??= ListBuilder<String>();
  set idTokenSignedResponseAlg(ListBuilder<String>? idTokenSignedResponseAlg) =>
      _$this._idTokenSignedResponseAlg = idTokenSignedResponseAlg;

  ListBuilder<String>? _idTokenSigningAlgValuesSupported;
  ListBuilder<String> get idTokenSigningAlgValuesSupported =>
      _$this._idTokenSigningAlgValuesSupported ??= ListBuilder<String>();
  set idTokenSigningAlgValuesSupported(
          ListBuilder<String>? idTokenSigningAlgValuesSupported) =>
      _$this._idTokenSigningAlgValuesSupported =
          idTokenSigningAlgValuesSupported;

  String? _issuer;
  String? get issuer => _$this._issuer;
  set issuer(String? issuer) => _$this._issuer = issuer;

  String? _jwksUri;
  String? get jwksUri => _$this._jwksUri;
  set jwksUri(String? jwksUri) => _$this._jwksUri = jwksUri;

  String? _registrationEndpoint;
  String? get registrationEndpoint => _$this._registrationEndpoint;
  set registrationEndpoint(String? registrationEndpoint) =>
      _$this._registrationEndpoint = registrationEndpoint;

  ListBuilder<String>? _requestObjectSigningAlgValuesSupported;
  ListBuilder<String> get requestObjectSigningAlgValuesSupported =>
      _$this._requestObjectSigningAlgValuesSupported ??= ListBuilder<String>();
  set requestObjectSigningAlgValuesSupported(
          ListBuilder<String>? requestObjectSigningAlgValuesSupported) =>
      _$this._requestObjectSigningAlgValuesSupported =
          requestObjectSigningAlgValuesSupported;

  bool? _requestParameterSupported;
  bool? get requestParameterSupported => _$this._requestParameterSupported;
  set requestParameterSupported(bool? requestParameterSupported) =>
      _$this._requestParameterSupported = requestParameterSupported;

  bool? _requestUriParameterSupported;
  bool? get requestUriParameterSupported =>
      _$this._requestUriParameterSupported;
  set requestUriParameterSupported(bool? requestUriParameterSupported) =>
      _$this._requestUriParameterSupported = requestUriParameterSupported;

  bool? _requireRequestUriRegistration;
  bool? get requireRequestUriRegistration =>
      _$this._requireRequestUriRegistration;
  set requireRequestUriRegistration(bool? requireRequestUriRegistration) =>
      _$this._requireRequestUriRegistration = requireRequestUriRegistration;

  ListBuilder<String>? _responseModesSupported;
  ListBuilder<String> get responseModesSupported =>
      _$this._responseModesSupported ??= ListBuilder<String>();
  set responseModesSupported(ListBuilder<String>? responseModesSupported) =>
      _$this._responseModesSupported = responseModesSupported;

  ListBuilder<String>? _responseTypesSupported;
  ListBuilder<String> get responseTypesSupported =>
      _$this._responseTypesSupported ??= ListBuilder<String>();
  set responseTypesSupported(ListBuilder<String>? responseTypesSupported) =>
      _$this._responseTypesSupported = responseTypesSupported;

  String? _revocationEndpoint;
  String? get revocationEndpoint => _$this._revocationEndpoint;
  set revocationEndpoint(String? revocationEndpoint) =>
      _$this._revocationEndpoint = revocationEndpoint;

  ListBuilder<String>? _scopesSupported;
  ListBuilder<String> get scopesSupported =>
      _$this._scopesSupported ??= ListBuilder<String>();
  set scopesSupported(ListBuilder<String>? scopesSupported) =>
      _$this._scopesSupported = scopesSupported;

  ListBuilder<String>? _subjectTypesSupported;
  ListBuilder<String> get subjectTypesSupported =>
      _$this._subjectTypesSupported ??= ListBuilder<String>();
  set subjectTypesSupported(ListBuilder<String>? subjectTypesSupported) =>
      _$this._subjectTypesSupported = subjectTypesSupported;

  String? _tokenEndpoint;
  String? get tokenEndpoint => _$this._tokenEndpoint;
  set tokenEndpoint(String? tokenEndpoint) =>
      _$this._tokenEndpoint = tokenEndpoint;

  ListBuilder<String>? _tokenEndpointAuthMethodsSupported;
  ListBuilder<String> get tokenEndpointAuthMethodsSupported =>
      _$this._tokenEndpointAuthMethodsSupported ??= ListBuilder<String>();
  set tokenEndpointAuthMethodsSupported(
          ListBuilder<String>? tokenEndpointAuthMethodsSupported) =>
      _$this._tokenEndpointAuthMethodsSupported =
          tokenEndpointAuthMethodsSupported;

  String? _userinfoEndpoint;
  String? get userinfoEndpoint => _$this._userinfoEndpoint;
  set userinfoEndpoint(String? userinfoEndpoint) =>
      _$this._userinfoEndpoint = userinfoEndpoint;

  ListBuilder<String>? _userinfoSignedResponseAlg;
  ListBuilder<String> get userinfoSignedResponseAlg =>
      _$this._userinfoSignedResponseAlg ??= ListBuilder<String>();
  set userinfoSignedResponseAlg(
          ListBuilder<String>? userinfoSignedResponseAlg) =>
      _$this._userinfoSignedResponseAlg = userinfoSignedResponseAlg;

  ListBuilder<String>? _userinfoSigningAlgValuesSupported;
  ListBuilder<String> get userinfoSigningAlgValuesSupported =>
      _$this._userinfoSigningAlgValuesSupported ??= ListBuilder<String>();
  set userinfoSigningAlgValuesSupported(
          ListBuilder<String>? userinfoSigningAlgValuesSupported) =>
      _$this._userinfoSigningAlgValuesSupported =
          userinfoSigningAlgValuesSupported;

  OIDCConfigBuilder() {
    OIDCConfig._defaults(this);
  }

  OIDCConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authorizationEndpoint = $v.authorizationEndpoint;
      _backchannelLogoutSessionSupported = $v.backchannelLogoutSessionSupported;
      _backchannelLogoutSupported = $v.backchannelLogoutSupported;
      _claimsParameterSupported = $v.claimsParameterSupported;
      _claimsSupported = $v.claimsSupported?.toBuilder();
      _codeChallengeMethodsSupported =
          $v.codeChallengeMethodsSupported?.toBuilder();
      _credentialsEndpointDraft00 = $v.credentialsEndpointDraft00;
      _credentialsSupportedDraft00 =
          $v.credentialsSupportedDraft00?.toBuilder();
      _endSessionEndpoint = $v.endSessionEndpoint;
      _frontchannelLogoutSessionSupported =
          $v.frontchannelLogoutSessionSupported;
      _frontchannelLogoutSupported = $v.frontchannelLogoutSupported;
      _grantTypesSupported = $v.grantTypesSupported?.toBuilder();
      _idTokenSignedResponseAlg = $v.idTokenSignedResponseAlg.toBuilder();
      _idTokenSigningAlgValuesSupported =
          $v.idTokenSigningAlgValuesSupported.toBuilder();
      _issuer = $v.issuer;
      _jwksUri = $v.jwksUri;
      _registrationEndpoint = $v.registrationEndpoint;
      _requestObjectSigningAlgValuesSupported =
          $v.requestObjectSigningAlgValuesSupported?.toBuilder();
      _requestParameterSupported = $v.requestParameterSupported;
      _requestUriParameterSupported = $v.requestUriParameterSupported;
      _requireRequestUriRegistration = $v.requireRequestUriRegistration;
      _responseModesSupported = $v.responseModesSupported?.toBuilder();
      _responseTypesSupported = $v.responseTypesSupported.toBuilder();
      _revocationEndpoint = $v.revocationEndpoint;
      _scopesSupported = $v.scopesSupported?.toBuilder();
      _subjectTypesSupported = $v.subjectTypesSupported.toBuilder();
      _tokenEndpoint = $v.tokenEndpoint;
      _tokenEndpointAuthMethodsSupported =
          $v.tokenEndpointAuthMethodsSupported?.toBuilder();
      _userinfoEndpoint = $v.userinfoEndpoint;
      _userinfoSignedResponseAlg = $v.userinfoSignedResponseAlg.toBuilder();
      _userinfoSigningAlgValuesSupported =
          $v.userinfoSigningAlgValuesSupported?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OIDCConfig other) {
    _$v = other as _$OIDCConfig;
  }

  @override
  void update(void Function(OIDCConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OIDCConfig build() => _build();

  _$OIDCConfig _build() {
    _$OIDCConfig _$result;
    try {
      _$result = _$v ??
          _$OIDCConfig._(
            authorizationEndpoint: BuiltValueNullFieldError.checkNotNull(
                authorizationEndpoint, r'OIDCConfig', 'authorizationEndpoint'),
            backchannelLogoutSessionSupported:
                backchannelLogoutSessionSupported,
            backchannelLogoutSupported: backchannelLogoutSupported,
            claimsParameterSupported: claimsParameterSupported,
            claimsSupported: _claimsSupported?.build(),
            codeChallengeMethodsSupported:
                _codeChallengeMethodsSupported?.build(),
            credentialsEndpointDraft00: credentialsEndpointDraft00,
            credentialsSupportedDraft00: _credentialsSupportedDraft00?.build(),
            endSessionEndpoint: endSessionEndpoint,
            frontchannelLogoutSessionSupported:
                frontchannelLogoutSessionSupported,
            frontchannelLogoutSupported: frontchannelLogoutSupported,
            grantTypesSupported: _grantTypesSupported?.build(),
            idTokenSignedResponseAlg: idTokenSignedResponseAlg.build(),
            idTokenSigningAlgValuesSupported:
                idTokenSigningAlgValuesSupported.build(),
            issuer: BuiltValueNullFieldError.checkNotNull(
                issuer, r'OIDCConfig', 'issuer'),
            jwksUri: BuiltValueNullFieldError.checkNotNull(
                jwksUri, r'OIDCConfig', 'jwksUri'),
            registrationEndpoint: registrationEndpoint,
            requestObjectSigningAlgValuesSupported:
                _requestObjectSigningAlgValuesSupported?.build(),
            requestParameterSupported: requestParameterSupported,
            requestUriParameterSupported: requestUriParameterSupported,
            requireRequestUriRegistration: requireRequestUriRegistration,
            responseModesSupported: _responseModesSupported?.build(),
            responseTypesSupported: responseTypesSupported.build(),
            revocationEndpoint: revocationEndpoint,
            scopesSupported: _scopesSupported?.build(),
            subjectTypesSupported: subjectTypesSupported.build(),
            tokenEndpoint: BuiltValueNullFieldError.checkNotNull(
                tokenEndpoint, r'OIDCConfig', 'tokenEndpoint'),
            tokenEndpointAuthMethodsSupported:
                _tokenEndpointAuthMethodsSupported?.build(),
            userinfoEndpoint: userinfoEndpoint,
            userinfoSignedResponseAlg: userinfoSignedResponseAlg.build(),
            userinfoSigningAlgValuesSupported:
                _userinfoSigningAlgValuesSupported?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'claimsSupported';
        _claimsSupported?.build();
        _$failedField = 'codeChallengeMethodsSupported';
        _codeChallengeMethodsSupported?.build();

        _$failedField = 'credentialsSupportedDraft00';
        _credentialsSupportedDraft00?.build();

        _$failedField = 'grantTypesSupported';
        _grantTypesSupported?.build();
        _$failedField = 'idTokenSignedResponseAlg';
        idTokenSignedResponseAlg.build();
        _$failedField = 'idTokenSigningAlgValuesSupported';
        idTokenSigningAlgValuesSupported.build();

        _$failedField = 'requestObjectSigningAlgValuesSupported';
        _requestObjectSigningAlgValuesSupported?.build();

        _$failedField = 'responseModesSupported';
        _responseModesSupported?.build();
        _$failedField = 'responseTypesSupported';
        responseTypesSupported.build();

        _$failedField = 'scopesSupported';
        _scopesSupported?.build();
        _$failedField = 'subjectTypesSupported';
        subjectTypesSupported.build();

        _$failedField = 'tokenEndpointAuthMethodsSupported';
        _tokenEndpointAuthMethodsSupported?.build();

        _$failedField = 'userinfoSignedResponseAlg';
        userinfoSignedResponseAlg.build();
        _$failedField = 'userinfoSigningAlgValuesSupported';
        _userinfoSigningAlgValuesSupported?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OIDCConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
