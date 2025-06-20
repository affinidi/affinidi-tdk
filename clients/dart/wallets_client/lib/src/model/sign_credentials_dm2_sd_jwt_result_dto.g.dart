// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_credentials_dm2_sd_jwt_result_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignCredentialsDm2SdJwtResultDto
    extends SignCredentialsDm2SdJwtResultDto {
  @override
  final String credential;

  factory _$SignCredentialsDm2SdJwtResultDto(
          [void Function(SignCredentialsDm2SdJwtResultDtoBuilder)? updates]) =>
      (SignCredentialsDm2SdJwtResultDtoBuilder()..update(updates))._build();

  _$SignCredentialsDm2SdJwtResultDto._({required this.credential}) : super._();
  @override
  SignCredentialsDm2SdJwtResultDto rebuild(
          void Function(SignCredentialsDm2SdJwtResultDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignCredentialsDm2SdJwtResultDtoBuilder toBuilder() =>
      SignCredentialsDm2SdJwtResultDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignCredentialsDm2SdJwtResultDto &&
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
    return (newBuiltValueToStringHelper(r'SignCredentialsDm2SdJwtResultDto')
          ..add('credential', credential))
        .toString();
  }
}

class SignCredentialsDm2SdJwtResultDtoBuilder
    implements
        Builder<SignCredentialsDm2SdJwtResultDto,
            SignCredentialsDm2SdJwtResultDtoBuilder> {
  _$SignCredentialsDm2SdJwtResultDto? _$v;

  String? _credential;
  String? get credential => _$this._credential;
  set credential(String? credential) => _$this._credential = credential;

  SignCredentialsDm2SdJwtResultDtoBuilder() {
    SignCredentialsDm2SdJwtResultDto._defaults(this);
  }

  SignCredentialsDm2SdJwtResultDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _credential = $v.credential;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignCredentialsDm2SdJwtResultDto other) {
    _$v = other as _$SignCredentialsDm2SdJwtResultDto;
  }

  @override
  void update(void Function(SignCredentialsDm2SdJwtResultDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignCredentialsDm2SdJwtResultDto build() => _build();

  _$SignCredentialsDm2SdJwtResultDto _build() {
    final _$result = _$v ??
        _$SignCredentialsDm2SdJwtResultDto._(
          credential: BuiltValueNullFieldError.checkNotNull(
              credential, r'SignCredentialsDm2SdJwtResultDto', 'credential'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
