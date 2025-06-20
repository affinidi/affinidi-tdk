// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_credentials_dm2_ld_input_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignCredentialsDm2LdInputDto extends SignCredentialsDm2LdInputDto {
  @override
  final JsonObject unsignedCredential;
  @override
  final bool? revocable;

  factory _$SignCredentialsDm2LdInputDto(
          [void Function(SignCredentialsDm2LdInputDtoBuilder)? updates]) =>
      (SignCredentialsDm2LdInputDtoBuilder()..update(updates))._build();

  _$SignCredentialsDm2LdInputDto._(
      {required this.unsignedCredential, this.revocable})
      : super._();
  @override
  SignCredentialsDm2LdInputDto rebuild(
          void Function(SignCredentialsDm2LdInputDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignCredentialsDm2LdInputDtoBuilder toBuilder() =>
      SignCredentialsDm2LdInputDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignCredentialsDm2LdInputDto &&
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
    return (newBuiltValueToStringHelper(r'SignCredentialsDm2LdInputDto')
          ..add('unsignedCredential', unsignedCredential)
          ..add('revocable', revocable))
        .toString();
  }
}

class SignCredentialsDm2LdInputDtoBuilder
    implements
        Builder<SignCredentialsDm2LdInputDto,
            SignCredentialsDm2LdInputDtoBuilder> {
  _$SignCredentialsDm2LdInputDto? _$v;

  JsonObject? _unsignedCredential;
  JsonObject? get unsignedCredential => _$this._unsignedCredential;
  set unsignedCredential(JsonObject? unsignedCredential) =>
      _$this._unsignedCredential = unsignedCredential;

  bool? _revocable;
  bool? get revocable => _$this._revocable;
  set revocable(bool? revocable) => _$this._revocable = revocable;

  SignCredentialsDm2LdInputDtoBuilder() {
    SignCredentialsDm2LdInputDto._defaults(this);
  }

  SignCredentialsDm2LdInputDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _unsignedCredential = $v.unsignedCredential;
      _revocable = $v.revocable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignCredentialsDm2LdInputDto other) {
    _$v = other as _$SignCredentialsDm2LdInputDto;
  }

  @override
  void update(void Function(SignCredentialsDm2LdInputDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignCredentialsDm2LdInputDto build() => _build();

  _$SignCredentialsDm2LdInputDto _build() {
    final _$result = _$v ??
        _$SignCredentialsDm2LdInputDto._(
          unsignedCredential: BuiltValueNullFieldError.checkNotNull(
              unsignedCredential,
              r'SignCredentialsDm2LdInputDto',
              'unsignedCredential'),
          revocable: revocable,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
