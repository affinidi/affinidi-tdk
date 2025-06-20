// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_credentials_dm1_ld_result_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignCredentialsDm1LdResultDto extends SignCredentialsDm1LdResultDto {
  @override
  final JsonObject credential;

  factory _$SignCredentialsDm1LdResultDto(
          [void Function(SignCredentialsDm1LdResultDtoBuilder)? updates]) =>
      (SignCredentialsDm1LdResultDtoBuilder()..update(updates))._build();

  _$SignCredentialsDm1LdResultDto._({required this.credential}) : super._();
  @override
  SignCredentialsDm1LdResultDto rebuild(
          void Function(SignCredentialsDm1LdResultDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignCredentialsDm1LdResultDtoBuilder toBuilder() =>
      SignCredentialsDm1LdResultDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignCredentialsDm1LdResultDto &&
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
    return (newBuiltValueToStringHelper(r'SignCredentialsDm1LdResultDto')
          ..add('credential', credential))
        .toString();
  }
}

class SignCredentialsDm1LdResultDtoBuilder
    implements
        Builder<SignCredentialsDm1LdResultDto,
            SignCredentialsDm1LdResultDtoBuilder> {
  _$SignCredentialsDm1LdResultDto? _$v;

  JsonObject? _credential;
  JsonObject? get credential => _$this._credential;
  set credential(JsonObject? credential) => _$this._credential = credential;

  SignCredentialsDm1LdResultDtoBuilder() {
    SignCredentialsDm1LdResultDto._defaults(this);
  }

  SignCredentialsDm1LdResultDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _credential = $v.credential;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignCredentialsDm1LdResultDto other) {
    _$v = other as _$SignCredentialsDm1LdResultDto;
  }

  @override
  void update(void Function(SignCredentialsDm1LdResultDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignCredentialsDm1LdResultDto build() => _build();

  _$SignCredentialsDm1LdResultDto _build() {
    final _$result = _$v ??
        _$SignCredentialsDm1LdResultDto._(
          credential: BuiltValueNullFieldError.checkNotNull(
              credential, r'SignCredentialsDm1LdResultDto', 'credential'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
