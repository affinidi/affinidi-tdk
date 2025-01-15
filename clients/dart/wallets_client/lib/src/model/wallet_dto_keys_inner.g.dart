// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_dto_keys_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WalletDtoKeysInner extends WalletDtoKeysInner {
  @override
  final String? id;
  @override
  final String? ari;

  factory _$WalletDtoKeysInner(
          [void Function(WalletDtoKeysInnerBuilder)? updates]) =>
      (new WalletDtoKeysInnerBuilder()..update(updates))._build();

  _$WalletDtoKeysInner._({this.id, this.ari}) : super._();

  @override
  WalletDtoKeysInner rebuild(
          void Function(WalletDtoKeysInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WalletDtoKeysInnerBuilder toBuilder() =>
      new WalletDtoKeysInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WalletDtoKeysInner && id == other.id && ari == other.ari;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, ari.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WalletDtoKeysInner')
          ..add('id', id)
          ..add('ari', ari))
        .toString();
  }
}

class WalletDtoKeysInnerBuilder
    implements Builder<WalletDtoKeysInner, WalletDtoKeysInnerBuilder> {
  _$WalletDtoKeysInner? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _ari;
  String? get ari => _$this._ari;
  set ari(String? ari) => _$this._ari = ari;

  WalletDtoKeysInnerBuilder() {
    WalletDtoKeysInner._defaults(this);
  }

  WalletDtoKeysInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _ari = $v.ari;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WalletDtoKeysInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WalletDtoKeysInner;
  }

  @override
  void update(void Function(WalletDtoKeysInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WalletDtoKeysInner build() => _build();

  _$WalletDtoKeysInner _build() {
    final _$result = _$v ??
        new _$WalletDtoKeysInner._(
          id: id,
          ari: ari,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
