// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_configuration_client_metadata_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginConfigurationClientMetadataInput
    extends LoginConfigurationClientMetadataInput {
  @override
  final String name;
  @override
  final String origin;
  @override
  final String logo;

  factory _$LoginConfigurationClientMetadataInput(
          [void Function(LoginConfigurationClientMetadataInputBuilder)?
              updates]) =>
      (LoginConfigurationClientMetadataInputBuilder()..update(updates))
          ._build();

  _$LoginConfigurationClientMetadataInput._(
      {required this.name, required this.origin, required this.logo})
      : super._();
  @override
  LoginConfigurationClientMetadataInput rebuild(
          void Function(LoginConfigurationClientMetadataInputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginConfigurationClientMetadataInputBuilder toBuilder() =>
      LoginConfigurationClientMetadataInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginConfigurationClientMetadataInput &&
        name == other.name &&
        origin == other.origin &&
        logo == other.logo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jc(_$hash, logo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'LoginConfigurationClientMetadataInput')
          ..add('name', name)
          ..add('origin', origin)
          ..add('logo', logo))
        .toString();
  }
}

class LoginConfigurationClientMetadataInputBuilder
    implements
        Builder<LoginConfigurationClientMetadataInput,
            LoginConfigurationClientMetadataInputBuilder> {
  _$LoginConfigurationClientMetadataInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _origin;
  String? get origin => _$this._origin;
  set origin(String? origin) => _$this._origin = origin;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  LoginConfigurationClientMetadataInputBuilder() {
    LoginConfigurationClientMetadataInput._defaults(this);
  }

  LoginConfigurationClientMetadataInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _origin = $v.origin;
      _logo = $v.logo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginConfigurationClientMetadataInput other) {
    _$v = other as _$LoginConfigurationClientMetadataInput;
  }

  @override
  void update(
      void Function(LoginConfigurationClientMetadataInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginConfigurationClientMetadataInput build() => _build();

  _$LoginConfigurationClientMetadataInput _build() {
    final _$result = _$v ??
        _$LoginConfigurationClientMetadataInput._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'LoginConfigurationClientMetadataInput', 'name'),
          origin: BuiltValueNullFieldError.checkNotNull(
              origin, r'LoginConfigurationClientMetadataInput', 'origin'),
          logo: BuiltValueNullFieldError.checkNotNull(
              logo, r'LoginConfigurationClientMetadataInput', 'logo'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
