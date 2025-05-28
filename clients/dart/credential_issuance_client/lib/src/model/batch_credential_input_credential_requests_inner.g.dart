// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_credential_input_credential_requests_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchCredentialInputCredentialRequestsInner
    extends BatchCredentialInputCredentialRequestsInner {
  @override
  final String? credentialIdentifier;
  @override
  final CredentialProof proof;

  factory _$BatchCredentialInputCredentialRequestsInner(
          [void Function(BatchCredentialInputCredentialRequestsInnerBuilder)?
              updates]) =>
      (BatchCredentialInputCredentialRequestsInnerBuilder()..update(updates))
          ._build();

  _$BatchCredentialInputCredentialRequestsInner._(
      {this.credentialIdentifier, required this.proof})
      : super._();
  @override
  BatchCredentialInputCredentialRequestsInner rebuild(
          void Function(BatchCredentialInputCredentialRequestsInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchCredentialInputCredentialRequestsInnerBuilder toBuilder() =>
      BatchCredentialInputCredentialRequestsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchCredentialInputCredentialRequestsInner &&
        credentialIdentifier == other.credentialIdentifier &&
        proof == other.proof;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, credentialIdentifier.hashCode);
    _$hash = $jc(_$hash, proof.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BatchCredentialInputCredentialRequestsInner')
          ..add('credentialIdentifier', credentialIdentifier)
          ..add('proof', proof))
        .toString();
  }
}

class BatchCredentialInputCredentialRequestsInnerBuilder
    implements
        Builder<BatchCredentialInputCredentialRequestsInner,
            BatchCredentialInputCredentialRequestsInnerBuilder> {
  _$BatchCredentialInputCredentialRequestsInner? _$v;

  String? _credentialIdentifier;
  String? get credentialIdentifier => _$this._credentialIdentifier;
  set credentialIdentifier(String? credentialIdentifier) =>
      _$this._credentialIdentifier = credentialIdentifier;

  CredentialProofBuilder? _proof;
  CredentialProofBuilder get proof =>
      _$this._proof ??= CredentialProofBuilder();
  set proof(CredentialProofBuilder? proof) => _$this._proof = proof;

  BatchCredentialInputCredentialRequestsInnerBuilder() {
    BatchCredentialInputCredentialRequestsInner._defaults(this);
  }

  BatchCredentialInputCredentialRequestsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _credentialIdentifier = $v.credentialIdentifier;
      _proof = $v.proof.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchCredentialInputCredentialRequestsInner other) {
    _$v = other as _$BatchCredentialInputCredentialRequestsInner;
  }

  @override
  void update(
      void Function(BatchCredentialInputCredentialRequestsInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchCredentialInputCredentialRequestsInner build() => _build();

  _$BatchCredentialInputCredentialRequestsInner _build() {
    _$BatchCredentialInputCredentialRequestsInner _$result;
    try {
      _$result = _$v ??
          _$BatchCredentialInputCredentialRequestsInner._(
            credentialIdentifier: credentialIdentifier,
            proof: proof.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'proof';
        proof.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'BatchCredentialInputCredentialRequestsInner',
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
