// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'id_token_mapping_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IdTokenMappingItem extends IdTokenMappingItem {
  @override
  final String sourceField;
  @override
  final String idTokenClaim;
  @override
  final String? inputDescriptorId;

  factory _$IdTokenMappingItem(
          [void Function(IdTokenMappingItemBuilder)? updates]) =>
      (new IdTokenMappingItemBuilder()..update(updates))._build();

  _$IdTokenMappingItem._(
      {required this.sourceField,
      required this.idTokenClaim,
      this.inputDescriptorId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        sourceField, r'IdTokenMappingItem', 'sourceField');
    BuiltValueNullFieldError.checkNotNull(
        idTokenClaim, r'IdTokenMappingItem', 'idTokenClaim');
  }

  @override
  IdTokenMappingItem rebuild(
          void Function(IdTokenMappingItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IdTokenMappingItemBuilder toBuilder() =>
      new IdTokenMappingItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IdTokenMappingItem &&
        sourceField == other.sourceField &&
        idTokenClaim == other.idTokenClaim &&
        inputDescriptorId == other.inputDescriptorId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceField.hashCode);
    _$hash = $jc(_$hash, idTokenClaim.hashCode);
    _$hash = $jc(_$hash, inputDescriptorId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IdTokenMappingItem')
          ..add('sourceField', sourceField)
          ..add('idTokenClaim', idTokenClaim)
          ..add('inputDescriptorId', inputDescriptorId))
        .toString();
  }
}

class IdTokenMappingItemBuilder
    implements Builder<IdTokenMappingItem, IdTokenMappingItemBuilder> {
  _$IdTokenMappingItem? _$v;

  String? _sourceField;
  String? get sourceField => _$this._sourceField;
  set sourceField(String? sourceField) => _$this._sourceField = sourceField;

  String? _idTokenClaim;
  String? get idTokenClaim => _$this._idTokenClaim;
  set idTokenClaim(String? idTokenClaim) => _$this._idTokenClaim = idTokenClaim;

  String? _inputDescriptorId;
  String? get inputDescriptorId => _$this._inputDescriptorId;
  set inputDescriptorId(String? inputDescriptorId) =>
      _$this._inputDescriptorId = inputDescriptorId;

  IdTokenMappingItemBuilder() {
    IdTokenMappingItem._defaults(this);
  }

  IdTokenMappingItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceField = $v.sourceField;
      _idTokenClaim = $v.idTokenClaim;
      _inputDescriptorId = $v.inputDescriptorId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IdTokenMappingItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IdTokenMappingItem;
  }

  @override
  void update(void Function(IdTokenMappingItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IdTokenMappingItem build() => _build();

  _$IdTokenMappingItem _build() {
    final _$result = _$v ??
        new _$IdTokenMappingItem._(
          sourceField: BuiltValueNullFieldError.checkNotNull(
              sourceField, r'IdTokenMappingItem', 'sourceField'),
          idTokenClaim: BuiltValueNullFieldError.checkNotNull(
              idTokenClaim, r'IdTokenMappingItem', 'idTokenClaim'),
          inputDescriptorId: inputDescriptorId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
