// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edek_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdekInfo extends EdekInfo {
  @override
  final String edek;
  @override
  final String dekekId;

  factory _$EdekInfo([void Function(EdekInfoBuilder)? updates]) =>
      (new EdekInfoBuilder()..update(updates))._build();

  _$EdekInfo._({required this.edek, required this.dekekId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(edek, r'EdekInfo', 'edek');
    BuiltValueNullFieldError.checkNotNull(dekekId, r'EdekInfo', 'dekekId');
  }

  @override
  EdekInfo rebuild(void Function(EdekInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdekInfoBuilder toBuilder() => new EdekInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdekInfo && edek == other.edek && dekekId == other.dekekId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, edek.hashCode);
    _$hash = $jc(_$hash, dekekId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdekInfo')
          ..add('edek', edek)
          ..add('dekekId', dekekId))
        .toString();
  }
}

class EdekInfoBuilder implements Builder<EdekInfo, EdekInfoBuilder> {
  _$EdekInfo? _$v;

  String? _edek;
  String? get edek => _$this._edek;
  set edek(String? edek) => _$this._edek = edek;

  String? _dekekId;
  String? get dekekId => _$this._dekekId;
  set dekekId(String? dekekId) => _$this._dekekId = dekekId;

  EdekInfoBuilder() {
    EdekInfo._defaults(this);
  }

  EdekInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _edek = $v.edek;
      _dekekId = $v.dekekId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdekInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EdekInfo;
  }

  @override
  void update(void Function(EdekInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdekInfo build() => _build();

  _$EdekInfo _build() {
    final _$result = _$v ??
        new _$EdekInfo._(
          edek:
              BuiltValueNullFieldError.checkNotNull(edek, r'EdekInfo', 'edek'),
          dekekId: BuiltValueNullFieldError.checkNotNull(
              dekekId, r'EdekInfo', 'dekekId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
