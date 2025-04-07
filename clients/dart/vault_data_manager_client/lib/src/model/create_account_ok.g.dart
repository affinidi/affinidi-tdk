// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_account_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateAccountOK extends CreateAccountOK {
  @override
  final int accountIndex;
  @override
  final String accountDid;

  factory _$CreateAccountOK([void Function(CreateAccountOKBuilder)? updates]) =>
      (new CreateAccountOKBuilder()..update(updates))._build();

  _$CreateAccountOK._({required this.accountIndex, required this.accountDid})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accountIndex, r'CreateAccountOK', 'accountIndex');
    BuiltValueNullFieldError.checkNotNull(
        accountDid, r'CreateAccountOK', 'accountDid');
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
        accountIndex == other.accountIndex &&
        accountDid == other.accountDid;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountIndex.hashCode);
    _$hash = $jc(_$hash, accountDid.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateAccountOK')
          ..add('accountIndex', accountIndex)
          ..add('accountDid', accountDid))
        .toString();
  }
}

class CreateAccountOKBuilder
    implements Builder<CreateAccountOK, CreateAccountOKBuilder> {
  _$CreateAccountOK? _$v;

  int? _accountIndex;
  int? get accountIndex => _$this._accountIndex;
  set accountIndex(int? accountIndex) => _$this._accountIndex = accountIndex;

  String? _accountDid;
  String? get accountDid => _$this._accountDid;
  set accountDid(String? accountDid) => _$this._accountDid = accountDid;

  CreateAccountOKBuilder() {
    CreateAccountOK._defaults(this);
  }

  CreateAccountOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountIndex = $v.accountIndex;
      _accountDid = $v.accountDid;
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
          accountIndex: BuiltValueNullFieldError.checkNotNull(
              accountIndex, r'CreateAccountOK', 'accountIndex'),
          accountDid: BuiltValueNullFieldError.checkNotNull(
              accountDid, r'CreateAccountOK', 'accountDid'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
