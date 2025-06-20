// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_credentials_dm1_ld_input_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignCredentialsDm1LdInputDto extends SignCredentialsDm1LdInputDto {
  @override
  final JsonObject unsignedCredential;
  @override
  final bool? revocable;

  factory _$SignCredentialsDm1LdInputDto(
          [void Function(SignCredentialsDm1LdInputDtoBuilder)? updates]) =>
      (SignCredentialsDm1LdInputDtoBuilder()..update(updates))._build();

  _$SignCredentialsDm1LdInputDto._(
      {required this.unsignedCredential, this.revocable})
      : super._();
  @override
  SignCredentialsDm1LdInputDto rebuild(
          void Function(SignCredentialsDm1LdInputDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignCredentialsDm1LdInputDtoBuilder toBuilder() =>
      SignCredentialsDm1LdInputDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignCredentialsDm1LdInputDto &&
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
    return (newBuiltValueToStringHelper(r'SignCredentialsDm1LdInputDto')
          ..add('unsignedCredential', unsignedCredential)
          ..add('revocable', revocable))
        .toString();
  }
}

class SignCredentialsDm1LdInputDtoBuilder
    implements
        Builder<SignCredentialsDm1LdInputDto,
            SignCredentialsDm1LdInputDtoBuilder> {
  _$SignCredentialsDm1LdInputDto? _$v;

  JsonObject? _unsignedCredential;
  JsonObject? get unsignedCredential => _$this._unsignedCredential;
  set unsignedCredential(JsonObject? unsignedCredential) =>
      _$this._unsignedCredential = unsignedCredential;

  bool? _revocable;
  bool? get revocable => _$this._revocable;
  set revocable(bool? revocable) => _$this._revocable = revocable;

  SignCredentialsDm1LdInputDtoBuilder() {
    SignCredentialsDm1LdInputDto._defaults(this);
  }

  SignCredentialsDm1LdInputDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _unsignedCredential = $v.unsignedCredential;
      _revocable = $v.revocable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignCredentialsDm1LdInputDto other) {
    _$v = other as _$SignCredentialsDm1LdInputDto;
  }

  @override
  void update(void Function(SignCredentialsDm1LdInputDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignCredentialsDm1LdInputDto build() => _build();

  _$SignCredentialsDm1LdInputDto _build() {
    final _$result = _$v ??
        _$SignCredentialsDm1LdInputDto._(
          unsignedCredential: BuiltValueNullFieldError.checkNotNull(
              unsignedCredential,
              r'SignCredentialsDm1LdInputDto',
              'unsignedCredential'),
          revocable: revocable,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
