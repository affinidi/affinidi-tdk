// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_account_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateAccountDto extends UpdateAccountDto {
  @override
  final int accountIndex;
  @override
  final String accountDid;
  @override
  final JsonObject? metadata;

  factory _$UpdateAccountDto(
          [void Function(UpdateAccountDtoBuilder)? updates]) =>
      (new UpdateAccountDtoBuilder()..update(updates))._build();

  _$UpdateAccountDto._(
      {required this.accountIndex, required this.accountDid, this.metadata})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accountIndex, r'UpdateAccountDto', 'accountIndex');
    BuiltValueNullFieldError.checkNotNull(
        accountDid, r'UpdateAccountDto', 'accountDid');
  }

  @override
  UpdateAccountDto rebuild(void Function(UpdateAccountDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateAccountDtoBuilder toBuilder() =>
      new UpdateAccountDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateAccountDto &&
        accountIndex == other.accountIndex &&
        accountDid == other.accountDid &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountIndex.hashCode);
    _$hash = $jc(_$hash, accountDid.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateAccountDto')
          ..add('accountIndex', accountIndex)
          ..add('accountDid', accountDid)
          ..add('metadata', metadata))
        .toString();
  }
}

class UpdateAccountDtoBuilder
    implements Builder<UpdateAccountDto, UpdateAccountDtoBuilder> {
  _$UpdateAccountDto? _$v;

  int? _accountIndex;
  int? get accountIndex => _$this._accountIndex;
  set accountIndex(int? accountIndex) => _$this._accountIndex = accountIndex;

  String? _accountDid;
  String? get accountDid => _$this._accountDid;
  set accountDid(String? accountDid) => _$this._accountDid = accountDid;

  JsonObject? _metadata;
  JsonObject? get metadata => _$this._metadata;
  set metadata(JsonObject? metadata) => _$this._metadata = metadata;

  UpdateAccountDtoBuilder() {
    UpdateAccountDto._defaults(this);
  }

  UpdateAccountDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountIndex = $v.accountIndex;
      _accountDid = $v.accountDid;
      _metadata = $v.metadata;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateAccountDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateAccountDto;
  }

  @override
  void update(void Function(UpdateAccountDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateAccountDto build() => _build();

  _$UpdateAccountDto _build() {
    final _$result = _$v ??
        new _$UpdateAccountDto._(
          accountIndex: BuiltValueNullFieldError.checkNotNull(
              accountIndex, r'UpdateAccountDto', 'accountIndex'),
          accountDid: BuiltValueNullFieldError.checkNotNull(
              accountDid, r'UpdateAccountDto', 'accountDid'),
          metadata: metadata,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
