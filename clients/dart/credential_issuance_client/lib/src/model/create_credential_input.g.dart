// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_credential_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateCredentialInput extends CreateCredentialInput {
  @override
  final String? credentialIdentifier;
  @override
  final CredentialProof proof;

  factory _$CreateCredentialInput(
          [void Function(CreateCredentialInputBuilder)? updates]) =>
      (CreateCredentialInputBuilder()..update(updates))._build();

  _$CreateCredentialInput._({this.credentialIdentifier, required this.proof})
      : super._();
  @override
  CreateCredentialInput rebuild(
          void Function(CreateCredentialInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateCredentialInputBuilder toBuilder() =>
      CreateCredentialInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCredentialInput &&
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
    return (newBuiltValueToStringHelper(r'CreateCredentialInput')
          ..add('credentialIdentifier', credentialIdentifier)
          ..add('proof', proof))
        .toString();
  }
}

class CreateCredentialInputBuilder
    implements Builder<CreateCredentialInput, CreateCredentialInputBuilder> {
  _$CreateCredentialInput? _$v;

  String? _credentialIdentifier;
  String? get credentialIdentifier => _$this._credentialIdentifier;
  set credentialIdentifier(String? credentialIdentifier) =>
      _$this._credentialIdentifier = credentialIdentifier;

  CredentialProofBuilder? _proof;
  CredentialProofBuilder get proof =>
      _$this._proof ??= CredentialProofBuilder();
  set proof(CredentialProofBuilder? proof) => _$this._proof = proof;

  CreateCredentialInputBuilder() {
    CreateCredentialInput._defaults(this);
  }

  CreateCredentialInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _credentialIdentifier = $v.credentialIdentifier;
      _proof = $v.proof.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateCredentialInput other) {
    _$v = other as _$CreateCredentialInput;
  }

  @override
  void update(void Function(CreateCredentialInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateCredentialInput build() => _build();

  _$CreateCredentialInput _build() {
    _$CreateCredentialInput _$result;
    try {
      _$result = _$v ??
          _$CreateCredentialInput._(
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
            r'CreateCredentialInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
