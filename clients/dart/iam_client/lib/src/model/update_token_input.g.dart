// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_token_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateTokenInput extends UpdateTokenInput {
  @override
  final String? name;
  @override
  final UpdateTokenPrivateKeyAuthenticationMethodDto? authenticationMethod;

  factory _$UpdateTokenInput(
          [void Function(UpdateTokenInputBuilder)? updates]) =>
      (UpdateTokenInputBuilder()..update(updates))._build();

  _$UpdateTokenInput._({this.name, this.authenticationMethod}) : super._();
  @override
  UpdateTokenInput rebuild(void Function(UpdateTokenInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateTokenInputBuilder toBuilder() =>
      UpdateTokenInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateTokenInput &&
        name == other.name &&
        authenticationMethod == other.authenticationMethod;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, authenticationMethod.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateTokenInput')
          ..add('name', name)
          ..add('authenticationMethod', authenticationMethod))
        .toString();
  }
}

class UpdateTokenInputBuilder
    implements Builder<UpdateTokenInput, UpdateTokenInputBuilder> {
  _$UpdateTokenInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  UpdateTokenPrivateKeyAuthenticationMethodDtoBuilder? _authenticationMethod;
  UpdateTokenPrivateKeyAuthenticationMethodDtoBuilder
      get authenticationMethod => _$this._authenticationMethod ??=
          UpdateTokenPrivateKeyAuthenticationMethodDtoBuilder();
  set authenticationMethod(
          UpdateTokenPrivateKeyAuthenticationMethodDtoBuilder?
              authenticationMethod) =>
      _$this._authenticationMethod = authenticationMethod;

  UpdateTokenInputBuilder() {
    UpdateTokenInput._defaults(this);
  }

  UpdateTokenInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _authenticationMethod = $v.authenticationMethod?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateTokenInput other) {
    _$v = other as _$UpdateTokenInput;
  }

  @override
  void update(void Function(UpdateTokenInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateTokenInput build() => _build();

  _$UpdateTokenInput _build() {
    _$UpdateTokenInput _$result;
    try {
      _$result = _$v ??
          _$UpdateTokenInput._(
            name: name,
            authenticationMethod: _authenticationMethod?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'authenticationMethod';
        _authenticationMethod?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UpdateTokenInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
