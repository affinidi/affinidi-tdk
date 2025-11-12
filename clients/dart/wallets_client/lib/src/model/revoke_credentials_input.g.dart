// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revoke_credentials_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RevokeCredentialsInput extends RevokeCredentialsInput {
  @override
  final String? revocationReason;
  @override
  final String credentialId;

  factory _$RevokeCredentialsInput(
          [void Function(RevokeCredentialsInputBuilder)? updates]) =>
      (RevokeCredentialsInputBuilder()..update(updates))._build();

  _$RevokeCredentialsInput._(
      {this.revocationReason, required this.credentialId})
      : super._();
  @override
  RevokeCredentialsInput rebuild(
          void Function(RevokeCredentialsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RevokeCredentialsInputBuilder toBuilder() =>
      RevokeCredentialsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RevokeCredentialsInput &&
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
    return (newBuiltValueToStringHelper(r'RevokeCredentialsInput')
          ..add('revocationReason', revocationReason)
          ..add('credentialId', credentialId))
        .toString();
  }
}

class RevokeCredentialsInputBuilder
    implements Builder<RevokeCredentialsInput, RevokeCredentialsInputBuilder> {
  _$RevokeCredentialsInput? _$v;

  String? _revocationReason;
  String? get revocationReason => _$this._revocationReason;
  set revocationReason(String? revocationReason) =>
      _$this._revocationReason = revocationReason;

  String? _credentialId;
  String? get credentialId => _$this._credentialId;
  set credentialId(String? credentialId) => _$this._credentialId = credentialId;

  RevokeCredentialsInputBuilder() {
    RevokeCredentialsInput._defaults(this);
  }

  RevokeCredentialsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _revocationReason = $v.revocationReason;
      _credentialId = $v.credentialId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RevokeCredentialsInput other) {
    _$v = other as _$RevokeCredentialsInput;
  }

  @override
  void update(void Function(RevokeCredentialsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RevokeCredentialsInput build() => _build();

  _$RevokeCredentialsInput _build() {
    final _$result = _$v ??
        _$RevokeCredentialsInput._(
          revocationReason: revocationReason,
          credentialId: BuiltValueNullFieldError.checkNotNull(
              credentialId, r'RevokeCredentialsInput', 'credentialId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
