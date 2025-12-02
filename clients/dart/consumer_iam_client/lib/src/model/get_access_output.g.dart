// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_access_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAccessOutput extends GetAccessOutput {
  @override
  final BuiltList<Permission> permissions;

  factory _$GetAccessOutput([void Function(GetAccessOutputBuilder)? updates]) =>
      (GetAccessOutputBuilder()..update(updates))._build();

  _$GetAccessOutput._({required this.permissions}) : super._();
  @override
  GetAccessOutput rebuild(void Function(GetAccessOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAccessOutputBuilder toBuilder() => GetAccessOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAccessOutput && permissions == other.permissions;
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
    return (newBuiltValueToStringHelper(r'GetAccessOutput')
          ..add('permissions', permissions))
        .toString();
  }
}

class GetAccessOutputBuilder
    implements Builder<GetAccessOutput, GetAccessOutputBuilder> {
  _$GetAccessOutput? _$v;

  ListBuilder<Permission>? _permissions;
  ListBuilder<Permission> get permissions =>
      _$this._permissions ??= ListBuilder<Permission>();
  set permissions(ListBuilder<Permission>? permissions) =>
      _$this._permissions = permissions;

  GetAccessOutputBuilder() {
    GetAccessOutput._defaults(this);
  }

  GetAccessOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _permissions = $v.permissions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAccessOutput other) {
    _$v = other as _$GetAccessOutput;
  }

  @override
  void update(void Function(GetAccessOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAccessOutput build() => _build();

  _$GetAccessOutput _build() {
    _$GetAccessOutput _$result;
    try {
      _$result = _$v ??
          _$GetAccessOutput._(
            permissions: permissions.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'permissions';
        permissions.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetAccessOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
