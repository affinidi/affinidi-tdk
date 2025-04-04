// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_credential_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchCredentialResponse extends BatchCredentialResponse {
  @override
  final BuiltList<BatchCredentialResponseCredentialResponsesInner>
      credentialResponses;
  @override
  final String? cNonce;
  @override
  final int? cNonceExpiresIn;

  factory _$BatchCredentialResponse(
          [void Function(BatchCredentialResponseBuilder)? updates]) =>
      (new BatchCredentialResponseBuilder()..update(updates))._build();

  _$BatchCredentialResponse._(
      {required this.credentialResponses, this.cNonce, this.cNonceExpiresIn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        credentialResponses, r'BatchCredentialResponse', 'credentialResponses');
  }

  @override
  BatchCredentialResponse rebuild(
          void Function(BatchCredentialResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchCredentialResponseBuilder toBuilder() =>
      new BatchCredentialResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchCredentialResponse &&
        credentialResponses == other.credentialResponses &&
        cNonce == other.cNonce &&
        cNonceExpiresIn == other.cNonceExpiresIn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, credentialResponses.hashCode);
    _$hash = $jc(_$hash, cNonce.hashCode);
    _$hash = $jc(_$hash, cNonceExpiresIn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BatchCredentialResponse')
          ..add('credentialResponses', credentialResponses)
          ..add('cNonce', cNonce)
          ..add('cNonceExpiresIn', cNonceExpiresIn))
        .toString();
  }
}

class BatchCredentialResponseBuilder
    implements
        Builder<BatchCredentialResponse, BatchCredentialResponseBuilder> {
  _$BatchCredentialResponse? _$v;

  ListBuilder<BatchCredentialResponseCredentialResponsesInner>?
      _credentialResponses;
  ListBuilder<BatchCredentialResponseCredentialResponsesInner>
      get credentialResponses => _$this._credentialResponses ??=
          new ListBuilder<BatchCredentialResponseCredentialResponsesInner>();
  set credentialResponses(
          ListBuilder<BatchCredentialResponseCredentialResponsesInner>?
              credentialResponses) =>
      _$this._credentialResponses = credentialResponses;

  String? _cNonce;
  String? get cNonce => _$this._cNonce;
  set cNonce(String? cNonce) => _$this._cNonce = cNonce;

  int? _cNonceExpiresIn;
  int? get cNonceExpiresIn => _$this._cNonceExpiresIn;
  set cNonceExpiresIn(int? cNonceExpiresIn) =>
      _$this._cNonceExpiresIn = cNonceExpiresIn;

  BatchCredentialResponseBuilder() {
    BatchCredentialResponse._defaults(this);
  }

  BatchCredentialResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _credentialResponses = $v.credentialResponses.toBuilder();
      _cNonce = $v.cNonce;
      _cNonceExpiresIn = $v.cNonceExpiresIn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchCredentialResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BatchCredentialResponse;
  }

  @override
  void update(void Function(BatchCredentialResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchCredentialResponse build() => _build();

  _$BatchCredentialResponse _build() {
    _$BatchCredentialResponse _$result;
    try {
      _$result = _$v ??
          new _$BatchCredentialResponse._(
            credentialResponses: credentialResponses.build(),
            cNonce: cNonce,
            cNonceExpiresIn: cNonceExpiresIn,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'credentialResponses';
        credentialResponses.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BatchCredentialResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
