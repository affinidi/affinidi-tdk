// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_access_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateAccessInput extends UpdateAccessInput {
  @override
  final BuiltList<RightsEnum> rights;

  factory _$UpdateAccessInput(
          [void Function(UpdateAccessInputBuilder)? updates]) =>
      (UpdateAccessInputBuilder()..update(updates))._build();

  _$UpdateAccessInput._({required this.rights}) : super._();
  @override
  UpdateAccessInput rebuild(void Function(UpdateAccessInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateAccessInputBuilder toBuilder() =>
      UpdateAccessInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateAccessInput && rights == other.rights;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rights.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateAccessInput')
          ..add('rights', rights))
        .toString();
  }
}

class UpdateAccessInputBuilder
    implements Builder<UpdateAccessInput, UpdateAccessInputBuilder> {
  _$UpdateAccessInput? _$v;

  ListBuilder<RightsEnum>? _rights;
  ListBuilder<RightsEnum> get rights =>
      _$this._rights ??= ListBuilder<RightsEnum>();
  set rights(ListBuilder<RightsEnum>? rights) => _$this._rights = rights;

  UpdateAccessInputBuilder() {
    UpdateAccessInput._defaults(this);
  }

  UpdateAccessInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rights = $v.rights.toBuilder();
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
            rights: rights.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rights';
        rights.build();
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
