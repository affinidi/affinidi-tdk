// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_credentials_dm2_ld_result_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignCredentialsDm2LdResultDto extends SignCredentialsDm2LdResultDto {
  @override
  final JsonObject credential;

  factory _$SignCredentialsDm2LdResultDto(
          [void Function(SignCredentialsDm2LdResultDtoBuilder)? updates]) =>
      (SignCredentialsDm2LdResultDtoBuilder()..update(updates))._build();

  _$SignCredentialsDm2LdResultDto._({required this.credential}) : super._();
  @override
  SignCredentialsDm2LdResultDto rebuild(
          void Function(SignCredentialsDm2LdResultDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignCredentialsDm2LdResultDtoBuilder toBuilder() =>
      SignCredentialsDm2LdResultDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignCredentialsDm2LdResultDto &&
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
    return (newBuiltValueToStringHelper(r'SignCredentialsDm2LdResultDto')
          ..add('credential', credential))
        .toString();
  }
}

class SignCredentialsDm2LdResultDtoBuilder
    implements
        Builder<SignCredentialsDm2LdResultDto,
            SignCredentialsDm2LdResultDtoBuilder> {
  _$SignCredentialsDm2LdResultDto? _$v;

  JsonObject? _credential;
  JsonObject? get credential => _$this._credential;
  set credential(JsonObject? credential) => _$this._credential = credential;

  SignCredentialsDm2LdResultDtoBuilder() {
    SignCredentialsDm2LdResultDto._defaults(this);
  }

  SignCredentialsDm2LdResultDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _credential = $v.credential;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignCredentialsDm2LdResultDto other) {
    _$v = other as _$SignCredentialsDm2LdResultDto;
  }

  @override
  void update(void Function(SignCredentialsDm2LdResultDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignCredentialsDm2LdResultDto build() => _build();

  _$SignCredentialsDm2LdResultDto _build() {
    final _$result = _$v ??
        _$SignCredentialsDm2LdResultDto._(
          credential: BuiltValueNullFieldError.checkNotNull(
              credential, r'SignCredentialsDm2LdResultDto', 'credential'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
