// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_jwt_v2_result_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignJwtV2ResultDto extends SignJwtV2ResultDto {
  @override
  final String? signedJwt;

  factory _$SignJwtV2ResultDto(
          [void Function(SignJwtV2ResultDtoBuilder)? updates]) =>
      (SignJwtV2ResultDtoBuilder()..update(updates))._build();

  _$SignJwtV2ResultDto._({this.signedJwt}) : super._();
  @override
  SignJwtV2ResultDto rebuild(
          void Function(SignJwtV2ResultDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignJwtV2ResultDtoBuilder toBuilder() =>
      SignJwtV2ResultDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignJwtV2ResultDto && signedJwt == other.signedJwt;
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
    return (newBuiltValueToStringHelper(r'SignJwtV2ResultDto')
          ..add('signedJwt', signedJwt))
        .toString();
  }
}

class SignJwtV2ResultDtoBuilder
    implements Builder<SignJwtV2ResultDto, SignJwtV2ResultDtoBuilder> {
  _$SignJwtV2ResultDto? _$v;

  String? _signedJwt;
  String? get signedJwt => _$this._signedJwt;
  set signedJwt(String? signedJwt) => _$this._signedJwt = signedJwt;

  SignJwtV2ResultDtoBuilder() {
    SignJwtV2ResultDto._defaults(this);
  }

  SignJwtV2ResultDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _signedJwt = $v.signedJwt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignJwtV2ResultDto other) {
    _$v = other as _$SignJwtV2ResultDto;
  }

  @override
  void update(void Function(SignJwtV2ResultDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignJwtV2ResultDto build() => _build();

  _$SignJwtV2ResultDto _build() {
    final _$result = _$v ??
        _$SignJwtV2ResultDto._(
          signedJwt: signedJwt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
