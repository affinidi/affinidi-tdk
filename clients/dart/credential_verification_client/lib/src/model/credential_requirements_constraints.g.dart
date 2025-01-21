// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_requirements_constraints.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CredentialRequirementsConstraints
    extends CredentialRequirementsConstraints {
  @override
  final AnyOf anyOf;

  factory _$CredentialRequirementsConstraints(
          [void Function(CredentialRequirementsConstraintsBuilder)? updates]) =>
      (new CredentialRequirementsConstraintsBuilder()..update(updates))
          ._build();

  _$CredentialRequirementsConstraints._({required this.anyOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        anyOf, r'CredentialRequirementsConstraints', 'anyOf');
  }

  @override
  CredentialRequirementsConstraints rebuild(
          void Function(CredentialRequirementsConstraintsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CredentialRequirementsConstraintsBuilder toBuilder() =>
      new CredentialRequirementsConstraintsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CredentialRequirementsConstraints && anyOf == other.anyOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, anyOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CredentialRequirementsConstraints')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class CredentialRequirementsConstraintsBuilder
    implements
        Builder<CredentialRequirementsConstraints,
            CredentialRequirementsConstraintsBuilder> {
  _$CredentialRequirementsConstraints? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  CredentialRequirementsConstraintsBuilder() {
    CredentialRequirementsConstraints._defaults(this);
  }

  CredentialRequirementsConstraintsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CredentialRequirementsConstraints other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CredentialRequirementsConstraints;
  }

  @override
  void update(
      void Function(CredentialRequirementsConstraintsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CredentialRequirementsConstraints build() => _build();

  _$CredentialRequirementsConstraints _build() {
    final _$result = _$v ??
        new _$CredentialRequirementsConstraints._(
          anyOf: BuiltValueNullFieldError.checkNotNull(
              anyOf, r'CredentialRequirementsConstraints', 'anyOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
