// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_revocation_list_credential_result_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetRevocationListCredentialResultDto
    extends GetRevocationListCredentialResultDto {
  @override
  final JsonObject revocationListCredential;

  factory _$GetRevocationListCredentialResultDto(
          [void Function(GetRevocationListCredentialResultDtoBuilder)?
              updates]) =>
      (new GetRevocationListCredentialResultDtoBuilder()..update(updates))
          ._build();

  _$GetRevocationListCredentialResultDto._(
      {required this.revocationListCredential})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(revocationListCredential,
        r'GetRevocationListCredentialResultDto', 'revocationListCredential');
  }

  @override
  GetRevocationListCredentialResultDto rebuild(
          void Function(GetRevocationListCredentialResultDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetRevocationListCredentialResultDtoBuilder toBuilder() =>
      new GetRevocationListCredentialResultDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetRevocationListCredentialResultDto &&
        revocationListCredential == other.revocationListCredential;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, revocationListCredential.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetRevocationListCredentialResultDto')
          ..add('revocationListCredential', revocationListCredential))
        .toString();
  }
}

class GetRevocationListCredentialResultDtoBuilder
    implements
        Builder<GetRevocationListCredentialResultDto,
            GetRevocationListCredentialResultDtoBuilder> {
  _$GetRevocationListCredentialResultDto? _$v;

  JsonObject? _revocationListCredential;
  JsonObject? get revocationListCredential => _$this._revocationListCredential;
  set revocationListCredential(JsonObject? revocationListCredential) =>
      _$this._revocationListCredential = revocationListCredential;

  GetRevocationListCredentialResultDtoBuilder() {
    GetRevocationListCredentialResultDto._defaults(this);
  }

  GetRevocationListCredentialResultDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _revocationListCredential = $v.revocationListCredential;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetRevocationListCredentialResultDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetRevocationListCredentialResultDto;
  }

  @override
  void update(
      void Function(GetRevocationListCredentialResultDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetRevocationListCredentialResultDto build() => _build();

  _$GetRevocationListCredentialResultDto _build() {
    final _$result = _$v ??
        new _$GetRevocationListCredentialResultDto._(
          revocationListCredential: BuiltValueNullFieldError.checkNotNull(
              revocationListCredential,
              r'GetRevocationListCredentialResultDto',
              'revocationListCredential'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
