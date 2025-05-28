// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_user_to_project_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddUserToProjectInput extends AddUserToProjectInput {
  @override
  final String principalId;
  @override
  final String principalType;

  factory _$AddUserToProjectInput(
          [void Function(AddUserToProjectInputBuilder)? updates]) =>
      (AddUserToProjectInputBuilder()..update(updates))._build();

  _$AddUserToProjectInput._(
      {required this.principalId, required this.principalType})
      : super._();
  @override
  AddUserToProjectInput rebuild(
          void Function(AddUserToProjectInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddUserToProjectInputBuilder toBuilder() =>
      AddUserToProjectInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddUserToProjectInput &&
        principalId == other.principalId &&
        principalType == other.principalType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, principalId.hashCode);
    _$hash = $jc(_$hash, principalType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddUserToProjectInput')
          ..add('principalId', principalId)
          ..add('principalType', principalType))
        .toString();
  }
}

class AddUserToProjectInputBuilder
    implements Builder<AddUserToProjectInput, AddUserToProjectInputBuilder> {
  _$AddUserToProjectInput? _$v;

  String? _principalId;
  String? get principalId => _$this._principalId;
  set principalId(String? principalId) => _$this._principalId = principalId;

  String? _principalType;
  String? get principalType => _$this._principalType;
  set principalType(String? principalType) =>
      _$this._principalType = principalType;

  AddUserToProjectInputBuilder() {
    AddUserToProjectInput._defaults(this);
  }

  AddUserToProjectInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _principalId = $v.principalId;
      _principalType = $v.principalType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddUserToProjectInput other) {
    _$v = other as _$AddUserToProjectInput;
  }

  @override
  void update(void Function(AddUserToProjectInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddUserToProjectInput build() => _build();

  _$AddUserToProjectInput _build() {
    final _$result = _$v ??
        _$AddUserToProjectInput._(
          principalId: BuiltValueNullFieldError.checkNotNull(
              principalId, r'AddUserToProjectInput', 'principalId'),
          principalType: BuiltValueNullFieldError.checkNotNull(
              principalType, r'AddUserToProjectInput', 'principalType'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
