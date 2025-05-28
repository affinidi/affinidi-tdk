// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_web_key_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JsonWebKeyDto extends JsonWebKeyDto {
  @override
  final String kid;
  @override
  final String kty;
  @override
  final String? n;
  @override
  final String? e;
  @override
  final String? x;
  @override
  final String? y;
  @override
  final String? crv;
  @override
  final String alg;
  @override
  final String use;

  factory _$JsonWebKeyDto([void Function(JsonWebKeyDtoBuilder)? updates]) =>
      (JsonWebKeyDtoBuilder()..update(updates))._build();

  _$JsonWebKeyDto._(
      {required this.kid,
      required this.kty,
      this.n,
      this.e,
      this.x,
      this.y,
      this.crv,
      required this.alg,
      required this.use})
      : super._();
  @override
  JsonWebKeyDto rebuild(void Function(JsonWebKeyDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JsonWebKeyDtoBuilder toBuilder() => JsonWebKeyDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JsonWebKeyDto &&
        kid == other.kid &&
        kty == other.kty &&
        n == other.n &&
        e == other.e &&
        x == other.x &&
        y == other.y &&
        crv == other.crv &&
        alg == other.alg &&
        use == other.use;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kid.hashCode);
    _$hash = $jc(_$hash, kty.hashCode);
    _$hash = $jc(_$hash, n.hashCode);
    _$hash = $jc(_$hash, e.hashCode);
    _$hash = $jc(_$hash, x.hashCode);
    _$hash = $jc(_$hash, y.hashCode);
    _$hash = $jc(_$hash, crv.hashCode);
    _$hash = $jc(_$hash, alg.hashCode);
    _$hash = $jc(_$hash, use.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'JsonWebKeyDto')
          ..add('kid', kid)
          ..add('kty', kty)
          ..add('n', n)
          ..add('e', e)
          ..add('x', x)
          ..add('y', y)
          ..add('crv', crv)
          ..add('alg', alg)
          ..add('use', use))
        .toString();
  }
}

class JsonWebKeyDtoBuilder
    implements Builder<JsonWebKeyDto, JsonWebKeyDtoBuilder> {
  _$JsonWebKeyDto? _$v;

  String? _kid;
  String? get kid => _$this._kid;
  set kid(String? kid) => _$this._kid = kid;

  String? _kty;
  String? get kty => _$this._kty;
  set kty(String? kty) => _$this._kty = kty;

  String? _n;
  String? get n => _$this._n;
  set n(String? n) => _$this._n = n;

  String? _e;
  String? get e => _$this._e;
  set e(String? e) => _$this._e = e;

  String? _x;
  String? get x => _$this._x;
  set x(String? x) => _$this._x = x;

  String? _y;
  String? get y => _$this._y;
  set y(String? y) => _$this._y = y;

  String? _crv;
  String? get crv => _$this._crv;
  set crv(String? crv) => _$this._crv = crv;

  String? _alg;
  String? get alg => _$this._alg;
  set alg(String? alg) => _$this._alg = alg;

  String? _use;
  String? get use => _$this._use;
  set use(String? use) => _$this._use = use;

  JsonWebKeyDtoBuilder() {
    JsonWebKeyDto._defaults(this);
  }

  JsonWebKeyDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kid = $v.kid;
      _kty = $v.kty;
      _n = $v.n;
      _e = $v.e;
      _x = $v.x;
      _y = $v.y;
      _crv = $v.crv;
      _alg = $v.alg;
      _use = $v.use;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JsonWebKeyDto other) {
    _$v = other as _$JsonWebKeyDto;
  }

  @override
  void update(void Function(JsonWebKeyDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JsonWebKeyDto build() => _build();

  _$JsonWebKeyDto _build() {
    final _$result = _$v ??
        _$JsonWebKeyDto._(
          kid: BuiltValueNullFieldError.checkNotNull(
              kid, r'JsonWebKeyDto', 'kid'),
          kty: BuiltValueNullFieldError.checkNotNull(
              kty, r'JsonWebKeyDto', 'kty'),
          n: n,
          e: e,
          x: x,
          y: y,
          crv: crv,
          alg: BuiltValueNullFieldError.checkNotNull(
              alg, r'JsonWebKeyDto', 'alg'),
          use: BuiltValueNullFieldError.checkNotNull(
              use, r'JsonWebKeyDto', 'use'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
