// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supported_credential_metadata_display_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SupportedCredentialMetadataDisplayInner
    extends SupportedCredentialMetadataDisplayInner {
  @override
  final String name;
  @override
  final String? locale;
  @override
  final SupportedCredentialMetadataItemLogo? logo;
  @override
  final String? backgroundColor;
  @override
  final String? textColor;

  factory _$SupportedCredentialMetadataDisplayInner(
          [void Function(SupportedCredentialMetadataDisplayInnerBuilder)?
              updates]) =>
      (new SupportedCredentialMetadataDisplayInnerBuilder()..update(updates))
          ._build();

  _$SupportedCredentialMetadataDisplayInner._(
      {required this.name,
      this.locale,
      this.logo,
      this.backgroundColor,
      this.textColor})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'SupportedCredentialMetadataDisplayInner', 'name');
  }

  @override
  SupportedCredentialMetadataDisplayInner rebuild(
          void Function(SupportedCredentialMetadataDisplayInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SupportedCredentialMetadataDisplayInnerBuilder toBuilder() =>
      new SupportedCredentialMetadataDisplayInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SupportedCredentialMetadataDisplayInner &&
        name == other.name &&
        locale == other.locale &&
        logo == other.logo &&
        backgroundColor == other.backgroundColor &&
        textColor == other.textColor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, locale.hashCode);
    _$hash = $jc(_$hash, logo.hashCode);
    _$hash = $jc(_$hash, backgroundColor.hashCode);
    _$hash = $jc(_$hash, textColor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'SupportedCredentialMetadataDisplayInner')
          ..add('name', name)
          ..add('locale', locale)
          ..add('logo', logo)
          ..add('backgroundColor', backgroundColor)
          ..add('textColor', textColor))
        .toString();
  }
}

class SupportedCredentialMetadataDisplayInnerBuilder
    implements
        Builder<SupportedCredentialMetadataDisplayInner,
            SupportedCredentialMetadataDisplayInnerBuilder> {
  _$SupportedCredentialMetadataDisplayInner? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _locale;
  String? get locale => _$this._locale;
  set locale(String? locale) => _$this._locale = locale;

  SupportedCredentialMetadataItemLogoBuilder? _logo;
  SupportedCredentialMetadataItemLogoBuilder get logo =>
      _$this._logo ??= new SupportedCredentialMetadataItemLogoBuilder();
  set logo(SupportedCredentialMetadataItemLogoBuilder? logo) =>
      _$this._logo = logo;

  String? _backgroundColor;
  String? get backgroundColor => _$this._backgroundColor;
  set backgroundColor(String? backgroundColor) =>
      _$this._backgroundColor = backgroundColor;

  String? _textColor;
  String? get textColor => _$this._textColor;
  set textColor(String? textColor) => _$this._textColor = textColor;

  SupportedCredentialMetadataDisplayInnerBuilder() {
    SupportedCredentialMetadataDisplayInner._defaults(this);
  }

  SupportedCredentialMetadataDisplayInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _locale = $v.locale;
      _logo = $v.logo?.toBuilder();
      _backgroundColor = $v.backgroundColor;
      _textColor = $v.textColor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SupportedCredentialMetadataDisplayInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SupportedCredentialMetadataDisplayInner;
  }

  @override
  void update(
      void Function(SupportedCredentialMetadataDisplayInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SupportedCredentialMetadataDisplayInner build() => _build();

  _$SupportedCredentialMetadataDisplayInner _build() {
    _$SupportedCredentialMetadataDisplayInner _$result;
    try {
      _$result = _$v ??
          new _$SupportedCredentialMetadataDisplayInner._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'SupportedCredentialMetadataDisplayInner', 'name'),
            locale: locale,
            logo: _logo?.build(),
            backgroundColor: backgroundColor,
            textColor: textColor,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'logo';
        _logo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SupportedCredentialMetadataDisplayInner',
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
