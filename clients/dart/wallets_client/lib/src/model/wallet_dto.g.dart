// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WalletDto extends WalletDto {
  @override
  final String? id;
  @override
  final String? did;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final JsonObject? didDocument;
  @override
  final String? ari;
  @override
  final BuiltList<WalletDtoKeysInner>? keys;
  @override
  final String? createdAt;
  @override
  final String? modifiedAt;

  factory _$WalletDto([void Function(WalletDtoBuilder)? updates]) =>
      (new WalletDtoBuilder()..update(updates))._build();

  _$WalletDto._(
      {this.id,
      this.did,
      this.name,
      this.description,
      this.didDocument,
      this.ari,
      this.keys,
      this.createdAt,
      this.modifiedAt})
      : super._();

  @override
  WalletDto rebuild(void Function(WalletDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WalletDtoBuilder toBuilder() => new WalletDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WalletDto &&
        id == other.id &&
        did == other.did &&
        name == other.name &&
        description == other.description &&
        didDocument == other.didDocument &&
        ari == other.ari &&
        keys == other.keys &&
        createdAt == other.createdAt &&
        modifiedAt == other.modifiedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, did.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, didDocument.hashCode);
    _$hash = $jc(_$hash, ari.hashCode);
    _$hash = $jc(_$hash, keys.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, modifiedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WalletDto')
          ..add('id', id)
          ..add('did', did)
          ..add('name', name)
          ..add('description', description)
          ..add('didDocument', didDocument)
          ..add('ari', ari)
          ..add('keys', keys)
          ..add('createdAt', createdAt)
          ..add('modifiedAt', modifiedAt))
        .toString();
  }
}

class WalletDtoBuilder implements Builder<WalletDto, WalletDtoBuilder> {
  _$WalletDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _did;
  String? get did => _$this._did;
  set did(String? did) => _$this._did = did;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  JsonObject? _didDocument;
  JsonObject? get didDocument => _$this._didDocument;
  set didDocument(JsonObject? didDocument) => _$this._didDocument = didDocument;

  String? _ari;
  String? get ari => _$this._ari;
  set ari(String? ari) => _$this._ari = ari;

  ListBuilder<WalletDtoKeysInner>? _keys;
  ListBuilder<WalletDtoKeysInner> get keys =>
      _$this._keys ??= new ListBuilder<WalletDtoKeysInner>();
  set keys(ListBuilder<WalletDtoKeysInner>? keys) => _$this._keys = keys;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _modifiedAt;
  String? get modifiedAt => _$this._modifiedAt;
  set modifiedAt(String? modifiedAt) => _$this._modifiedAt = modifiedAt;

  WalletDtoBuilder() {
    WalletDto._defaults(this);
  }

  WalletDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _did = $v.did;
      _name = $v.name;
      _description = $v.description;
      _didDocument = $v.didDocument;
      _ari = $v.ari;
      _keys = $v.keys?.toBuilder();
      _createdAt = $v.createdAt;
      _modifiedAt = $v.modifiedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WalletDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WalletDto;
  }

  @override
  void update(void Function(WalletDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WalletDto build() => _build();

  _$WalletDto _build() {
    _$WalletDto _$result;
    try {
      _$result = _$v ??
          new _$WalletDto._(
            id: id,
            did: did,
            name: name,
            description: description,
            didDocument: didDocument,
            ari: ari,
            keys: _keys?.build(),
            createdAt: createdAt,
            modifiedAt: modifiedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'keys';
        _keys?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WalletDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
