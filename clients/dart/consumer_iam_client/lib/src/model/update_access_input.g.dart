// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_access_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateAccessInput extends UpdateAccessInput {
  @override
  final BuiltList<Permission> permissions;

  factory _$UpdateAccessInput(
          [void Function(UpdateAccessInputBuilder)? updates]) =>
      (UpdateAccessInputBuilder()..update(updates))._build();

  _$UpdateAccessInput._({required this.permissions}) : super._();
  @override
  UpdateAccessInput rebuild(void Function(UpdateAccessInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateAccessInputBuilder toBuilder() =>
      UpdateAccessInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateAccessInput && permissions == other.permissions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateAccessInput')
          ..add('permissions', permissions))
        .toString();
  }
}

class UpdateAccessInputBuilder
    implements Builder<UpdateAccessInput, UpdateAccessInputBuilder> {
  _$UpdateAccessInput? _$v;

  ListBuilder<Permission>? _permissions;
  ListBuilder<Permission> get permissions =>
      _$this._permissions ??= ListBuilder<Permission>();
  set permissions(ListBuilder<Permission>? permissions) =>
      _$this._permissions = permissions;

  UpdateAccessInputBuilder() {
    UpdateAccessInput._defaults(this);
  }

  UpdateAccessInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _permissions = $v.permissions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateAccessInput other) {
    _$v = other as _$UpdateAccessInput;
  }

  @override
  void update(void Function(UpdateAccessInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateAccessInput build() => _build();

  _$UpdateAccessInput _build() {
    _$UpdateAccessInput _$result;
    try {
      _$result = _$v ??
          _$UpdateAccessInput._(
            permissions: permissions.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'permissions';
        permissions.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UpdateAccessInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
