// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_jwt_v2_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignJwtV2OK extends SignJwtV2OK {
  @override
  final String? signedJwt;

  factory _$SignJwtV2OK([void Function(SignJwtV2OKBuilder)? updates]) =>
      (SignJwtV2OKBuilder()..update(updates))._build();

  _$SignJwtV2OK._({this.signedJwt}) : super._();
  @override
  SignJwtV2OK rebuild(void Function(SignJwtV2OKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignJwtV2OKBuilder toBuilder() => SignJwtV2OKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignJwtV2OK && signedJwt == other.signedJwt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, signedJwt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignJwtV2OK')
          ..add('signedJwt', signedJwt))
        .toString();
  }
}

class SignJwtV2OKBuilder implements Builder<SignJwtV2OK, SignJwtV2OKBuilder> {
  _$SignJwtV2OK? _$v;

  String? _signedJwt;
  String? get signedJwt => _$this._signedJwt;
  set signedJwt(String? signedJwt) => _$this._signedJwt = signedJwt;

  SignJwtV2OKBuilder() {
    SignJwtV2OK._defaults(this);
  }

  SignJwtV2OKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _signedJwt = $v.signedJwt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignJwtV2OK other) {
    _$v = other as _$SignJwtV2OK;
  }

  @override
  void update(void Function(SignJwtV2OKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignJwtV2OK build() => _build();

  _$SignJwtV2OK _build() {
    final _$result = _$v ??
        _$SignJwtV2OK._(
          signedJwt: signedJwt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
