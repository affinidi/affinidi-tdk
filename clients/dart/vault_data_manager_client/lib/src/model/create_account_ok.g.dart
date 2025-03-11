// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_account_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateAccountOK extends CreateAccountOK {
  @override
  final String accountNumber;
  @override
  final String profileDid;

  factory _$CreateAccountOK([void Function(CreateAccountOKBuilder)? updates]) =>
      (new CreateAccountOKBuilder()..update(updates))._build();

  _$CreateAccountOK._({required this.accountNumber, required this.profileDid})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accountNumber, r'CreateAccountOK', 'accountNumber');
    BuiltValueNullFieldError.checkNotNull(
        profileDid, r'CreateAccountOK', 'profileDid');
  }

  @override
  CreateAccountOK rebuild(void Function(CreateAccountOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateAccountOKBuilder toBuilder() =>
      new CreateAccountOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateAccountOK &&
        accountNumber == other.accountNumber &&
        profileDid == other.profileDid;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountNumber.hashCode);
    _$hash = $jc(_$hash, profileDid.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateAccountOK')
          ..add('accountNumber', accountNumber)
          ..add('profileDid', profileDid))
        .toString();
  }
}

class CreateAccountOKBuilder
    implements Builder<CreateAccountOK, CreateAccountOKBuilder> {
  _$CreateAccountOK? _$v;

  String? _accountNumber;
  String? get accountNumber => _$this._accountNumber;
  set accountNumber(String? accountNumber) =>
      _$this._accountNumber = accountNumber;

  String? _profileDid;
  String? get profileDid => _$this._profileDid;
  set profileDid(String? profileDid) => _$this._profileDid = profileDid;

  CreateAccountOKBuilder() {
    CreateAccountOK._defaults(this);
  }

  CreateAccountOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountNumber = $v.accountNumber;
      _profileDid = $v.profileDid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateAccountOK other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateAccountOK;
  }

  @override
  void update(void Function(CreateAccountOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateAccountOK build() => _build();

  _$CreateAccountOK _build() {
    final _$result = _$v ??
        new _$CreateAccountOK._(
          accountNumber: BuiltValueNullFieldError.checkNotNull(
              accountNumber, r'CreateAccountOK', 'accountNumber'),
          profileDid: BuiltValueNullFieldError.checkNotNull(
              profileDid, r'CreateAccountOK', 'profileDid'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
