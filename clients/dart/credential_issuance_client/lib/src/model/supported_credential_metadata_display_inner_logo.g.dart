// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supported_credential_metadata_display_inner_logo.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SupportedCredentialMetadataDisplayInnerLogo
    extends SupportedCredentialMetadataDisplayInnerLogo {
  @override
  final String url;
  @override
  final String? altText;

  factory _$SupportedCredentialMetadataDisplayInnerLogo(
          [void Function(SupportedCredentialMetadataDisplayInnerLogoBuilder)?
              updates]) =>
      (SupportedCredentialMetadataDisplayInnerLogoBuilder()..update(updates))
          ._build();

  _$SupportedCredentialMetadataDisplayInnerLogo._(
      {required this.url, this.altText})
      : super._();
  @override
  SupportedCredentialMetadataDisplayInnerLogo rebuild(
          void Function(SupportedCredentialMetadataDisplayInnerLogoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SupportedCredentialMetadataDisplayInnerLogoBuilder toBuilder() =>
      SupportedCredentialMetadataDisplayInnerLogoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SupportedCredentialMetadataDisplayInnerLogo &&
        url == other.url &&
        altText == other.altText;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, altText.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'SupportedCredentialMetadataDisplayInnerLogo')
          ..add('url', url)
          ..add('altText', altText))
        .toString();
  }
}

class SupportedCredentialMetadataDisplayInnerLogoBuilder
    implements
        Builder<SupportedCredentialMetadataDisplayInnerLogo,
            SupportedCredentialMetadataDisplayInnerLogoBuilder> {
  _$SupportedCredentialMetadataDisplayInnerLogo? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _altText;
  String? get altText => _$this._altText;
  set altText(String? altText) => _$this._altText = altText;

  SupportedCredentialMetadataDisplayInnerLogoBuilder() {
    SupportedCredentialMetadataDisplayInnerLogo._defaults(this);
  }

  SupportedCredentialMetadataDisplayInnerLogoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _altText = $v.altText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SupportedCredentialMetadataDisplayInnerLogo other) {
    _$v = other as _$SupportedCredentialMetadataDisplayInnerLogo;
  }

  @override
  void update(
      void Function(SupportedCredentialMetadataDisplayInnerLogoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  SupportedCredentialMetadataDisplayInnerLogo build() => _build();

  _$SupportedCredentialMetadataDisplayInnerLogo _build() {
    final _$result = _$v ??
        _$SupportedCredentialMetadataDisplayInnerLogo._(
          url: BuiltValueNullFieldError.checkNotNull(
              url, r'SupportedCredentialMetadataDisplayInnerLogo', 'url'),
          altText: altText,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
