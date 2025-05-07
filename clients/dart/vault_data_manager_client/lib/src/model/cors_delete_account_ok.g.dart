// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cors_delete_account_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CorsDeleteAccountOK extends CorsDeleteAccountOK {
  @override
  final String? corsDeleteAccountOk;

  factory _$CorsDeleteAccountOK(
          [void Function(CorsDeleteAccountOKBuilder)? updates]) =>
      (new CorsDeleteAccountOKBuilder()..update(updates))._build();

  _$CorsDeleteAccountOK._({this.corsDeleteAccountOk}) : super._();

  @override
  CorsDeleteAccountOK rebuild(
          void Function(CorsDeleteAccountOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CorsDeleteAccountOKBuilder toBuilder() =>
      new CorsDeleteAccountOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CorsDeleteAccountOK &&
        corsDeleteAccountOk == other.corsDeleteAccountOk;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, corsDeleteAccountOk.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CorsDeleteAccountOK')
          ..add('corsDeleteAccountOk', corsDeleteAccountOk))
        .toString();
  }
}

class CorsDeleteAccountOKBuilder
    implements Builder<CorsDeleteAccountOK, CorsDeleteAccountOKBuilder> {
  _$CorsDeleteAccountOK? _$v;

  String? _corsDeleteAccountOk;
  String? get corsDeleteAccountOk => _$this._corsDeleteAccountOk;
  set corsDeleteAccountOk(String? corsDeleteAccountOk) =>
      _$this._corsDeleteAccountOk = corsDeleteAccountOk;

  CorsDeleteAccountOKBuilder() {
    CorsDeleteAccountOK._defaults(this);
  }

  CorsDeleteAccountOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _corsDeleteAccountOk = $v.corsDeleteAccountOk;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CorsDeleteAccountOK other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CorsDeleteAccountOK;
  }

  @override
  void update(void Function(CorsDeleteAccountOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CorsDeleteAccountOK build() => _build();

  _$CorsDeleteAccountOK _build() {
    final _$result = _$v ??
        new _$CorsDeleteAccountOK._(
          corsDeleteAccountOk: corsDeleteAccountOk,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
