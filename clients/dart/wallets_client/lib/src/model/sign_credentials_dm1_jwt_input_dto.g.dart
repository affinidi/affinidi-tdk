// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_credentials_dm1_jwt_input_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignCredentialsDm1JwtInputDto extends SignCredentialsDm1JwtInputDto {
  @override
  final JsonObject unsignedCredential;
  @override
  final bool? revocable;

  factory _$SignCredentialsDm1JwtInputDto(
          [void Function(SignCredentialsDm1JwtInputDtoBuilder)? updates]) =>
      (SignCredentialsDm1JwtInputDtoBuilder()..update(updates))._build();

  _$SignCredentialsDm1JwtInputDto._(
      {required this.unsignedCredential, this.revocable})
      : super._();
  @override
  SignCredentialsDm1JwtInputDto rebuild(
          void Function(SignCredentialsDm1JwtInputDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignCredentialsDm1JwtInputDtoBuilder toBuilder() =>
      SignCredentialsDm1JwtInputDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignCredentialsDm1JwtInputDto &&
        unsignedCredential == other.unsignedCredential &&
        revocable == other.revocable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, unsignedCredential.hashCode);
    _$hash = $jc(_$hash, revocable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignCredentialsDm1JwtInputDto')
          ..add('unsignedCredential', unsignedCredential)
          ..add('revocable', revocable))
        .toString();
  }
}

class SignCredentialsDm1JwtInputDtoBuilder
    implements
        Builder<SignCredentialsDm1JwtInputDto,
            SignCredentialsDm1JwtInputDtoBuilder> {
  _$SignCredentialsDm1JwtInputDto? _$v;

  JsonObject? _unsignedCredential;
  JsonObject? get unsignedCredential => _$this._unsignedCredential;
  set unsignedCredential(JsonObject? unsignedCredential) =>
      _$this._unsignedCredential = unsignedCredential;

  bool? _revocable;
  bool? get revocable => _$this._revocable;
  set revocable(bool? revocable) => _$this._revocable = revocable;

  SignCredentialsDm1JwtInputDtoBuilder() {
    SignCredentialsDm1JwtInputDto._defaults(this);
  }

  SignCredentialsDm1JwtInputDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _unsignedCredential = $v.unsignedCredential;
      _revocable = $v.revocable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignCredentialsDm1JwtInputDto other) {
    _$v = other as _$SignCredentialsDm1JwtInputDto;
  }

  @override
  void update(void Function(SignCredentialsDm1JwtInputDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignCredentialsDm1JwtInputDto build() => _build();

  _$SignCredentialsDm1JwtInputDto _build() {
    final _$result = _$v ??
        _$SignCredentialsDm1JwtInputDto._(
          unsignedCredential: BuiltValueNullFieldError.checkNotNull(
              unsignedCredential,
              r'SignCredentialsDm1JwtInputDto',
              'unsignedCredential'),
          revocable: revocable,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
