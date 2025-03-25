// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_credential_result_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignCredentialResultDto extends SignCredentialResultDto {
  @override
  final BuiltMap<String, JsonObject?> signedCredential;

  factory _$SignCredentialResultDto(
          [void Function(SignCredentialResultDtoBuilder)? updates]) =>
      (new SignCredentialResultDtoBuilder()..update(updates))._build();

  _$SignCredentialResultDto._({required this.signedCredential}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        signedCredential, r'SignCredentialResultDto', 'signedCredential');
  }

  @override
  SignCredentialResultDto rebuild(
          void Function(SignCredentialResultDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignCredentialResultDtoBuilder toBuilder() =>
      new SignCredentialResultDtoBuilder()..replace(this);

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

  MapBuilder<String, JsonObject?>? _signedCredential;
  MapBuilder<String, JsonObject?> get signedCredential =>
      _$this._signedCredential ??= new MapBuilder<String, JsonObject?>();
  set signedCredential(MapBuilder<String, JsonObject?>? signedCredential) =>
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
    ArgumentError.checkNotNull(other, 'other');
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
          new _$SignCredentialResultDto._(
            signedCredential: signedCredential.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'signedCredential';
        signedCredential.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SignCredentialResultDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
