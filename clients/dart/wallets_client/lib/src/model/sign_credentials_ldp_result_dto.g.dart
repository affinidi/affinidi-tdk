// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_credentials_ldp_result_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignCredentialsLdpResultDto extends SignCredentialsLdpResultDto {
  @override
  final JsonObject credential;

  factory _$SignCredentialsLdpResultDto(
          [void Function(SignCredentialsLdpResultDtoBuilder)? updates]) =>
      (SignCredentialsLdpResultDtoBuilder()..update(updates))._build();

  _$SignCredentialsLdpResultDto._({required this.credential}) : super._();
  @override
  SignCredentialsLdpResultDto rebuild(
          void Function(SignCredentialsLdpResultDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignCredentialsLdpResultDtoBuilder toBuilder() =>
      SignCredentialsLdpResultDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignCredentialsLdpResultDto &&
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
    return (newBuiltValueToStringHelper(r'SignCredentialsLdpResultDto')
          ..add('credential', credential))
        .toString();
  }
}

class SignCredentialsLdpResultDtoBuilder
    implements
        Builder<SignCredentialsLdpResultDto,
            SignCredentialsLdpResultDtoBuilder> {
  _$SignCredentialsLdpResultDto? _$v;

  JsonObject? _credential;
  JsonObject? get credential => _$this._credential;
  set credential(JsonObject? credential) => _$this._credential = credential;

  SignCredentialsLdpResultDtoBuilder() {
    SignCredentialsLdpResultDto._defaults(this);
  }

  SignCredentialsLdpResultDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _credential = $v.credential;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignCredentialsLdpResultDto other) {
    _$v = other as _$SignCredentialsLdpResultDto;
  }

  @override
  void update(void Function(SignCredentialsLdpResultDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignCredentialsLdpResultDto build() => _build();

  _$SignCredentialsLdpResultDto _build() {
    final _$result = _$v ??
        _$SignCredentialsLdpResultDto._(
          credential: BuiltValueNullFieldError.checkNotNull(
              credential, r'SignCredentialsLdpResultDto', 'credential'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
