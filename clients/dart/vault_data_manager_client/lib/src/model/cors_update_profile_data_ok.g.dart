// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cors_update_profile_data_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CorsUpdateProfileDataOK extends CorsUpdateProfileDataOK {
  @override
  final String? corsUpdateProfileDataOk;

  factory _$CorsUpdateProfileDataOK(
          [void Function(CorsUpdateProfileDataOKBuilder)? updates]) =>
      (new CorsUpdateProfileDataOKBuilder()..update(updates))._build();

  _$CorsUpdateProfileDataOK._({this.corsUpdateProfileDataOk}) : super._();

  @override
  CorsUpdateProfileDataOK rebuild(
          void Function(CorsUpdateProfileDataOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CorsUpdateProfileDataOKBuilder toBuilder() =>
      new CorsUpdateProfileDataOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CorsUpdateProfileDataOK &&
        corsUpdateProfileDataOk == other.corsUpdateProfileDataOk;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, corsUpdateProfileDataOk.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CorsUpdateProfileDataOK')
          ..add('corsUpdateProfileDataOk', corsUpdateProfileDataOk))
        .toString();
  }
}

class CorsUpdateProfileDataOKBuilder
    implements
        Builder<CorsUpdateProfileDataOK, CorsUpdateProfileDataOKBuilder> {
  _$CorsUpdateProfileDataOK? _$v;

  String? _corsUpdateProfileDataOk;
  String? get corsUpdateProfileDataOk => _$this._corsUpdateProfileDataOk;
  set corsUpdateProfileDataOk(String? corsUpdateProfileDataOk) =>
      _$this._corsUpdateProfileDataOk = corsUpdateProfileDataOk;

  CorsUpdateProfileDataOKBuilder() {
    CorsUpdateProfileDataOK._defaults(this);
  }

  CorsUpdateProfileDataOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _corsUpdateProfileDataOk = $v.corsUpdateProfileDataOk;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CorsUpdateProfileDataOK other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CorsUpdateProfileDataOK;
  }

  @override
  void update(void Function(CorsUpdateProfileDataOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CorsUpdateProfileDataOK build() => _build();

  _$CorsUpdateProfileDataOK _build() {
    final _$result = _$v ??
        new _$CorsUpdateProfileDataOK._(
          corsUpdateProfileDataOk: corsUpdateProfileDataOk,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
