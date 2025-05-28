// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_configuration_client_metadata_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginConfigurationClientMetadataOutput
    extends LoginConfigurationClientMetadataOutput {
  @override
  final String name;
  @override
  final String origin;
  @override
  final String logo;
  @override
  final bool? domainVerified;

  factory _$LoginConfigurationClientMetadataOutput(
          [void Function(LoginConfigurationClientMetadataOutputBuilder)?
              updates]) =>
      (LoginConfigurationClientMetadataOutputBuilder()..update(updates))
          ._build();

  _$LoginConfigurationClientMetadataOutput._(
      {required this.name,
      required this.origin,
      required this.logo,
      this.domainVerified})
      : super._();
  @override
  LoginConfigurationClientMetadataOutput rebuild(
          void Function(LoginConfigurationClientMetadataOutputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginConfigurationClientMetadataOutputBuilder toBuilder() =>
      LoginConfigurationClientMetadataOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginConfigurationClientMetadataOutput &&
        name == other.name &&
        origin == other.origin &&
        logo == other.logo &&
        domainVerified == other.domainVerified;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jc(_$hash, logo.hashCode);
    _$hash = $jc(_$hash, domainVerified.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'LoginConfigurationClientMetadataOutput')
          ..add('name', name)
          ..add('origin', origin)
          ..add('logo', logo)
          ..add('domainVerified', domainVerified))
        .toString();
  }
}

class LoginConfigurationClientMetadataOutputBuilder
    implements
        Builder<LoginConfigurationClientMetadataOutput,
            LoginConfigurationClientMetadataOutputBuilder> {
  _$LoginConfigurationClientMetadataOutput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _origin;
  String? get origin => _$this._origin;
  set origin(String? origin) => _$this._origin = origin;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  bool? _domainVerified;
  bool? get domainVerified => _$this._domainVerified;
  set domainVerified(bool? domainVerified) =>
      _$this._domainVerified = domainVerified;

  LoginConfigurationClientMetadataOutputBuilder() {
    LoginConfigurationClientMetadataOutput._defaults(this);
  }

  LoginConfigurationClientMetadataOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _origin = $v.origin;
      _logo = $v.logo;
      _domainVerified = $v.domainVerified;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginConfigurationClientMetadataOutput other) {
    _$v = other as _$LoginConfigurationClientMetadataOutput;
  }

  @override
  void update(
      void Function(LoginConfigurationClientMetadataOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginConfigurationClientMetadataOutput build() => _build();

  _$LoginConfigurationClientMetadataOutput _build() {
    final _$result = _$v ??
        _$LoginConfigurationClientMetadataOutput._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'LoginConfigurationClientMetadataOutput', 'name'),
          origin: BuiltValueNullFieldError.checkNotNull(
              origin, r'LoginConfigurationClientMetadataOutput', 'origin'),
          logo: BuiltValueNullFieldError.checkNotNull(
              logo, r'LoginConfigurationClientMetadataOutput', 'logo'),
          domainVerified: domainVerified,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
