// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_credential_result_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignCredentialResultDto extends SignCredentialResultDto {
  @override
  final SignCredentialResultDtoSignedCredential signedCredential;

  factory _$SignCredentialResultDto(
          [void Function(SignCredentialResultDtoBuilder)? updates]) =>
      (SignCredentialResultDtoBuilder()..update(updates))._build();

  _$SignCredentialResultDto._({required this.signedCredential}) : super._();
  @override
  SignCredentialResultDto rebuild(
          void Function(SignCredentialResultDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignCredentialResultDtoBuilder toBuilder() =>
      SignCredentialResultDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignCredentialResultDto &&
        signedCredential == other.signedCredential;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, signedCredential.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignCredentialResultDto')
          ..add('signedCredential', signedCredential))
        .toString();
  }
}

class SignCredentialResultDtoBuilder
    implements
        Builder<SignCredentialResultDto, SignCredentialResultDtoBuilder> {
  _$SignCredentialResultDto? _$v;

  SignCredentialResultDtoSignedCredentialBuilder? _signedCredential;
  SignCredentialResultDtoSignedCredentialBuilder get signedCredential =>
      _$this._signedCredential ??=
          SignCredentialResultDtoSignedCredentialBuilder();
  set signedCredential(
          SignCredentialResultDtoSignedCredentialBuilder? signedCredential) =>
      _$this._signedCredential = signedCredential;

  SignCredentialResultDtoBuilder() {
    SignCredentialResultDto._defaults(this);
  }

  SignCredentialResultDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _signedCredential = $v.signedCredential.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignCredentialResultDto other) {
    _$v = other as _$SignCredentialResultDto;
  }

  @override
  void update(void Function(SignCredentialResultDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignCredentialResultDto build() => _build();

  _$SignCredentialResultDto _build() {
    _$SignCredentialResultDto _$result;
    try {
      _$result = _$v ??
          _$SignCredentialResultDto._(
            signedCredential: signedCredential.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'signedCredential';
        signedCredential.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SignCredentialResultDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
