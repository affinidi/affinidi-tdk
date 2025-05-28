// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'format.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Format extends Format {
  @override
  final JwtObject? jwt;
  @override
  final JwtObject? jwtVc;
  @override
  final JwtObject? jwtVp;
  @override
  final LdpObject? ldp;
  @override
  final LdpObject? ldpVc;
  @override
  final LdpObject? ldpVp;

  factory _$Format([void Function(FormatBuilder)? updates]) =>
      (FormatBuilder()..update(updates))._build();

  _$Format._(
      {this.jwt, this.jwtVc, this.jwtVp, this.ldp, this.ldpVc, this.ldpVp})
      : super._();
  @override
  Format rebuild(void Function(FormatBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FormatBuilder toBuilder() => FormatBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Format &&
        jwt == other.jwt &&
        jwtVc == other.jwtVc &&
        jwtVp == other.jwtVp &&
        ldp == other.ldp &&
        ldpVc == other.ldpVc &&
        ldpVp == other.ldpVp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, jwt.hashCode);
    _$hash = $jc(_$hash, jwtVc.hashCode);
    _$hash = $jc(_$hash, jwtVp.hashCode);
    _$hash = $jc(_$hash, ldp.hashCode);
    _$hash = $jc(_$hash, ldpVc.hashCode);
    _$hash = $jc(_$hash, ldpVp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Format')
          ..add('jwt', jwt)
          ..add('jwtVc', jwtVc)
          ..add('jwtVp', jwtVp)
          ..add('ldp', ldp)
          ..add('ldpVc', ldpVc)
          ..add('ldpVp', ldpVp))
        .toString();
  }
}

class FormatBuilder implements Builder<Format, FormatBuilder> {
  _$Format? _$v;

  JwtObjectBuilder? _jwt;
  JwtObjectBuilder get jwt => _$this._jwt ??= JwtObjectBuilder();
  set jwt(JwtObjectBuilder? jwt) => _$this._jwt = jwt;

  JwtObjectBuilder? _jwtVc;
  JwtObjectBuilder get jwtVc => _$this._jwtVc ??= JwtObjectBuilder();
  set jwtVc(JwtObjectBuilder? jwtVc) => _$this._jwtVc = jwtVc;

  JwtObjectBuilder? _jwtVp;
  JwtObjectBuilder get jwtVp => _$this._jwtVp ??= JwtObjectBuilder();
  set jwtVp(JwtObjectBuilder? jwtVp) => _$this._jwtVp = jwtVp;

  LdpObjectBuilder? _ldp;
  LdpObjectBuilder get ldp => _$this._ldp ??= LdpObjectBuilder();
  set ldp(LdpObjectBuilder? ldp) => _$this._ldp = ldp;

  LdpObjectBuilder? _ldpVc;
  LdpObjectBuilder get ldpVc => _$this._ldpVc ??= LdpObjectBuilder();
  set ldpVc(LdpObjectBuilder? ldpVc) => _$this._ldpVc = ldpVc;

  LdpObjectBuilder? _ldpVp;
  LdpObjectBuilder get ldpVp => _$this._ldpVp ??= LdpObjectBuilder();
  set ldpVp(LdpObjectBuilder? ldpVp) => _$this._ldpVp = ldpVp;

  FormatBuilder() {
    Format._defaults(this);
  }

  FormatBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jwt = $v.jwt?.toBuilder();
      _jwtVc = $v.jwtVc?.toBuilder();
      _jwtVp = $v.jwtVp?.toBuilder();
      _ldp = $v.ldp?.toBuilder();
      _ldpVc = $v.ldpVc?.toBuilder();
      _ldpVp = $v.ldpVp?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Format other) {
    _$v = other as _$Format;
  }

  @override
  void update(void Function(FormatBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Format build() => _build();

  _$Format _build() {
    _$Format _$result;
    try {
      _$result = _$v ??
          _$Format._(
            jwt: _jwt?.build(),
            jwtVc: _jwtVc?.build(),
            jwtVp: _jwtVp?.build(),
            ldp: _ldp?.build(),
            ldpVc: _ldpVc?.build(),
            ldpVp: _ldpVp?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'jwt';
        _jwt?.build();
        _$failedField = 'jwtVc';
        _jwtVc?.build();
        _$failedField = 'jwtVp';
        _jwtVp?.build();
        _$failedField = 'ldp';
        _ldp?.build();
        _$failedField = 'ldpVc';
        _ldpVc?.build();
        _$failedField = 'ldpVp';
        _ldpVp?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Format', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
