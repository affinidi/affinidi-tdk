// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cors_grant_access_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CorsGrantAccessOK extends CorsGrantAccessOK {
  @override
  final String? corsGrantAccessOk;

  factory _$CorsGrantAccessOK(
          [void Function(CorsGrantAccessOKBuilder)? updates]) =>
      (new CorsGrantAccessOKBuilder()..update(updates))._build();

  _$CorsGrantAccessOK._({this.corsGrantAccessOk}) : super._();

  @override
  CorsGrantAccessOK rebuild(void Function(CorsGrantAccessOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CorsGrantAccessOKBuilder toBuilder() =>
      new CorsGrantAccessOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CorsGrantAccessOK &&
        corsGrantAccessOk == other.corsGrantAccessOk;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, corsGrantAccessOk.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CorsGrantAccessOK')
          ..add('corsGrantAccessOk', corsGrantAccessOk))
        .toString();
  }
}

class CorsGrantAccessOKBuilder
    implements Builder<CorsGrantAccessOK, CorsGrantAccessOKBuilder> {
  _$CorsGrantAccessOK? _$v;

  String? _corsGrantAccessOk;
  String? get corsGrantAccessOk => _$this._corsGrantAccessOk;
  set corsGrantAccessOk(String? corsGrantAccessOk) =>
      _$this._corsGrantAccessOk = corsGrantAccessOk;

  CorsGrantAccessOKBuilder() {
    CorsGrantAccessOK._defaults(this);
  }

  CorsGrantAccessOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _corsGrantAccessOk = $v.corsGrantAccessOk;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CorsGrantAccessOK other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CorsGrantAccessOK;
  }

  @override
  void update(void Function(CorsGrantAccessOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CorsGrantAccessOK build() => _build();

  _$CorsGrantAccessOK _build() {
    final _$result = _$v ??
        new _$CorsGrantAccessOK._(
          corsGrantAccessOk: corsGrantAccessOk,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
