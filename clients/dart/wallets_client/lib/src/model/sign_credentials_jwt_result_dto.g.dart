// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_credentials_jwt_result_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignCredentialsJwtResultDto extends SignCredentialsJwtResultDto {
  @override
  final String credential;

  factory _$SignCredentialsJwtResultDto(
          [void Function(SignCredentialsJwtResultDtoBuilder)? updates]) =>
      (SignCredentialsJwtResultDtoBuilder()..update(updates))._build();

  _$SignCredentialsJwtResultDto._({required this.credential}) : super._();
  @override
  SignCredentialsJwtResultDto rebuild(
          void Function(SignCredentialsJwtResultDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignCredentialsJwtResultDtoBuilder toBuilder() =>
      SignCredentialsJwtResultDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignCredentialsJwtResultDto &&
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
    return (newBuiltValueToStringHelper(r'SignCredentialsJwtResultDto')
          ..add('credential', credential))
        .toString();
  }
}

class SignCredentialsJwtResultDtoBuilder
    implements
        Builder<SignCredentialsJwtResultDto,
            SignCredentialsJwtResultDtoBuilder> {
  _$SignCredentialsJwtResultDto? _$v;

  String? _credential;
  String? get credential => _$this._credential;
  set credential(String? credential) => _$this._credential = credential;

  SignCredentialsJwtResultDtoBuilder() {
    SignCredentialsJwtResultDto._defaults(this);
  }

  SignCredentialsJwtResultDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _credential = $v.credential;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignCredentialsJwtResultDto other) {
    _$v = other as _$SignCredentialsJwtResultDto;
  }

  @override
  void update(void Function(SignCredentialsJwtResultDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignCredentialsJwtResultDto build() => _build();

  _$SignCredentialsJwtResultDto _build() {
    final _$result = _$v ??
        _$SignCredentialsJwtResultDto._(
          credential: BuiltValueNullFieldError.checkNotNull(
              credential, r'SignCredentialsJwtResultDto', 'credential'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
