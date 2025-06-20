// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_token_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTokenInput extends CreateTokenInput {
  @override
  final String name;
  @override
  final TokenPrivateKeyAuthenticationMethodDto authenticationMethod;
  @override
  final String? description;

  factory _$CreateTokenInput(
          [void Function(CreateTokenInputBuilder)? updates]) =>
      (CreateTokenInputBuilder()..update(updates))._build();

  _$CreateTokenInput._(
      {required this.name,
      required this.authenticationMethod,
      this.description})
      : super._();
  @override
  CreateTokenInput rebuild(void Function(CreateTokenInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTokenInputBuilder toBuilder() =>
      CreateTokenInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTokenInput &&
        name == other.name &&
        authenticationMethod == other.authenticationMethod &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, authenticationMethod.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateTokenInput')
          ..add('name', name)
          ..add('authenticationMethod', authenticationMethod)
          ..add('description', description))
        .toString();
  }
}

class CreateTokenInputBuilder
    implements Builder<CreateTokenInput, CreateTokenInputBuilder> {
  _$CreateTokenInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  TokenPrivateKeyAuthenticationMethodDtoBuilder? _authenticationMethod;
  TokenPrivateKeyAuthenticationMethodDtoBuilder get authenticationMethod =>
      _$this._authenticationMethod ??=
          TokenPrivateKeyAuthenticationMethodDtoBuilder();
  set authenticationMethod(
          TokenPrivateKeyAuthenticationMethodDtoBuilder?
              authenticationMethod) =>
      _$this._authenticationMethod = authenticationMethod;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  CreateTokenInputBuilder() {
    CreateTokenInput._defaults(this);
  }

  CreateTokenInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _authenticationMethod = $v.authenticationMethod.toBuilder();
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTokenInput other) {
    _$v = other as _$CreateTokenInput;
  }

  @override
  void update(void Function(CreateTokenInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTokenInput build() => _build();

  _$CreateTokenInput _build() {
    _$CreateTokenInput _$result;
    try {
      _$result = _$v ??
          _$CreateTokenInput._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CreateTokenInput', 'name'),
            authenticationMethod: authenticationMethod.build(),
            description: description,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'authenticationMethod';
        authenticationMethod.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreateTokenInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
