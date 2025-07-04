// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'well_known_open_id_credential_issuer_response_display_logo.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WellKnownOpenIdCredentialIssuerResponseDisplayLogo
    extends WellKnownOpenIdCredentialIssuerResponseDisplayLogo {
  @override
  final String uri;
  @override
  final String? altText;

  factory _$WellKnownOpenIdCredentialIssuerResponseDisplayLogo(
          [void Function(
                  WellKnownOpenIdCredentialIssuerResponseDisplayLogoBuilder)?
              updates]) =>
      (WellKnownOpenIdCredentialIssuerResponseDisplayLogoBuilder()
            ..update(updates))
          ._build();

  _$WellKnownOpenIdCredentialIssuerResponseDisplayLogo._(
      {required this.uri, this.altText})
      : super._();
  @override
  WellKnownOpenIdCredentialIssuerResponseDisplayLogo rebuild(
          void Function(
                  WellKnownOpenIdCredentialIssuerResponseDisplayLogoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WellKnownOpenIdCredentialIssuerResponseDisplayLogoBuilder toBuilder() =>
      WellKnownOpenIdCredentialIssuerResponseDisplayLogoBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WellKnownOpenIdCredentialIssuerResponseDisplayLogo &&
        uri == other.uri &&
        altText == other.altText;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uri.hashCode);
    _$hash = $jc(_$hash, altText.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'WellKnownOpenIdCredentialIssuerResponseDisplayLogo')
          ..add('uri', uri)
          ..add('altText', altText))
        .toString();
  }
}

class WellKnownOpenIdCredentialIssuerResponseDisplayLogoBuilder
    implements
        Builder<WellKnownOpenIdCredentialIssuerResponseDisplayLogo,
            WellKnownOpenIdCredentialIssuerResponseDisplayLogoBuilder> {
  _$WellKnownOpenIdCredentialIssuerResponseDisplayLogo? _$v;

  String? _uri;
  String? get uri => _$this._uri;
  set uri(String? uri) => _$this._uri = uri;

  String? _altText;
  String? get altText => _$this._altText;
  set altText(String? altText) => _$this._altText = altText;

  WellKnownOpenIdCredentialIssuerResponseDisplayLogoBuilder() {
    WellKnownOpenIdCredentialIssuerResponseDisplayLogo._defaults(this);
  }

  WellKnownOpenIdCredentialIssuerResponseDisplayLogoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uri = $v.uri;
      _altText = $v.altText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WellKnownOpenIdCredentialIssuerResponseDisplayLogo other) {
    _$v = other as _$WellKnownOpenIdCredentialIssuerResponseDisplayLogo;
  }

  @override
  void update(
      void Function(WellKnownOpenIdCredentialIssuerResponseDisplayLogoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  WellKnownOpenIdCredentialIssuerResponseDisplayLogo build() => _build();

  _$WellKnownOpenIdCredentialIssuerResponseDisplayLogo _build() {
    final _$result = _$v ??
        _$WellKnownOpenIdCredentialIssuerResponseDisplayLogo._(
          uri: BuiltValueNullFieldError.checkNotNull(uri,
              r'WellKnownOpenIdCredentialIssuerResponseDisplayLogo', 'uri'),
          altText: altText,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
