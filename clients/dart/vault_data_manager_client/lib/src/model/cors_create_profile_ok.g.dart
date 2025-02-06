// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cors_create_profile_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CorsCreateProfileOK extends CorsCreateProfileOK {
  @override
  final String? corsCreateProfileOk;

  factory _$CorsCreateProfileOK(
          [void Function(CorsCreateProfileOKBuilder)? updates]) =>
      (new CorsCreateProfileOKBuilder()..update(updates))._build();

  _$CorsCreateProfileOK._({this.corsCreateProfileOk}) : super._();

  @override
  CorsCreateProfileOK rebuild(
          void Function(CorsCreateProfileOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CorsCreateProfileOKBuilder toBuilder() =>
      new CorsCreateProfileOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CorsCreateProfileOK &&
        corsCreateProfileOk == other.corsCreateProfileOk;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, corsCreateProfileOk.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CorsCreateProfileOK')
          ..add('corsCreateProfileOk', corsCreateProfileOk))
        .toString();
  }
}

class CorsCreateProfileOKBuilder
    implements Builder<CorsCreateProfileOK, CorsCreateProfileOKBuilder> {
  _$CorsCreateProfileOK? _$v;

  String? _corsCreateProfileOk;
  String? get corsCreateProfileOk => _$this._corsCreateProfileOk;
  set corsCreateProfileOk(String? corsCreateProfileOk) =>
      _$this._corsCreateProfileOk = corsCreateProfileOk;

  CorsCreateProfileOKBuilder() {
    CorsCreateProfileOK._defaults(this);
  }

  CorsCreateProfileOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _corsCreateProfileOk = $v.corsCreateProfileOk;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CorsCreateProfileOK other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CorsCreateProfileOK;
  }

  @override
  void update(void Function(CorsCreateProfileOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CorsCreateProfileOK build() => _build();

  _$CorsCreateProfileOK _build() {
    final _$result = _$v ??
        new _$CorsCreateProfileOK._(
          corsCreateProfileOk: corsCreateProfileOk,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
