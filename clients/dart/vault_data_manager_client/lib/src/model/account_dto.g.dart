// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountDto extends AccountDto {
  @override
  final int accountIndex;
  @override
  final String profileDid;

  factory _$AccountDto([void Function(AccountDtoBuilder)? updates]) =>
      (new AccountDtoBuilder()..update(updates))._build();

  _$AccountDto._({required this.accountIndex, required this.profileDid})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accountIndex, r'AccountDto', 'accountIndex');
    BuiltValueNullFieldError.checkNotNull(
        profileDid, r'AccountDto', 'profileDid');
  }

  @override
  AccountDto rebuild(void Function(AccountDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountDtoBuilder toBuilder() => new AccountDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountDto &&
        accountIndex == other.accountIndex &&
        profileDid == other.profileDid;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountIndex.hashCode);
    _$hash = $jc(_$hash, profileDid.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountDto')
          ..add('accountIndex', accountIndex)
          ..add('profileDid', profileDid))
        .toString();
  }
}

class AccountDtoBuilder implements Builder<AccountDto, AccountDtoBuilder> {
  _$AccountDto? _$v;

  int? _accountIndex;
  int? get accountIndex => _$this._accountIndex;
  set accountIndex(int? accountIndex) => _$this._accountIndex = accountIndex;

  String? _profileDid;
  String? get profileDid => _$this._profileDid;
  set profileDid(String? profileDid) => _$this._profileDid = profileDid;

  AccountDtoBuilder() {
    AccountDto._defaults(this);
  }

  AccountDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountIndex = $v.accountIndex;
      _profileDid = $v.profileDid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountDto other) {
    ArgumentError.checkNotNull(other, 'other');
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
        new _$AccountDto._(
          accountIndex: BuiltValueNullFieldError.checkNotNull(
              accountIndex, r'AccountDto', 'accountIndex'),
          profileDid: BuiltValueNullFieldError.checkNotNull(
              profileDid, r'AccountDto', 'profileDid'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
