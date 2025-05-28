// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'typed_principal_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TypedPrincipalId extends TypedPrincipalId {
  @override
  final String principalId;

  factory _$TypedPrincipalId(
          [void Function(TypedPrincipalIdBuilder)? updates]) =>
      (TypedPrincipalIdBuilder()..update(updates))._build();

  _$TypedPrincipalId._({required this.principalId}) : super._();
  @override
  TypedPrincipalId rebuild(void Function(TypedPrincipalIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TypedPrincipalIdBuilder toBuilder() =>
      TypedPrincipalIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TypedPrincipalId && principalId == other.principalId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, principalId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TypedPrincipalId')
          ..add('principalId', principalId))
        .toString();
  }
}

class TypedPrincipalIdBuilder
    implements Builder<TypedPrincipalId, TypedPrincipalIdBuilder> {
  _$TypedPrincipalId? _$v;

  String? _principalId;
  String? get principalId => _$this._principalId;
  set principalId(String? principalId) => _$this._principalId = principalId;

  TypedPrincipalIdBuilder() {
    TypedPrincipalId._defaults(this);
  }

  TypedPrincipalIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _principalId = $v.principalId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TypedPrincipalId other) {
    _$v = other as _$TypedPrincipalId;
  }

  @override
  void update(void Function(TypedPrincipalIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TypedPrincipalId build() => _build();

  _$TypedPrincipalId _build() {
    final _$result = _$v ??
        _$TypedPrincipalId._(
          principalId: BuiltValueNullFieldError.checkNotNull(
              principalId, r'TypedPrincipalId', 'principalId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
