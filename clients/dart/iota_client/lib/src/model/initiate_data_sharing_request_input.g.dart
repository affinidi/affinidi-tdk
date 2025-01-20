// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initiate_data_sharing_request_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InitiateDataSharingRequestInputModeEnum
    _$initiateDataSharingRequestInputModeEnum_redirect =
    const InitiateDataSharingRequestInputModeEnum._('redirect');
const InitiateDataSharingRequestInputModeEnum
    _$initiateDataSharingRequestInputModeEnum_websocket =
    const InitiateDataSharingRequestInputModeEnum._('websocket');

InitiateDataSharingRequestInputModeEnum
    _$initiateDataSharingRequestInputModeEnumValueOf(String name) {
  switch (name) {
    case 'redirect':
      return _$initiateDataSharingRequestInputModeEnum_redirect;
    case 'websocket':
      return _$initiateDataSharingRequestInputModeEnum_websocket;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InitiateDataSharingRequestInputModeEnum>
    _$initiateDataSharingRequestInputModeEnumValues = new BuiltSet<
        InitiateDataSharingRequestInputModeEnum>(const <InitiateDataSharingRequestInputModeEnum>[
  _$initiateDataSharingRequestInputModeEnum_redirect,
  _$initiateDataSharingRequestInputModeEnum_websocket,
]);

Serializer<InitiateDataSharingRequestInputModeEnum>
    _$initiateDataSharingRequestInputModeEnumSerializer =
    new _$InitiateDataSharingRequestInputModeEnumSerializer();

class _$InitiateDataSharingRequestInputModeEnumSerializer
    implements PrimitiveSerializer<InitiateDataSharingRequestInputModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'redirect': 'redirect',
    'websocket': 'websocket',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'redirect': 'redirect',
    'websocket': 'websocket',
  };

  @override
  final Iterable<Type> types = const <Type>[
    InitiateDataSharingRequestInputModeEnum
  ];
  @override
  final String wireName = 'InitiateDataSharingRequestInputModeEnum';

  @override
  Object serialize(Serializers serializers,
          InitiateDataSharingRequestInputModeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InitiateDataSharingRequestInputModeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InitiateDataSharingRequestInputModeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InitiateDataSharingRequestInput
    extends InitiateDataSharingRequestInput {
  @override
  final String queryId;
  @override
  final String correlationId;
  @override
  final int? tokenMaxAge;
  @override
  final String nonce;
  @override
  final String redirectUri;
  @override
  final String configurationId;
  @override
  final InitiateDataSharingRequestInputModeEnum mode;

  factory _$InitiateDataSharingRequestInput(
          [void Function(InitiateDataSharingRequestInputBuilder)? updates]) =>
      (new InitiateDataSharingRequestInputBuilder()..update(updates))._build();

  _$InitiateDataSharingRequestInput._(
      {required this.queryId,
      required this.correlationId,
      this.tokenMaxAge,
      required this.nonce,
      required this.redirectUri,
      required this.configurationId,
      required this.mode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        queryId, r'InitiateDataSharingRequestInput', 'queryId');
    BuiltValueNullFieldError.checkNotNull(
        correlationId, r'InitiateDataSharingRequestInput', 'correlationId');
    BuiltValueNullFieldError.checkNotNull(
        nonce, r'InitiateDataSharingRequestInput', 'nonce');
    BuiltValueNullFieldError.checkNotNull(
        redirectUri, r'InitiateDataSharingRequestInput', 'redirectUri');
    BuiltValueNullFieldError.checkNotNull(
        configurationId, r'InitiateDataSharingRequestInput', 'configurationId');
    BuiltValueNullFieldError.checkNotNull(
        mode, r'InitiateDataSharingRequestInput', 'mode');
  }

  @override
  InitiateDataSharingRequestInput rebuild(
          void Function(InitiateDataSharingRequestInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InitiateDataSharingRequestInputBuilder toBuilder() =>
      new InitiateDataSharingRequestInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InitiateDataSharingRequestInput &&
        queryId == other.queryId &&
        correlationId == other.correlationId &&
        tokenMaxAge == other.tokenMaxAge &&
        nonce == other.nonce &&
        redirectUri == other.redirectUri &&
        configurationId == other.configurationId &&
        mode == other.mode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, queryId.hashCode);
    _$hash = $jc(_$hash, correlationId.hashCode);
    _$hash = $jc(_$hash, tokenMaxAge.hashCode);
    _$hash = $jc(_$hash, nonce.hashCode);
    _$hash = $jc(_$hash, redirectUri.hashCode);
    _$hash = $jc(_$hash, configurationId.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InitiateDataSharingRequestInput')
          ..add('queryId', queryId)
          ..add('correlationId', correlationId)
          ..add('tokenMaxAge', tokenMaxAge)
          ..add('nonce', nonce)
          ..add('redirectUri', redirectUri)
          ..add('configurationId', configurationId)
          ..add('mode', mode))
        .toString();
  }
}

class InitiateDataSharingRequestInputBuilder
    implements
        Builder<InitiateDataSharingRequestInput,
            InitiateDataSharingRequestInputBuilder> {
  _$InitiateDataSharingRequestInput? _$v;

  String? _queryId;
  String? get queryId => _$this._queryId;
  set queryId(String? queryId) => _$this._queryId = queryId;

  String? _correlationId;
  String? get correlationId => _$this._correlationId;
  set correlationId(String? correlationId) =>
      _$this._correlationId = correlationId;

  int? _tokenMaxAge;
  int? get tokenMaxAge => _$this._tokenMaxAge;
  set tokenMaxAge(int? tokenMaxAge) => _$this._tokenMaxAge = tokenMaxAge;

  String? _nonce;
  String? get nonce => _$this._nonce;
  set nonce(String? nonce) => _$this._nonce = nonce;

  String? _redirectUri;
  String? get redirectUri => _$this._redirectUri;
  set redirectUri(String? redirectUri) => _$this._redirectUri = redirectUri;

  String? _configurationId;
  String? get configurationId => _$this._configurationId;
  set configurationId(String? configurationId) =>
      _$this._configurationId = configurationId;

  InitiateDataSharingRequestInputModeEnum? _mode;
  InitiateDataSharingRequestInputModeEnum? get mode => _$this._mode;
  set mode(InitiateDataSharingRequestInputModeEnum? mode) =>
      _$this._mode = mode;

  InitiateDataSharingRequestInputBuilder() {
    InitiateDataSharingRequestInput._defaults(this);
  }

  InitiateDataSharingRequestInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _queryId = $v.queryId;
      _correlationId = $v.correlationId;
      _tokenMaxAge = $v.tokenMaxAge;
      _nonce = $v.nonce;
      _redirectUri = $v.redirectUri;
      _configurationId = $v.configurationId;
      _mode = $v.mode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InitiateDataSharingRequestInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InitiateDataSharingRequestInput;
  }

  @override
  void update(void Function(InitiateDataSharingRequestInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InitiateDataSharingRequestInput build() => _build();

  _$InitiateDataSharingRequestInput _build() {
    final _$result = _$v ??
        new _$InitiateDataSharingRequestInput._(
          queryId: BuiltValueNullFieldError.checkNotNull(
              queryId, r'InitiateDataSharingRequestInput', 'queryId'),
          correlationId: BuiltValueNullFieldError.checkNotNull(correlationId,
              r'InitiateDataSharingRequestInput', 'correlationId'),
          tokenMaxAge: tokenMaxAge,
          nonce: BuiltValueNullFieldError.checkNotNull(
              nonce, r'InitiateDataSharingRequestInput', 'nonce'),
          redirectUri: BuiltValueNullFieldError.checkNotNull(
              redirectUri, r'InitiateDataSharingRequestInput', 'redirectUri'),
          configurationId: BuiltValueNullFieldError.checkNotNull(
              configurationId,
              r'InitiateDataSharingRequestInput',
              'configurationId'),
          mode: BuiltValueNullFieldError.checkNotNull(
              mode, r'InitiateDataSharingRequestInput', 'mode'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
