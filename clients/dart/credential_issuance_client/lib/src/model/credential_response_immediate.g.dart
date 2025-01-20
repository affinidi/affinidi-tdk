// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_response_immediate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CredentialResponseImmediate extends CredentialResponseImmediate {
  @override
  final CredentialResponseImmediateCredential credential;
  @override
  final String cNonce;
  @override
  final CredentialResponseImmediateCNonceExpiresIn cNonceExpiresIn;

  factory _$CredentialResponseImmediate(
          [void Function(CredentialResponseImmediateBuilder)? updates]) =>
      (new CredentialResponseImmediateBuilder()..update(updates))._build();

  _$CredentialResponseImmediate._(
      {required this.credential,
      required this.cNonce,
      required this.cNonceExpiresIn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        credential, r'CredentialResponseImmediate', 'credential');
    BuiltValueNullFieldError.checkNotNull(
        cNonce, r'CredentialResponseImmediate', 'cNonce');
    BuiltValueNullFieldError.checkNotNull(
        cNonceExpiresIn, r'CredentialResponseImmediate', 'cNonceExpiresIn');
  }

  @override
  CredentialResponseImmediate rebuild(
          void Function(CredentialResponseImmediateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CredentialResponseImmediateBuilder toBuilder() =>
      new CredentialResponseImmediateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CredentialResponseImmediate &&
        credential == other.credential &&
        cNonce == other.cNonce &&
        cNonceExpiresIn == other.cNonceExpiresIn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, credential.hashCode);
    _$hash = $jc(_$hash, cNonce.hashCode);
    _$hash = $jc(_$hash, cNonceExpiresIn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CredentialResponseImmediate')
          ..add('credential', credential)
          ..add('cNonce', cNonce)
          ..add('cNonceExpiresIn', cNonceExpiresIn))
        .toString();
  }
}

class CredentialResponseImmediateBuilder
    implements
        Builder<CredentialResponseImmediate,
            CredentialResponseImmediateBuilder> {
  _$CredentialResponseImmediate? _$v;

  CredentialResponseImmediateCredentialBuilder? _credential;
  CredentialResponseImmediateCredentialBuilder get credential =>
      _$this._credential ??= new CredentialResponseImmediateCredentialBuilder();
  set credential(CredentialResponseImmediateCredentialBuilder? credential) =>
      _$this._credential = credential;

  String? _cNonce;
  String? get cNonce => _$this._cNonce;
  set cNonce(String? cNonce) => _$this._cNonce = cNonce;

  CredentialResponseImmediateCNonceExpiresInBuilder? _cNonceExpiresIn;
  CredentialResponseImmediateCNonceExpiresInBuilder get cNonceExpiresIn =>
      _$this._cNonceExpiresIn ??=
          new CredentialResponseImmediateCNonceExpiresInBuilder();
  set cNonceExpiresIn(
          CredentialResponseImmediateCNonceExpiresInBuilder? cNonceExpiresIn) =>
      _$this._cNonceExpiresIn = cNonceExpiresIn;

  CredentialResponseImmediateBuilder() {
    CredentialResponseImmediate._defaults(this);
  }

  CredentialResponseImmediateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _credential = $v.credential.toBuilder();
      _cNonce = $v.cNonce;
      _cNonceExpiresIn = $v.cNonceExpiresIn.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CredentialResponseImmediate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CredentialResponseImmediate;
  }

  @override
  void update(void Function(CredentialResponseImmediateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CredentialResponseImmediate build() => _build();

  _$CredentialResponseImmediate _build() {
    _$CredentialResponseImmediate _$result;
    try {
      _$result = _$v ??
          new _$CredentialResponseImmediate._(
            credential: credential.build(),
            cNonce: BuiltValueNullFieldError.checkNotNull(
                cNonce, r'CredentialResponseImmediate', 'cNonce'),
            cNonceExpiresIn: cNonceExpiresIn.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'credential';
        credential.build();

        _$failedField = 'cNonceExpiresIn';
        cNonceExpiresIn.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CredentialResponseImmediate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
