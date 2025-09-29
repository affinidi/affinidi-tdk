// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'w3c_credential_holder.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$W3cCredentialHolder extends W3cCredentialHolder {
  @override
  final OneOf oneOf;

  factory _$W3cCredentialHolder(
          [void Function(W3cCredentialHolderBuilder)? updates]) =>
      (W3cCredentialHolderBuilder()..update(updates))._build();

  _$W3cCredentialHolder._({required this.oneOf}) : super._();
  @override
  W3cCredentialHolder rebuild(
          void Function(W3cCredentialHolderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  W3cCredentialHolderBuilder toBuilder() =>
      W3cCredentialHolderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is W3cCredentialHolder && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'W3cCredentialHolder')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class W3cCredentialHolderBuilder
    implements Builder<W3cCredentialHolder, W3cCredentialHolderBuilder> {
  _$W3cCredentialHolder? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  W3cCredentialHolderBuilder() {
    W3cCredentialHolder._defaults(this);
  }

  W3cCredentialHolderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(W3cCredentialHolder other) {
    _$v = other as _$W3cCredentialHolder;
  }

  @override
  void update(void Function(W3cCredentialHolderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  W3cCredentialHolder build() => _build();

  _$W3cCredentialHolder _build() {
    final _$result = _$v ??
        _$W3cCredentialHolder._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'W3cCredentialHolder', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
