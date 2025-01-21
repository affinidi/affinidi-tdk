// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_requirements.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CredentialRequirements extends CredentialRequirements {
  @override
  final BuiltList<String> type;
  @override
  final CredentialRequirementsConstraints? constraints;

  factory _$CredentialRequirements(
          [void Function(CredentialRequirementsBuilder)? updates]) =>
      (new CredentialRequirementsBuilder()..update(updates))._build();

  _$CredentialRequirements._({required this.type, this.constraints})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        type, r'CredentialRequirements', 'type');
  }

  @override
  CredentialRequirements rebuild(
          void Function(CredentialRequirementsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CredentialRequirementsBuilder toBuilder() =>
      new CredentialRequirementsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CredentialRequirements &&
        type == other.type &&
        constraints == other.constraints;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, constraints.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CredentialRequirements')
          ..add('type', type)
          ..add('constraints', constraints))
        .toString();
  }
}

class CredentialRequirementsBuilder
    implements Builder<CredentialRequirements, CredentialRequirementsBuilder> {
  _$CredentialRequirements? _$v;

  ListBuilder<String>? _type;
  ListBuilder<String> get type => _$this._type ??= new ListBuilder<String>();
  set type(ListBuilder<String>? type) => _$this._type = type;

  CredentialRequirementsConstraintsBuilder? _constraints;
  CredentialRequirementsConstraintsBuilder get constraints =>
      _$this._constraints ??= new CredentialRequirementsConstraintsBuilder();
  set constraints(CredentialRequirementsConstraintsBuilder? constraints) =>
      _$this._constraints = constraints;

  CredentialRequirementsBuilder() {
    CredentialRequirements._defaults(this);
  }

  CredentialRequirementsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type.toBuilder();
      _constraints = $v.constraints?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CredentialRequirements other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CredentialRequirements;
  }

  @override
  void update(void Function(CredentialRequirementsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CredentialRequirements build() => _build();

  _$CredentialRequirements _build() {
    _$CredentialRequirements _$result;
    try {
      _$result = _$v ??
          new _$CredentialRequirements._(
            type: type.build(),
            constraints: _constraints?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'type';
        type.build();
        _$failedField = 'constraints';
        _constraints?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CredentialRequirements', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
