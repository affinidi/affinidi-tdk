// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_iotavp_response_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FetchIOTAVPResponseInput extends FetchIOTAVPResponseInput {
  @override
  final String correlationId;
  @override
  final String transactionId;
  @override
  final String responseCode;
  @override
  final String configurationId;

  factory _$FetchIOTAVPResponseInput(
          [void Function(FetchIOTAVPResponseInputBuilder)? updates]) =>
      (FetchIOTAVPResponseInputBuilder()..update(updates))._build();

  _$FetchIOTAVPResponseInput._(
      {required this.correlationId,
      required this.transactionId,
      required this.responseCode,
      required this.configurationId})
      : super._();
  @override
  FetchIOTAVPResponseInput rebuild(
          void Function(FetchIOTAVPResponseInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FetchIOTAVPResponseInputBuilder toBuilder() =>
      FetchIOTAVPResponseInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FetchIOTAVPResponseInput &&
        correlationId == other.correlationId &&
        transactionId == other.transactionId &&
        responseCode == other.responseCode &&
        configurationId == other.configurationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, correlationId.hashCode);
    _$hash = $jc(_$hash, transactionId.hashCode);
    _$hash = $jc(_$hash, responseCode.hashCode);
    _$hash = $jc(_$hash, configurationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FetchIOTAVPResponseInput')
          ..add('correlationId', correlationId)
          ..add('transactionId', transactionId)
          ..add('responseCode', responseCode)
          ..add('configurationId', configurationId))
        .toString();
  }
}

class FetchIOTAVPResponseInputBuilder
    implements
        Builder<FetchIOTAVPResponseInput, FetchIOTAVPResponseInputBuilder> {
  _$FetchIOTAVPResponseInput? _$v;

  String? _correlationId;
  String? get correlationId => _$this._correlationId;
  set correlationId(String? correlationId) =>
      _$this._correlationId = correlationId;

  String? _transactionId;
  String? get transactionId => _$this._transactionId;
  set transactionId(String? transactionId) =>
      _$this._transactionId = transactionId;

  String? _responseCode;
  String? get responseCode => _$this._responseCode;
  set responseCode(String? responseCode) => _$this._responseCode = responseCode;

  String? _configurationId;
  String? get configurationId => _$this._configurationId;
  set configurationId(String? configurationId) =>
      _$this._configurationId = configurationId;

  FetchIOTAVPResponseInputBuilder() {
    FetchIOTAVPResponseInput._defaults(this);
  }

  FetchIOTAVPResponseInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _correlationId = $v.correlationId;
      _transactionId = $v.transactionId;
      _responseCode = $v.responseCode;
      _configurationId = $v.configurationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FetchIOTAVPResponseInput other) {
    _$v = other as _$FetchIOTAVPResponseInput;
  }

  @override
  void update(void Function(FetchIOTAVPResponseInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FetchIOTAVPResponseInput build() => _build();

  _$FetchIOTAVPResponseInput _build() {
    final _$result = _$v ??
        _$FetchIOTAVPResponseInput._(
          correlationId: BuiltValueNullFieldError.checkNotNull(
              correlationId, r'FetchIOTAVPResponseInput', 'correlationId'),
          transactionId: BuiltValueNullFieldError.checkNotNull(
              transactionId, r'FetchIOTAVPResponseInput', 'transactionId'),
          responseCode: BuiltValueNullFieldError.checkNotNull(
              responseCode, r'FetchIOTAVPResponseInput', 'responseCode'),
          configurationId: BuiltValueNullFieldError.checkNotNull(
              configurationId, r'FetchIOTAVPResponseInput', 'configurationId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
