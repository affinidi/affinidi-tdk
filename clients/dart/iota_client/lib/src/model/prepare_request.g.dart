// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prepare_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrepareRequest extends PrepareRequest {
  @override
  final String connectionClientId;
  @override
  final String queryId;
  @override
  final String correlationId;
  @override
  final int? tokenMaxAge;
  @override
  final String? audience;

  factory _$PrepareRequest([void Function(PrepareRequestBuilder)? updates]) =>
      (PrepareRequestBuilder()..update(updates))._build();

  _$PrepareRequest._(
      {required this.connectionClientId,
      required this.queryId,
      required this.correlationId,
      this.tokenMaxAge,
      this.audience})
      : super._();
  @override
  PrepareRequest rebuild(void Function(PrepareRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrepareRequestBuilder toBuilder() => PrepareRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrepareRequest &&
        connectionClientId == other.connectionClientId &&
        queryId == other.queryId &&
        correlationId == other.correlationId &&
        tokenMaxAge == other.tokenMaxAge &&
        audience == other.audience;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, connectionClientId.hashCode);
    _$hash = $jc(_$hash, queryId.hashCode);
    _$hash = $jc(_$hash, correlationId.hashCode);
    _$hash = $jc(_$hash, tokenMaxAge.hashCode);
    _$hash = $jc(_$hash, audience.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrepareRequest')
          ..add('connectionClientId', connectionClientId)
          ..add('queryId', queryId)
          ..add('correlationId', correlationId)
          ..add('tokenMaxAge', tokenMaxAge)
          ..add('audience', audience))
        .toString();
  }
}

class PrepareRequestBuilder
    implements Builder<PrepareRequest, PrepareRequestBuilder> {
  _$PrepareRequest? _$v;

  String? _connectionClientId;
  String? get connectionClientId => _$this._connectionClientId;
  set connectionClientId(String? connectionClientId) =>
      _$this._connectionClientId = connectionClientId;

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

  String? _audience;
  String? get audience => _$this._audience;
  set audience(String? audience) => _$this._audience = audience;

  PrepareRequestBuilder() {
    PrepareRequest._defaults(this);
  }

  PrepareRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _connectionClientId = $v.connectionClientId;
      _queryId = $v.queryId;
      _correlationId = $v.correlationId;
      _tokenMaxAge = $v.tokenMaxAge;
      _audience = $v.audience;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrepareRequest other) {
    _$v = other as _$PrepareRequest;
  }

  @override
  void update(void Function(PrepareRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrepareRequest build() => _build();

  _$PrepareRequest _build() {
    final _$result = _$v ??
        _$PrepareRequest._(
          connectionClientId: BuiltValueNullFieldError.checkNotNull(
              connectionClientId, r'PrepareRequest', 'connectionClientId'),
          queryId: BuiltValueNullFieldError.checkNotNull(
              queryId, r'PrepareRequest', 'queryId'),
          correlationId: BuiltValueNullFieldError.checkNotNull(
              correlationId, r'PrepareRequest', 'correlationId'),
          tokenMaxAge: tokenMaxAge,
          audience: audience,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
