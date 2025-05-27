// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cors_get_config_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CorsGetConfigOK extends CorsGetConfigOK {
  @override
  final String? corsGetConfigOk;

  factory _$CorsGetConfigOK([void Function(CorsGetConfigOKBuilder)? updates]) =>
      (CorsGetConfigOKBuilder()..update(updates))._build();

  _$CorsGetConfigOK._({this.corsGetConfigOk}) : super._();
  @override
  CorsGetConfigOK rebuild(void Function(CorsGetConfigOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CorsGetConfigOKBuilder toBuilder() => CorsGetConfigOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CorsGetConfigOK && corsGetConfigOk == other.corsGetConfigOk;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, corsGetConfigOk.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CorsGetConfigOK')
          ..add('corsGetConfigOk', corsGetConfigOk))
        .toString();
  }
}

class CorsGetConfigOKBuilder
    implements Builder<CorsGetConfigOK, CorsGetConfigOKBuilder> {
  _$CorsGetConfigOK? _$v;

  String? _corsGetConfigOk;
  String? get corsGetConfigOk => _$this._corsGetConfigOk;
  set corsGetConfigOk(String? corsGetConfigOk) =>
      _$this._corsGetConfigOk = corsGetConfigOk;

  CorsGetConfigOKBuilder() {
    CorsGetConfigOK._defaults(this);
  }

  CorsGetConfigOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _corsGetConfigOk = $v.corsGetConfigOk;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CorsGetConfigOK other) {
    _$v = other as _$CorsGetConfigOK;
  }

  @override
  void update(void Function(CorsGetConfigOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CorsGetConfigOK build() => _build();

  _$CorsGetConfigOK _build() {
    final _$result = _$v ??
        _$CorsGetConfigOK._(
          corsGetConfigOk: corsGetConfigOk,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
