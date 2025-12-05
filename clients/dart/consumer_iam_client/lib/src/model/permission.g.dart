// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Permission extends Permission {
  @override
  final BuiltList<RightsEnum> rights;
  @override
  final BuiltList<String> nodeIds;
  @override
  final DateTime? expiresAt;

  factory _$Permission([void Function(PermissionBuilder)? updates]) =>
      (PermissionBuilder()..update(updates))._build();

  _$Permission._({required this.rights, required this.nodeIds, this.expiresAt})
      : super._();
  @override
  Permission rebuild(void Function(PermissionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PermissionBuilder toBuilder() => PermissionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Permission &&
        rights == other.rights &&
        nodeIds == other.nodeIds &&
        expiresAt == other.expiresAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rights.hashCode);
    _$hash = $jc(_$hash, nodeIds.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Permission')
          ..add('rights', rights)
          ..add('nodeIds', nodeIds)
          ..add('expiresAt', expiresAt))
        .toString();
  }
}

class PermissionBuilder implements Builder<Permission, PermissionBuilder> {
  _$Permission? _$v;

  ListBuilder<RightsEnum>? _rights;
  ListBuilder<RightsEnum> get rights =>
      _$this._rights ??= ListBuilder<RightsEnum>();
  set rights(ListBuilder<RightsEnum>? rights) => _$this._rights = rights;

  ListBuilder<String>? _nodeIds;
  ListBuilder<String> get nodeIds => _$this._nodeIds ??= ListBuilder<String>();
  set nodeIds(ListBuilder<String>? nodeIds) => _$this._nodeIds = nodeIds;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  PermissionBuilder() {
    Permission._defaults(this);
  }

  PermissionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rights = $v.rights.toBuilder();
      _nodeIds = $v.nodeIds.toBuilder();
      _expiresAt = $v.expiresAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Permission other) {
    _$v = other as _$Permission;
  }

  @override
  void update(void Function(PermissionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Permission build() => _build();

  _$Permission _build() {
    _$Permission _$result;
    try {
      _$result = _$v ??
          _$Permission._(
            rights: rights.build(),
            nodeIds: nodeIds.build(),
            expiresAt: expiresAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rights';
        rights.build();
        _$failedField = 'nodeIds';
        nodeIds.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Permission', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
