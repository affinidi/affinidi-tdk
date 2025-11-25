// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grant_access_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GrantAccessInput extends GrantAccessInput {
  @override
  final BuiltList<Permission> permissions;

  factory _$GrantAccessInput(
          [void Function(GrantAccessInputBuilder)? updates]) =>
      (GrantAccessInputBuilder()..update(updates))._build();

  _$GrantAccessInput._({required this.permissions}) : super._();
  @override
  GrantAccessInput rebuild(void Function(GrantAccessInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GrantAccessInputBuilder toBuilder() =>
      GrantAccessInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GrantAccessInput && permissions == other.permissions;
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
    return (newBuiltValueToStringHelper(r'GrantAccessInput')
          ..add('permissions', permissions))
        .toString();
  }
}

class GrantAccessInputBuilder
    implements Builder<GrantAccessInput, GrantAccessInputBuilder> {
  _$GrantAccessInput? _$v;

  ListBuilder<Permission>? _permissions;
  ListBuilder<Permission> get permissions =>
      _$this._permissions ??= ListBuilder<Permission>();
  set permissions(ListBuilder<Permission>? permissions) =>
      _$this._permissions = permissions;

  GrantAccessInputBuilder() {
    GrantAccessInput._defaults(this);
  }

  GrantAccessInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _permissions = $v.permissions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GrantAccessInput other) {
    _$v = other as _$GrantAccessInput;
  }

  @override
  void update(void Function(GrantAccessInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GrantAccessInput build() => _build();

  _$GrantAccessInput _build() {
    _$GrantAccessInput _$result;
    try {
      _$result = _$v ??
          _$GrantAccessInput._(
            permissions: permissions.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'permissions';
        permissions.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GrantAccessInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
