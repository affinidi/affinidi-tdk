// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_credentials_dm1_jwt_result_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignCredentialsDm1JwtResultDto extends SignCredentialsDm1JwtResultDto {
  @override
  final String credential;

  factory _$SignCredentialsDm1JwtResultDto(
          [void Function(SignCredentialsDm1JwtResultDtoBuilder)? updates]) =>
      (SignCredentialsDm1JwtResultDtoBuilder()..update(updates))._build();

  _$SignCredentialsDm1JwtResultDto._({required this.credential}) : super._();
  @override
  SignCredentialsDm1JwtResultDto rebuild(
          void Function(SignCredentialsDm1JwtResultDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignCredentialsDm1JwtResultDtoBuilder toBuilder() =>
      SignCredentialsDm1JwtResultDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignCredentialsDm1JwtResultDto &&
        credential == other.credential;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, credential.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignCredentialsDm1JwtResultDto')
          ..add('credential', credential))
        .toString();
  }
}

class SignCredentialsDm1JwtResultDtoBuilder
    implements
        Builder<SignCredentialsDm1JwtResultDto,
            SignCredentialsDm1JwtResultDtoBuilder> {
  _$SignCredentialsDm1JwtResultDto? _$v;

  String? _credential;
  String? get credential => _$this._credential;
  set credential(String? credential) => _$this._credential = credential;

  SignCredentialsDm1JwtResultDtoBuilder() {
    SignCredentialsDm1JwtResultDto._defaults(this);
  }

  SignCredentialsDm1JwtResultDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _credential = $v.credential;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignCredentialsDm1JwtResultDto other) {
    _$v = other as _$SignCredentialsDm1JwtResultDto;
  }

  @override
  void update(void Function(SignCredentialsDm1JwtResultDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignCredentialsDm1JwtResultDto build() => _build();

  _$SignCredentialsDm1JwtResultDto _build() {
    final _$result = _$v ??
        _$SignCredentialsDm1JwtResultDto._(
          credential: BuiltValueNullFieldError.checkNotNull(
              credential, r'SignCredentialsDm1JwtResultDto', 'credential'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
