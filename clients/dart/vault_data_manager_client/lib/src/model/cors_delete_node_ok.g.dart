// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cors_delete_node_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CorsDeleteNodeOK extends CorsDeleteNodeOK {
  @override
  final String? corsDeleteNodeOk;

  factory _$CorsDeleteNodeOK(
          [void Function(CorsDeleteNodeOKBuilder)? updates]) =>
      (new CorsDeleteNodeOKBuilder()..update(updates))._build();

  _$CorsDeleteNodeOK._({this.corsDeleteNodeOk}) : super._();

  @override
  CorsDeleteNodeOK rebuild(void Function(CorsDeleteNodeOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CorsDeleteNodeOKBuilder toBuilder() =>
      new CorsDeleteNodeOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CorsDeleteNodeOK &&
        corsDeleteNodeOk == other.corsDeleteNodeOk;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, corsDeleteNodeOk.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CorsDeleteNodeOK')
          ..add('corsDeleteNodeOk', corsDeleteNodeOk))
        .toString();
  }
}

class CorsDeleteNodeOKBuilder
    implements Builder<CorsDeleteNodeOK, CorsDeleteNodeOKBuilder> {
  _$CorsDeleteNodeOK? _$v;

  String? _corsDeleteNodeOk;
  String? get corsDeleteNodeOk => _$this._corsDeleteNodeOk;
  set corsDeleteNodeOk(String? corsDeleteNodeOk) =>
      _$this._corsDeleteNodeOk = corsDeleteNodeOk;

  CorsDeleteNodeOKBuilder() {
    CorsDeleteNodeOK._defaults(this);
  }

  CorsDeleteNodeOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _corsDeleteNodeOk = $v.corsDeleteNodeOk;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CorsDeleteNodeOK other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CorsDeleteNodeOK;
  }

  @override
  void update(void Function(CorsDeleteNodeOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CorsDeleteNodeOK build() => _build();

  _$CorsDeleteNodeOK _build() {
    final _$result = _$v ??
        new _$CorsDeleteNodeOK._(
          corsDeleteNodeOk: corsDeleteNodeOk,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
