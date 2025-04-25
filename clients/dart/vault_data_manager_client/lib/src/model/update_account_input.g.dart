// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_account_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateAccountInput extends UpdateAccountInput {
  @override
  final String name;
  @override
  final String description;
  @override
  final String? alias;
  @override
  final String didProof;
  @override
  final JsonObject? metadata;
  @override
  final String accountDid;

  factory _$UpdateAccountInput(
          [void Function(UpdateAccountInputBuilder)? updates]) =>
      (new UpdateAccountInputBuilder()..update(updates))._build();

  _$UpdateAccountInput._(
      {required this.name,
      required this.description,
      this.alias,
      required this.didProof,
      this.metadata,
      required this.accountDid})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'UpdateAccountInput', 'name');
    BuiltValueNullFieldError.checkNotNull(
        description, r'UpdateAccountInput', 'description');
    BuiltValueNullFieldError.checkNotNull(
        didProof, r'UpdateAccountInput', 'didProof');
    BuiltValueNullFieldError.checkNotNull(
        accountDid, r'UpdateAccountInput', 'accountDid');
  }

  @override
  UpdateAccountInput rebuild(
          void Function(UpdateAccountInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateAccountInputBuilder toBuilder() =>
      new UpdateAccountInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateAccountInput &&
        name == other.name &&
        description == other.description &&
        alias == other.alias &&
        didProof == other.didProof &&
        metadata == other.metadata &&
        accountDid == other.accountDid;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, alias.hashCode);
    _$hash = $jc(_$hash, didProof.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, accountDid.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateAccountInput')
          ..add('name', name)
          ..add('description', description)
          ..add('alias', alias)
          ..add('didProof', didProof)
          ..add('metadata', metadata)
          ..add('accountDid', accountDid))
        .toString();
  }
}

class UpdateAccountInputBuilder
    implements Builder<UpdateAccountInput, UpdateAccountInputBuilder> {
  _$UpdateAccountInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _alias;
  String? get alias => _$this._alias;
  set alias(String? alias) => _$this._alias = alias;

  String? _didProof;
  String? get didProof => _$this._didProof;
  set didProof(String? didProof) => _$this._didProof = didProof;

  JsonObject? _metadata;
  JsonObject? get metadata => _$this._metadata;
  set metadata(JsonObject? metadata) => _$this._metadata = metadata;

  String? _accountDid;
  String? get accountDid => _$this._accountDid;
  set accountDid(String? accountDid) => _$this._accountDid = accountDid;

  UpdateAccountInputBuilder() {
    UpdateAccountInput._defaults(this);
  }

  UpdateAccountInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _alias = $v.alias;
      _didProof = $v.didProof;
      _metadata = $v.metadata;
      _accountDid = $v.accountDid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateAccountInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateAccountInput;
  }

  @override
  void update(void Function(UpdateAccountInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateAccountInput build() => _build();

  _$UpdateAccountInput _build() {
    final _$result = _$v ??
        new _$UpdateAccountInput._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'UpdateAccountInput', 'name'),
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'UpdateAccountInput', 'description'),
          alias: alias,
          didProof: BuiltValueNullFieldError.checkNotNull(
              didProof, r'UpdateAccountInput', 'didProof'),
          metadata: metadata,
          accountDid: BuiltValueNullFieldError.checkNotNull(
              accountDid, r'UpdateAccountInput', 'accountDid'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
