// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supported_credential_metadata_item_logo.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SupportedCredentialMetadataItemLogo
    extends SupportedCredentialMetadataItemLogo {
  @override
  final String url;
  @override
  final String? altText;

  factory _$SupportedCredentialMetadataItemLogo(
          [void Function(SupportedCredentialMetadataItemLogoBuilder)?
              updates]) =>
      (new SupportedCredentialMetadataItemLogoBuilder()..update(updates))
          ._build();

  _$SupportedCredentialMetadataItemLogo._({required this.url, this.altText})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        url, r'SupportedCredentialMetadataItemLogo', 'url');
  }

  @override
  SupportedCredentialMetadataItemLogo rebuild(
          void Function(SupportedCredentialMetadataItemLogoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SupportedCredentialMetadataItemLogoBuilder toBuilder() =>
      new SupportedCredentialMetadataItemLogoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SupportedCredentialMetadataItemLogo &&
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
    return (newBuiltValueToStringHelper(r'SupportedCredentialMetadataItemLogo')
          ..add('url', url)
          ..add('altText', altText))
        .toString();
  }
}

class SupportedCredentialMetadataItemLogoBuilder
    implements
        Builder<SupportedCredentialMetadataItemLogo,
            SupportedCredentialMetadataItemLogoBuilder> {
  _$SupportedCredentialMetadataItemLogo? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _altText;
  String? get altText => _$this._altText;
  set altText(String? altText) => _$this._altText = altText;

  SupportedCredentialMetadataItemLogoBuilder() {
    SupportedCredentialMetadataItemLogo._defaults(this);
  }

  SupportedCredentialMetadataItemLogoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _altText = $v.altText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SupportedCredentialMetadataItemLogo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SupportedCredentialMetadataItemLogo;
  }

  @override
  void update(
      void Function(SupportedCredentialMetadataItemLogoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SupportedCredentialMetadataItemLogo build() => _build();

  _$SupportedCredentialMetadataItemLogo _build() {
    final _$result = _$v ??
        new _$SupportedCredentialMetadataItemLogo._(
          url: BuiltValueNullFieldError.checkNotNull(
              url, r'SupportedCredentialMetadataItemLogo', 'url'),
          altText: altText,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
