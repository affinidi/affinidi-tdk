// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'o_auth2_token_authorization_details_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OAuth2TokenAuthorizationDetailsInnerTypeEnum
    _$oAuth2TokenAuthorizationDetailsInnerTypeEnum_openidCredential =
    const OAuth2TokenAuthorizationDetailsInnerTypeEnum._('openidCredential');

OAuth2TokenAuthorizationDetailsInnerTypeEnum
    _$oAuth2TokenAuthorizationDetailsInnerTypeEnumValueOf(String name) {
  switch (name) {
    case 'openidCredential':
      return _$oAuth2TokenAuthorizationDetailsInnerTypeEnum_openidCredential;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<OAuth2TokenAuthorizationDetailsInnerTypeEnum>
    _$oAuth2TokenAuthorizationDetailsInnerTypeEnumValues = new BuiltSet<
        OAuth2TokenAuthorizationDetailsInnerTypeEnum>(const <OAuth2TokenAuthorizationDetailsInnerTypeEnum>[
  _$oAuth2TokenAuthorizationDetailsInnerTypeEnum_openidCredential,
]);

Serializer<OAuth2TokenAuthorizationDetailsInnerTypeEnum>
    _$oAuth2TokenAuthorizationDetailsInnerTypeEnumSerializer =
    new _$OAuth2TokenAuthorizationDetailsInnerTypeEnumSerializer();

class _$OAuth2TokenAuthorizationDetailsInnerTypeEnumSerializer
    implements
        PrimitiveSerializer<OAuth2TokenAuthorizationDetailsInnerTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'openidCredential': 'openid_credential',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'openid_credential': 'openidCredential',
  };

  @override
  final Iterable<Type> types = const <Type>[
    OAuth2TokenAuthorizationDetailsInnerTypeEnum
  ];
  @override
  final String wireName = 'OAuth2TokenAuthorizationDetailsInnerTypeEnum';

  @override
  Object serialize(Serializers serializers,
          OAuth2TokenAuthorizationDetailsInnerTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OAuth2TokenAuthorizationDetailsInnerTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OAuth2TokenAuthorizationDetailsInnerTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OAuth2TokenAuthorizationDetailsInner
    extends OAuth2TokenAuthorizationDetailsInner {
  @override
  final OAuth2TokenAuthorizationDetailsInnerTypeEnum type;
  @override
  final String credentialConfigurationId;
  @override
  final BuiltList<String>? credentialIdentifiers;

  factory _$OAuth2TokenAuthorizationDetailsInner(
          [void Function(OAuth2TokenAuthorizationDetailsInnerBuilder)?
              updates]) =>
      (new OAuth2TokenAuthorizationDetailsInnerBuilder()..update(updates))
          ._build();

  _$OAuth2TokenAuthorizationDetailsInner._(
      {required this.type,
      required this.credentialConfigurationId,
      this.credentialIdentifiers})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        type, r'OAuth2TokenAuthorizationDetailsInner', 'type');
    BuiltValueNullFieldError.checkNotNull(credentialConfigurationId,
        r'OAuth2TokenAuthorizationDetailsInner', 'credentialConfigurationId');
  }

  @override
  OAuth2TokenAuthorizationDetailsInner rebuild(
          void Function(OAuth2TokenAuthorizationDetailsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OAuth2TokenAuthorizationDetailsInnerBuilder toBuilder() =>
      new OAuth2TokenAuthorizationDetailsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OAuth2TokenAuthorizationDetailsInner &&
        type == other.type &&
        credentialConfigurationId == other.credentialConfigurationId &&
        credentialIdentifiers == other.credentialIdentifiers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, credentialConfigurationId.hashCode);
    _$hash = $jc(_$hash, credentialIdentifiers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OAuth2TokenAuthorizationDetailsInner')
          ..add('type', type)
          ..add('credentialConfigurationId', credentialConfigurationId)
          ..add('credentialIdentifiers', credentialIdentifiers))
        .toString();
  }
}

class OAuth2TokenAuthorizationDetailsInnerBuilder
    implements
        Builder<OAuth2TokenAuthorizationDetailsInner,
            OAuth2TokenAuthorizationDetailsInnerBuilder> {
  _$OAuth2TokenAuthorizationDetailsInner? _$v;

  OAuth2TokenAuthorizationDetailsInnerTypeEnum? _type;
  OAuth2TokenAuthorizationDetailsInnerTypeEnum? get type => _$this._type;
  set type(OAuth2TokenAuthorizationDetailsInnerTypeEnum? type) =>
      _$this._type = type;

  String? _credentialConfigurationId;
  String? get credentialConfigurationId => _$this._credentialConfigurationId;
  set credentialConfigurationId(String? credentialConfigurationId) =>
      _$this._credentialConfigurationId = credentialConfigurationId;

  ListBuilder<String>? _credentialIdentifiers;
  ListBuilder<String> get credentialIdentifiers =>
      _$this._credentialIdentifiers ??= new ListBuilder<String>();
  set credentialIdentifiers(ListBuilder<String>? credentialIdentifiers) =>
      _$this._credentialIdentifiers = credentialIdentifiers;

  OAuth2TokenAuthorizationDetailsInnerBuilder() {
    OAuth2TokenAuthorizationDetailsInner._defaults(this);
  }

  OAuth2TokenAuthorizationDetailsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _credentialConfigurationId = $v.credentialConfigurationId;
      _credentialIdentifiers = $v.credentialIdentifiers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OAuth2TokenAuthorizationDetailsInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OAuth2TokenAuthorizationDetailsInner;
  }

  @override
  void update(
      void Function(OAuth2TokenAuthorizationDetailsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OAuth2TokenAuthorizationDetailsInner build() => _build();

  _$OAuth2TokenAuthorizationDetailsInner _build() {
    _$OAuth2TokenAuthorizationDetailsInner _$result;
    try {
      _$result = _$v ??
          new _$OAuth2TokenAuthorizationDetailsInner._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'OAuth2TokenAuthorizationDetailsInner', 'type'),
            credentialConfigurationId: BuiltValueNullFieldError.checkNotNull(
                credentialConfigurationId,
                r'OAuth2TokenAuthorizationDetailsInner',
                'credentialConfigurationId'),
            credentialIdentifiers: _credentialIdentifiers?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'credentialIdentifiers';
        _credentialIdentifiers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OAuth2TokenAuthorizationDetailsInner',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
