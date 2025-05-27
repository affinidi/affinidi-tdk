// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_jwt_token_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignJwtTokenOK extends SignJwtTokenOK {
  @override
  final String? signedJwt;

  factory _$SignJwtTokenOK([void Function(SignJwtTokenOKBuilder)? updates]) =>
      (SignJwtTokenOKBuilder()..update(updates))._build();

  _$SignJwtTokenOK._({this.signedJwt}) : super._();
  @override
  SignJwtTokenOK rebuild(void Function(SignJwtTokenOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignJwtTokenOKBuilder toBuilder() => SignJwtTokenOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignJwtTokenOK && signedJwt == other.signedJwt;
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
    return (newBuiltValueToStringHelper(r'SignJwtTokenOK')
          ..add('signedJwt', signedJwt))
        .toString();
  }
}

class SignJwtTokenOKBuilder
    implements Builder<SignJwtTokenOK, SignJwtTokenOKBuilder> {
  _$SignJwtTokenOK? _$v;

  String? _signedJwt;
  String? get signedJwt => _$this._signedJwt;
  set signedJwt(String? signedJwt) => _$this._signedJwt = signedJwt;

  SignJwtTokenOKBuilder() {
    SignJwtTokenOK._defaults(this);
  }

  SignJwtTokenOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _signedJwt = $v.signedJwt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignJwtTokenOK other) {
    _$v = other as _$SignJwtTokenOK;
  }

  @override
  void update(void Function(SignJwtTokenOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignJwtTokenOK build() => _build();

  _$SignJwtTokenOK _build() {
    final _$result = _$v ??
        _$SignJwtTokenOK._(
          signedJwt: signedJwt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
