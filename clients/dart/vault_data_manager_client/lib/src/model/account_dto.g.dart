// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountDto extends AccountDto {
  @override
  final String? accountNumber;
  @override
  final String? did;

  factory _$AccountDto([void Function(AccountDtoBuilder)? updates]) =>
      (new AccountDtoBuilder()..update(updates))._build();

  _$AccountDto._({this.accountNumber, this.did}) : super._();

  @override
  AccountDto rebuild(void Function(AccountDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountDtoBuilder toBuilder() => new AccountDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountDto &&
        accountNumber == other.accountNumber &&
        did == other.did;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountNumber.hashCode);
    _$hash = $jc(_$hash, did.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountDto')
          ..add('accountNumber', accountNumber)
          ..add('did', did))
        .toString();
  }
}

class AccountDtoBuilder implements Builder<AccountDto, AccountDtoBuilder> {
  _$AccountDto? _$v;

  String? _accountNumber;
  String? get accountNumber => _$this._accountNumber;
  set accountNumber(String? accountNumber) =>
      _$this._accountNumber = accountNumber;

  String? _did;
  String? get did => _$this._did;
  set did(String? did) => _$this._did = did;

  AccountDtoBuilder() {
    AccountDto._defaults(this);
  }

  AccountDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountNumber = $v.accountNumber;
      _did = $v.did;
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
          accountNumber: accountNumber,
          did: did,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
