// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_user_from_group_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RemoveUserFromGroupInput extends RemoveUserFromGroupInput {
  @override
  final String userId;

  factory _$RemoveUserFromGroupInput(
          [void Function(RemoveUserFromGroupInputBuilder)? updates]) =>
      (new RemoveUserFromGroupInputBuilder()..update(updates))._build();

  _$RemoveUserFromGroupInput._({required this.userId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userId, r'RemoveUserFromGroupInput', 'userId');
  }

  @override
  RemoveUserFromGroupInput rebuild(
          void Function(RemoveUserFromGroupInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemoveUserFromGroupInputBuilder toBuilder() =>
      new RemoveUserFromGroupInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemoveUserFromGroupInput && userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RemoveUserFromGroupInput')
          ..add('userId', userId))
        .toString();
  }
}

class RemoveUserFromGroupInputBuilder
    implements
        Builder<RemoveUserFromGroupInput, RemoveUserFromGroupInputBuilder> {
  _$RemoveUserFromGroupInput? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  RemoveUserFromGroupInputBuilder() {
    RemoveUserFromGroupInput._defaults(this);
  }

  RemoveUserFromGroupInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemoveUserFromGroupInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemoveUserFromGroupInput;
  }

  @override
  void update(void Function(RemoveUserFromGroupInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RemoveUserFromGroupInput build() => _build();

  _$RemoveUserFromGroupInput _build() {
    final _$result = _$v ??
        new _$RemoveUserFromGroupInput._(
          userId: BuiltValueNullFieldError.checkNotNull(
              userId, r'RemoveUserFromGroupInput', 'userId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
