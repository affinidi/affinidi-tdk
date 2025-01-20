// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revoke_credential_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RevokeCredentialInput extends RevokeCredentialInput {
  @override
  final String? revocationReason;
  @override
  final String? credentialId;

  factory _$RevokeCredentialInput(
          [void Function(RevokeCredentialInputBuilder)? updates]) =>
      (new RevokeCredentialInputBuilder()..update(updates))._build();

  _$RevokeCredentialInput._({this.revocationReason, this.credentialId})
      : super._();

  @override
  RevokeCredentialInput rebuild(
          void Function(RevokeCredentialInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RevokeCredentialInputBuilder toBuilder() =>
      new RevokeCredentialInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RevokeCredentialInput &&
        revocationReason == other.revocationReason &&
        credentialId == other.credentialId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, revocationReason.hashCode);
    _$hash = $jc(_$hash, credentialId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RevokeCredentialInput')
          ..add('revocationReason', revocationReason)
          ..add('credentialId', credentialId))
        .toString();
  }
}

class RevokeCredentialInputBuilder
    implements Builder<RevokeCredentialInput, RevokeCredentialInputBuilder> {
  _$RevokeCredentialInput? _$v;

  String? _revocationReason;
  String? get revocationReason => _$this._revocationReason;
  set revocationReason(String? revocationReason) =>
      _$this._revocationReason = revocationReason;

  String? _credentialId;
  String? get credentialId => _$this._credentialId;
  set credentialId(String? credentialId) => _$this._credentialId = credentialId;

  RevokeCredentialInputBuilder() {
    RevokeCredentialInput._defaults(this);
  }

  RevokeCredentialInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _revocationReason = $v.revocationReason;
      _credentialId = $v.credentialId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RevokeCredentialInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RevokeCredentialInput;
  }

  @override
  void update(void Function(RevokeCredentialInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RevokeCredentialInput build() => _build();

  _$RevokeCredentialInput _build() {
    final _$result = _$v ??
        new _$RevokeCredentialInput._(
          revocationReason: revocationReason,
          credentialId: credentialId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
