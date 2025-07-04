// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'well_known_open_id_credential_issuer_response_display.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WellKnownOpenIdCredentialIssuerResponseDisplay
    extends WellKnownOpenIdCredentialIssuerResponseDisplay {
  @override
  final String? name;
  @override
  final String? locale;
  @override
  final WellKnownOpenIdCredentialIssuerResponseDisplayLogo? logo;

  factory _$WellKnownOpenIdCredentialIssuerResponseDisplay(
          [void Function(WellKnownOpenIdCredentialIssuerResponseDisplayBuilder)?
              updates]) =>
      (WellKnownOpenIdCredentialIssuerResponseDisplayBuilder()..update(updates))
          ._build();

  _$WellKnownOpenIdCredentialIssuerResponseDisplay._(
      {this.name, this.locale, this.logo})
      : super._();
  @override
  WellKnownOpenIdCredentialIssuerResponseDisplay rebuild(
          void Function(WellKnownOpenIdCredentialIssuerResponseDisplayBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WellKnownOpenIdCredentialIssuerResponseDisplayBuilder toBuilder() =>
      WellKnownOpenIdCredentialIssuerResponseDisplayBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WellKnownOpenIdCredentialIssuerResponseDisplay &&
        name == other.name &&
        locale == other.locale &&
        logo == other.logo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, locale.hashCode);
    _$hash = $jc(_$hash, logo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'WellKnownOpenIdCredentialIssuerResponseDisplay')
          ..add('name', name)
          ..add('locale', locale)
          ..add('logo', logo))
        .toString();
  }
}

class WellKnownOpenIdCredentialIssuerResponseDisplayBuilder
    implements
        Builder<WellKnownOpenIdCredentialIssuerResponseDisplay,
            WellKnownOpenIdCredentialIssuerResponseDisplayBuilder> {
  _$WellKnownOpenIdCredentialIssuerResponseDisplay? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _locale;
  String? get locale => _$this._locale;
  set locale(String? locale) => _$this._locale = locale;

  WellKnownOpenIdCredentialIssuerResponseDisplayLogoBuilder? _logo;
  WellKnownOpenIdCredentialIssuerResponseDisplayLogoBuilder get logo =>
      _$this._logo ??=
          WellKnownOpenIdCredentialIssuerResponseDisplayLogoBuilder();
  set logo(WellKnownOpenIdCredentialIssuerResponseDisplayLogoBuilder? logo) =>
      _$this._logo = logo;

  WellKnownOpenIdCredentialIssuerResponseDisplayBuilder() {
    WellKnownOpenIdCredentialIssuerResponseDisplay._defaults(this);
  }

  WellKnownOpenIdCredentialIssuerResponseDisplayBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _locale = $v.locale;
      _logo = $v.logo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WellKnownOpenIdCredentialIssuerResponseDisplay other) {
    _$v = other as _$WellKnownOpenIdCredentialIssuerResponseDisplay;
  }

  @override
  void update(
      void Function(WellKnownOpenIdCredentialIssuerResponseDisplayBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  WellKnownOpenIdCredentialIssuerResponseDisplay build() => _build();

  _$WellKnownOpenIdCredentialIssuerResponseDisplay _build() {
    _$WellKnownOpenIdCredentialIssuerResponseDisplay _$result;
    try {
      _$result = _$v ??
          _$WellKnownOpenIdCredentialIssuerResponseDisplay._(
            name: name,
            locale: locale,
            logo: _logo?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'logo';
        _logo?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WellKnownOpenIdCredentialIssuerResponseDisplay',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
