// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_status_list_result_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetStatusListResultDto extends GetStatusListResultDto {
  @override
  final JsonObject revocationListCredential;

  factory _$GetStatusListResultDto(
          [void Function(GetStatusListResultDtoBuilder)? updates]) =>
      (GetStatusListResultDtoBuilder()..update(updates))._build();

  _$GetStatusListResultDto._({required this.revocationListCredential})
      : super._();
  @override
  GetStatusListResultDto rebuild(
          void Function(GetStatusListResultDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetStatusListResultDtoBuilder toBuilder() =>
      GetStatusListResultDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetStatusListResultDto &&
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
    return (newBuiltValueToStringHelper(r'GetStatusListResultDto')
          ..add('revocationListCredential', revocationListCredential))
        .toString();
  }
}

class GetStatusListResultDtoBuilder
    implements Builder<GetStatusListResultDto, GetStatusListResultDtoBuilder> {
  _$GetStatusListResultDto? _$v;

  JsonObject? _revocationListCredential;
  JsonObject? get revocationListCredential => _$this._revocationListCredential;
  set revocationListCredential(JsonObject? revocationListCredential) =>
      _$this._revocationListCredential = revocationListCredential;

  GetStatusListResultDtoBuilder() {
    GetStatusListResultDto._defaults(this);
  }

  GetStatusListResultDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _revocationListCredential = $v.revocationListCredential;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetStatusListResultDto other) {
    _$v = other as _$GetStatusListResultDto;
  }

  @override
  void update(void Function(GetStatusListResultDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetStatusListResultDto build() => _build();

  _$GetStatusListResultDto _build() {
    final _$result = _$v ??
        _$GetStatusListResultDto._(
          revocationListCredential: BuiltValueNullFieldError.checkNotNull(
              revocationListCredential,
              r'GetStatusListResultDto',
              'revocationListCredential'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
