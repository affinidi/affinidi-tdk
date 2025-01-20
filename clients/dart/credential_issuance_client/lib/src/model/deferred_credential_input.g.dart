// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deferred_credential_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeferredCredentialInput extends DeferredCredentialInput {
  @override
  final String transactionId;

  factory _$DeferredCredentialInput(
          [void Function(DeferredCredentialInputBuilder)? updates]) =>
      (new DeferredCredentialInputBuilder()..update(updates))._build();

  _$DeferredCredentialInput._({required this.transactionId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        transactionId, r'DeferredCredentialInput', 'transactionId');
  }

  @override
  DeferredCredentialInput rebuild(
          void Function(DeferredCredentialInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeferredCredentialInputBuilder toBuilder() =>
      new DeferredCredentialInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeferredCredentialInput &&
        transactionId == other.transactionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transactionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeferredCredentialInput')
          ..add('transactionId', transactionId))
        .toString();
  }
}

class DeferredCredentialInputBuilder
    implements
        Builder<DeferredCredentialInput, DeferredCredentialInputBuilder> {
  _$DeferredCredentialInput? _$v;

  String? _transactionId;
  String? get transactionId => _$this._transactionId;
  set transactionId(String? transactionId) =>
      _$this._transactionId = transactionId;

  DeferredCredentialInputBuilder() {
    DeferredCredentialInput._defaults(this);
  }

  DeferredCredentialInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transactionId = $v.transactionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeferredCredentialInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeferredCredentialInput;
  }

  @override
  void update(void Function(DeferredCredentialInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeferredCredentialInput build() => _build();

  _$DeferredCredentialInput _build() {
    final _$result = _$v ??
        new _$DeferredCredentialInput._(
          transactionId: BuiltValueNullFieldError.checkNotNull(
              transactionId, r'DeferredCredentialInput', 'transactionId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
