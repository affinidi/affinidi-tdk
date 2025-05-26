// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cors_get_configuration_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CorsGetConfigurationOK extends CorsGetConfigurationOK {
  @override
  final String? corsGetConfigurationOk;

  factory _$CorsGetConfigurationOK(
          [void Function(CorsGetConfigurationOKBuilder)? updates]) =>
      (new CorsGetConfigurationOKBuilder()..update(updates))._build();

  _$CorsGetConfigurationOK._({this.corsGetConfigurationOk}) : super._();

  @override
  CorsGetConfigurationOK rebuild(
          void Function(CorsGetConfigurationOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CorsGetConfigurationOKBuilder toBuilder() =>
      new CorsGetConfigurationOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CorsGetConfigurationOK &&
        corsGetConfigurationOk == other.corsGetConfigurationOk;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, corsGetConfigurationOk.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CorsGetConfigurationOK')
          ..add('corsGetConfigurationOk', corsGetConfigurationOk))
        .toString();
  }
}

class CorsGetConfigurationOKBuilder
    implements Builder<CorsGetConfigurationOK, CorsGetConfigurationOKBuilder> {
  _$CorsGetConfigurationOK? _$v;

  String? _corsGetConfigurationOk;
  String? get corsGetConfigurationOk => _$this._corsGetConfigurationOk;
  set corsGetConfigurationOk(String? corsGetConfigurationOk) =>
      _$this._corsGetConfigurationOk = corsGetConfigurationOk;

  CorsGetConfigurationOKBuilder() {
    CorsGetConfigurationOK._defaults(this);
  }

  CorsGetConfigurationOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _corsGetConfigurationOk = $v.corsGetConfigurationOk;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CorsGetConfigurationOK other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CorsGetConfigurationOK;
  }

  @override
  void update(void Function(CorsGetConfigurationOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CorsGetConfigurationOK build() => _build();

  _$CorsGetConfigurationOK _build() {
    final _$result = _$v ??
        new _$CorsGetConfigurationOK._(
          corsGetConfigurationOk: corsGetConfigurationOk,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
