// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_credentials_dm2_sd_jwt_input_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignCredentialsDm2SdJwtInputDto
    extends SignCredentialsDm2SdJwtInputDto {
  @override
  final JsonObject unsignedCredential;
  @override
  final bool? revocable;
  @override
  final JsonObject disclosureFrame;

  factory _$SignCredentialsDm2SdJwtInputDto(
          [void Function(SignCredentialsDm2SdJwtInputDtoBuilder)? updates]) =>
      (SignCredentialsDm2SdJwtInputDtoBuilder()..update(updates))._build();

  _$SignCredentialsDm2SdJwtInputDto._(
      {required this.unsignedCredential,
      this.revocable,
      required this.disclosureFrame})
      : super._();
  @override
  SignCredentialsDm2SdJwtInputDto rebuild(
          void Function(SignCredentialsDm2SdJwtInputDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignCredentialsDm2SdJwtInputDtoBuilder toBuilder() =>
      SignCredentialsDm2SdJwtInputDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignCredentialsDm2SdJwtInputDto &&
        unsignedCredential == other.unsignedCredential &&
        revocable == other.revocable &&
        disclosureFrame == other.disclosureFrame;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, unsignedCredential.hashCode);
    _$hash = $jc(_$hash, revocable.hashCode);
    _$hash = $jc(_$hash, disclosureFrame.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignCredentialsDm2SdJwtInputDto')
          ..add('unsignedCredential', unsignedCredential)
          ..add('revocable', revocable)
          ..add('disclosureFrame', disclosureFrame))
        .toString();
  }
}

class SignCredentialsDm2SdJwtInputDtoBuilder
    implements
        Builder<SignCredentialsDm2SdJwtInputDto,
            SignCredentialsDm2SdJwtInputDtoBuilder> {
  _$SignCredentialsDm2SdJwtInputDto? _$v;

  JsonObject? _unsignedCredential;
  JsonObject? get unsignedCredential => _$this._unsignedCredential;
  set unsignedCredential(JsonObject? unsignedCredential) =>
      _$this._unsignedCredential = unsignedCredential;

  bool? _revocable;
  bool? get revocable => _$this._revocable;
  set revocable(bool? revocable) => _$this._revocable = revocable;

  JsonObject? _disclosureFrame;
  JsonObject? get disclosureFrame => _$this._disclosureFrame;
  set disclosureFrame(JsonObject? disclosureFrame) =>
      _$this._disclosureFrame = disclosureFrame;

  SignCredentialsDm2SdJwtInputDtoBuilder() {
    SignCredentialsDm2SdJwtInputDto._defaults(this);
  }

  SignCredentialsDm2SdJwtInputDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _unsignedCredential = $v.unsignedCredential;
      _revocable = $v.revocable;
      _disclosureFrame = $v.disclosureFrame;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignCredentialsDm2SdJwtInputDto other) {
    _$v = other as _$SignCredentialsDm2SdJwtInputDto;
  }

  @override
  void update(void Function(SignCredentialsDm2SdJwtInputDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignCredentialsDm2SdJwtInputDto build() => _build();

  _$SignCredentialsDm2SdJwtInputDto _build() {
    final _$result = _$v ??
        _$SignCredentialsDm2SdJwtInputDto._(
          unsignedCredential: BuiltValueNullFieldError.checkNotNull(
              unsignedCredential,
              r'SignCredentialsDm2SdJwtInputDto',
              'unsignedCredential'),
          revocable: revocable,
          disclosureFrame: BuiltValueNullFieldError.checkNotNull(
              disclosureFrame,
              r'SignCredentialsDm2SdJwtInputDto',
              'disclosureFrame'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
