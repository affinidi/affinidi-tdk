// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'policy_statement_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PolicyStatementDto extends PolicyStatementDto {
  @override
  final BuiltList<String> action;
  @override
  final String effect;
  @override
  final BuiltList<String> principal;
  @override
  final BuiltList<String> resource;

  factory _$PolicyStatementDto(
          [void Function(PolicyStatementDtoBuilder)? updates]) =>
      (PolicyStatementDtoBuilder()..update(updates))._build();

  _$PolicyStatementDto._(
      {required this.action,
      required this.effect,
      required this.principal,
      required this.resource})
      : super._();
  @override
  PolicyStatementDto rebuild(
          void Function(PolicyStatementDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PolicyStatementDtoBuilder toBuilder() =>
      PolicyStatementDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PolicyStatementDto &&
        action == other.action &&
        effect == other.effect &&
        principal == other.principal &&
        resource == other.resource;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, effect.hashCode);
    _$hash = $jc(_$hash, principal.hashCode);
    _$hash = $jc(_$hash, resource.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PolicyStatementDto')
          ..add('action', action)
          ..add('effect', effect)
          ..add('principal', principal)
          ..add('resource', resource))
        .toString();
  }
}

class PolicyStatementDtoBuilder
    implements Builder<PolicyStatementDto, PolicyStatementDtoBuilder> {
  _$PolicyStatementDto? _$v;

  ListBuilder<String>? _action;
  ListBuilder<String> get action => _$this._action ??= ListBuilder<String>();
  set action(ListBuilder<String>? action) => _$this._action = action;

  String? _effect;
  String? get effect => _$this._effect;
  set effect(String? effect) => _$this._effect = effect;

  ListBuilder<String>? _principal;
  ListBuilder<String> get principal =>
      _$this._principal ??= ListBuilder<String>();
  set principal(ListBuilder<String>? principal) =>
      _$this._principal = principal;

  ListBuilder<String>? _resource;
  ListBuilder<String> get resource =>
      _$this._resource ??= ListBuilder<String>();
  set resource(ListBuilder<String>? resource) => _$this._resource = resource;

  PolicyStatementDtoBuilder() {
    PolicyStatementDto._defaults(this);
  }

  PolicyStatementDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _action = $v.action.toBuilder();
      _effect = $v.effect;
      _principal = $v.principal.toBuilder();
      _resource = $v.resource.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PolicyStatementDto other) {
    _$v = other as _$PolicyStatementDto;
  }

  @override
  void update(void Function(PolicyStatementDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PolicyStatementDto build() => _build();

  _$PolicyStatementDto _build() {
    _$PolicyStatementDto _$result;
    try {
      _$result = _$v ??
          _$PolicyStatementDto._(
            action: action.build(),
            effect: BuiltValueNullFieldError.checkNotNull(
                effect, r'PolicyStatementDto', 'effect'),
            principal: principal.build(),
            resource: resource.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'action';
        action.build();

        _$failedField = 'principal';
        principal.build();
        _$failedField = 'resource';
        resource.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PolicyStatementDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
