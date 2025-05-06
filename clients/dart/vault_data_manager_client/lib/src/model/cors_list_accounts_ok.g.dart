// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cors_list_accounts_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CorsListAccountsOK extends CorsListAccountsOK {
  @override
  final String? corsListAccountsOk;

  factory _$CorsListAccountsOK(
          [void Function(CorsListAccountsOKBuilder)? updates]) =>
      (new CorsListAccountsOKBuilder()..update(updates))._build();

  _$CorsListAccountsOK._({this.corsListAccountsOk}) : super._();

  @override
  CorsListAccountsOK rebuild(
          void Function(CorsListAccountsOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CorsListAccountsOKBuilder toBuilder() =>
      new CorsListAccountsOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CorsListAccountsOK &&
        corsListAccountsOk == other.corsListAccountsOk;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, corsListAccountsOk.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CorsListAccountsOK')
          ..add('corsListAccountsOk', corsListAccountsOk))
        .toString();
  }
}

class CorsListAccountsOKBuilder
    implements Builder<CorsListAccountsOK, CorsListAccountsOKBuilder> {
  _$CorsListAccountsOK? _$v;

  String? _corsListAccountsOk;
  String? get corsListAccountsOk => _$this._corsListAccountsOk;
  set corsListAccountsOk(String? corsListAccountsOk) =>
      _$this._corsListAccountsOk = corsListAccountsOk;

  CorsListAccountsOKBuilder() {
    CorsListAccountsOK._defaults(this);
  }

  CorsListAccountsOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _corsListAccountsOk = $v.corsListAccountsOk;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CorsListAccountsOK other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CorsListAccountsOK;
  }

  @override
  void update(void Function(CorsListAccountsOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CorsListAccountsOK build() => _build();

  _$CorsListAccountsOK _build() {
    final _$result = _$v ??
        new _$CorsListAccountsOK._(
          corsListAccountsOk: corsListAccountsOk,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
