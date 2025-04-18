// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_account_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateAccountInput extends CreateAccountInput {
  @override
  final int accountIndex;
  @override
  final String accountDid;
  @override
  final String didProof;

  factory _$CreateAccountInput(
          [void Function(CreateAccountInputBuilder)? updates]) =>
      (new CreateAccountInputBuilder()..update(updates))._build();

  _$CreateAccountInput._(
      {required this.accountIndex,
      required this.accountDid,
      required this.didProof})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accountIndex, r'CreateAccountInput', 'accountIndex');
    BuiltValueNullFieldError.checkNotNull(
        accountDid, r'CreateAccountInput', 'accountDid');
    BuiltValueNullFieldError.checkNotNull(
        didProof, r'CreateAccountInput', 'didProof');
  }

  @override
  CreateAccountInput rebuild(
          void Function(CreateAccountInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateAccountInputBuilder toBuilder() =>
      new CreateAccountInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateAccountInput &&
        accountIndex == other.accountIndex &&
        accountDid == other.accountDid &&
        didProof == other.didProof;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountIndex.hashCode);
    _$hash = $jc(_$hash, accountDid.hashCode);
    _$hash = $jc(_$hash, didProof.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateAccountInput')
          ..add('accountIndex', accountIndex)
          ..add('accountDid', accountDid)
          ..add('didProof', didProof))
        .toString();
  }
}

class CreateAccountInputBuilder
    implements Builder<CreateAccountInput, CreateAccountInputBuilder> {
  _$CreateAccountInput? _$v;

  int? _accountIndex;
  int? get accountIndex => _$this._accountIndex;
  set accountIndex(int? accountIndex) => _$this._accountIndex = accountIndex;

  String? _accountDid;
  String? get accountDid => _$this._accountDid;
  set accountDid(String? accountDid) => _$this._accountDid = accountDid;

  String? _didProof;
  String? get didProof => _$this._didProof;
  set didProof(String? didProof) => _$this._didProof = didProof;

  CreateAccountInputBuilder() {
    CreateAccountInput._defaults(this);
  }

  CreateAccountInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountIndex = $v.accountIndex;
      _accountDid = $v.accountDid;
      _didProof = $v.didProof;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateAccountInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateAccountInput;
  }

  @override
  void update(void Function(CreateAccountInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateAccountInput build() => _build();

  _$CreateAccountInput _build() {
    final _$result = _$v ??
        new _$CreateAccountInput._(
          accountIndex: BuiltValueNullFieldError.checkNotNull(
              accountIndex, r'CreateAccountInput', 'accountIndex'),
          accountDid: BuiltValueNullFieldError.checkNotNull(
              accountDid, r'CreateAccountInput', 'accountDid'),
          didProof: BuiltValueNullFieldError.checkNotNull(
              didProof, r'CreateAccountInput', 'didProof'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
