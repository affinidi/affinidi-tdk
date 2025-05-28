// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountDto extends AccountDto {
  @override
  final int accountIndex;
  @override
  final String accountDid;
  @override
  final String? alias;
  @override
  final JsonObject? metadata;
  @override
  final String? description;

  factory _$AccountDto([void Function(AccountDtoBuilder)? updates]) =>
      (AccountDtoBuilder()..update(updates))._build();

  _$AccountDto._(
      {required this.accountIndex,
      required this.accountDid,
      this.alias,
      this.metadata,
      this.description})
      : super._();
  @override
  AccountDto rebuild(void Function(AccountDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountDtoBuilder toBuilder() => AccountDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountDto &&
        accountIndex == other.accountIndex &&
        accountDid == other.accountDid &&
        alias == other.alias &&
        metadata == other.metadata &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountIndex.hashCode);
    _$hash = $jc(_$hash, accountDid.hashCode);
    _$hash = $jc(_$hash, alias.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountDto')
          ..add('accountIndex', accountIndex)
          ..add('accountDid', accountDid)
          ..add('alias', alias)
          ..add('metadata', metadata)
          ..add('description', description))
        .toString();
  }
}

class AccountDtoBuilder implements Builder<AccountDto, AccountDtoBuilder> {
  _$AccountDto? _$v;

  int? _accountIndex;
  int? get accountIndex => _$this._accountIndex;
  set accountIndex(int? accountIndex) => _$this._accountIndex = accountIndex;

  String? _accountDid;
  String? get accountDid => _$this._accountDid;
  set accountDid(String? accountDid) => _$this._accountDid = accountDid;

  String? _alias;
  String? get alias => _$this._alias;
  set alias(String? alias) => _$this._alias = alias;

  JsonObject? _metadata;
  JsonObject? get metadata => _$this._metadata;
  set metadata(JsonObject? metadata) => _$this._metadata = metadata;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  AccountDtoBuilder() {
    AccountDto._defaults(this);
  }

  AccountDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountIndex = $v.accountIndex;
      _accountDid = $v.accountDid;
      _alias = $v.alias;
      _metadata = $v.metadata;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountDto other) {
    _$v = other as _$AccountDto;
  }

  @override
  void update(void Function(AccountDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountDto build() => _build();

  _$AccountDto _build() {
    final _$result = _$v ??
        _$AccountDto._(
          accountIndex: BuiltValueNullFieldError.checkNotNull(
              accountIndex, r'AccountDto', 'accountIndex'),
          accountDid: BuiltValueNullFieldError.checkNotNull(
              accountDid, r'AccountDto', 'accountDid'),
          alias: alias,
          metadata: metadata,
          description: description,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
