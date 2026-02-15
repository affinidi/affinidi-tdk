// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_v2_dto_keys_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WalletV2DtoKeysInner extends WalletV2DtoKeysInner {
  @override
  final String keyId;
  @override
  final String kmsKeyId;
  @override
  final String kmsKeyAri;
  @override
  final String kmsKeyType;
  @override
  final String? relationships;

  factory _$WalletV2DtoKeysInner(
          [void Function(WalletV2DtoKeysInnerBuilder)? updates]) =>
      (WalletV2DtoKeysInnerBuilder()..update(updates))._build();

  _$WalletV2DtoKeysInner._(
      {required this.keyId,
      required this.kmsKeyId,
      required this.kmsKeyAri,
      required this.kmsKeyType,
      this.relationships})
      : super._();
  @override
  WalletV2DtoKeysInner rebuild(
          void Function(WalletV2DtoKeysInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WalletV2DtoKeysInnerBuilder toBuilder() =>
      WalletV2DtoKeysInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WalletV2DtoKeysInner &&
        keyId == other.keyId &&
        kmsKeyId == other.kmsKeyId &&
        kmsKeyAri == other.kmsKeyAri &&
        kmsKeyType == other.kmsKeyType &&
        relationships == other.relationships;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, keyId.hashCode);
    _$hash = $jc(_$hash, kmsKeyId.hashCode);
    _$hash = $jc(_$hash, kmsKeyAri.hashCode);
    _$hash = $jc(_$hash, kmsKeyType.hashCode);
    _$hash = $jc(_$hash, relationships.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WalletV2DtoKeysInner')
          ..add('keyId', keyId)
          ..add('kmsKeyId', kmsKeyId)
          ..add('kmsKeyAri', kmsKeyAri)
          ..add('kmsKeyType', kmsKeyType)
          ..add('relationships', relationships))
        .toString();
  }
}

class WalletV2DtoKeysInnerBuilder
    implements Builder<WalletV2DtoKeysInner, WalletV2DtoKeysInnerBuilder> {
  _$WalletV2DtoKeysInner? _$v;

  String? _keyId;
  String? get keyId => _$this._keyId;
  set keyId(String? keyId) => _$this._keyId = keyId;

  String? _kmsKeyId;
  String? get kmsKeyId => _$this._kmsKeyId;
  set kmsKeyId(String? kmsKeyId) => _$this._kmsKeyId = kmsKeyId;

  String? _kmsKeyAri;
  String? get kmsKeyAri => _$this._kmsKeyAri;
  set kmsKeyAri(String? kmsKeyAri) => _$this._kmsKeyAri = kmsKeyAri;

  String? _kmsKeyType;
  String? get kmsKeyType => _$this._kmsKeyType;
  set kmsKeyType(String? kmsKeyType) => _$this._kmsKeyType = kmsKeyType;

  String? _relationships;
  String? get relationships => _$this._relationships;
  set relationships(String? relationships) =>
      _$this._relationships = relationships;

  WalletV2DtoKeysInnerBuilder() {
    WalletV2DtoKeysInner._defaults(this);
  }

  WalletV2DtoKeysInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _keyId = $v.keyId;
      _kmsKeyId = $v.kmsKeyId;
      _kmsKeyAri = $v.kmsKeyAri;
      _kmsKeyType = $v.kmsKeyType;
      _relationships = $v.relationships;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WalletV2DtoKeysInner other) {
    _$v = other as _$WalletV2DtoKeysInner;
  }

  @override
  void update(void Function(WalletV2DtoKeysInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WalletV2DtoKeysInner build() => _build();

  _$WalletV2DtoKeysInner _build() {
    final _$result = _$v ??
        _$WalletV2DtoKeysInner._(
          keyId: BuiltValueNullFieldError.checkNotNull(
              keyId, r'WalletV2DtoKeysInner', 'keyId'),
          kmsKeyId: BuiltValueNullFieldError.checkNotNull(
              kmsKeyId, r'WalletV2DtoKeysInner', 'kmsKeyId'),
          kmsKeyAri: BuiltValueNullFieldError.checkNotNull(
              kmsKeyAri, r'WalletV2DtoKeysInner', 'kmsKeyAri'),
          kmsKeyType: BuiltValueNullFieldError.checkNotNull(
              kmsKeyType, r'WalletV2DtoKeysInner', 'kmsKeyType'),
          relationships: relationships,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
