// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oidc_config_credentials_supported_draft00_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OIDCConfigCredentialsSupportedDraft00Inner
    extends OIDCConfigCredentialsSupportedDraft00Inner {
  @override
  final BuiltList<String>? cryptographicBindingMethodsSupported;
  @override
  final BuiltList<String>? cryptographicSuitesSupported;
  @override
  final String? format;
  @override
  final BuiltList<String>? types;

  factory _$OIDCConfigCredentialsSupportedDraft00Inner(
          [void Function(OIDCConfigCredentialsSupportedDraft00InnerBuilder)?
              updates]) =>
      (OIDCConfigCredentialsSupportedDraft00InnerBuilder()..update(updates))
          ._build();

  _$OIDCConfigCredentialsSupportedDraft00Inner._(
      {this.cryptographicBindingMethodsSupported,
      this.cryptographicSuitesSupported,
      this.format,
      this.types})
      : super._();
  @override
  OIDCConfigCredentialsSupportedDraft00Inner rebuild(
          void Function(OIDCConfigCredentialsSupportedDraft00InnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OIDCConfigCredentialsSupportedDraft00InnerBuilder toBuilder() =>
      OIDCConfigCredentialsSupportedDraft00InnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OIDCConfigCredentialsSupportedDraft00Inner &&
        cryptographicBindingMethodsSupported ==
            other.cryptographicBindingMethodsSupported &&
        cryptographicSuitesSupported == other.cryptographicSuitesSupported &&
        format == other.format &&
        types == other.types;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cryptographicBindingMethodsSupported.hashCode);
    _$hash = $jc(_$hash, cryptographicSuitesSupported.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, types.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'OIDCConfigCredentialsSupportedDraft00Inner')
          ..add('cryptographicBindingMethodsSupported',
              cryptographicBindingMethodsSupported)
          ..add('cryptographicSuitesSupported', cryptographicSuitesSupported)
          ..add('format', format)
          ..add('types', types))
        .toString();
  }
}

class OIDCConfigCredentialsSupportedDraft00InnerBuilder
    implements
        Builder<OIDCConfigCredentialsSupportedDraft00Inner,
            OIDCConfigCredentialsSupportedDraft00InnerBuilder> {
  _$OIDCConfigCredentialsSupportedDraft00Inner? _$v;

  ListBuilder<String>? _cryptographicBindingMethodsSupported;
  ListBuilder<String> get cryptographicBindingMethodsSupported =>
      _$this._cryptographicBindingMethodsSupported ??= ListBuilder<String>();
  set cryptographicBindingMethodsSupported(
          ListBuilder<String>? cryptographicBindingMethodsSupported) =>
      _$this._cryptographicBindingMethodsSupported =
          cryptographicBindingMethodsSupported;

  ListBuilder<String>? _cryptographicSuitesSupported;
  ListBuilder<String> get cryptographicSuitesSupported =>
      _$this._cryptographicSuitesSupported ??= ListBuilder<String>();
  set cryptographicSuitesSupported(
          ListBuilder<String>? cryptographicSuitesSupported) =>
      _$this._cryptographicSuitesSupported = cryptographicSuitesSupported;

  String? _format;
  String? get format => _$this._format;
  set format(String? format) => _$this._format = format;

  ListBuilder<String>? _types;
  ListBuilder<String> get types => _$this._types ??= ListBuilder<String>();
  set types(ListBuilder<String>? types) => _$this._types = types;

  OIDCConfigCredentialsSupportedDraft00InnerBuilder() {
    OIDCConfigCredentialsSupportedDraft00Inner._defaults(this);
  }

  OIDCConfigCredentialsSupportedDraft00InnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cryptographicBindingMethodsSupported =
          $v.cryptographicBindingMethodsSupported?.toBuilder();
      _cryptographicSuitesSupported =
          $v.cryptographicSuitesSupported?.toBuilder();
      _format = $v.format;
      _types = $v.types?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OIDCConfigCredentialsSupportedDraft00Inner other) {
    _$v = other as _$OIDCConfigCredentialsSupportedDraft00Inner;
  }

  @override
  void update(
      void Function(OIDCConfigCredentialsSupportedDraft00InnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  OIDCConfigCredentialsSupportedDraft00Inner build() => _build();

  _$OIDCConfigCredentialsSupportedDraft00Inner _build() {
    _$OIDCConfigCredentialsSupportedDraft00Inner _$result;
    try {
      _$result = _$v ??
          _$OIDCConfigCredentialsSupportedDraft00Inner._(
            cryptographicBindingMethodsSupported:
                _cryptographicBindingMethodsSupported?.build(),
            cryptographicSuitesSupported:
                _cryptographicSuitesSupported?.build(),
            format: format,
            types: _types?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cryptographicBindingMethodsSupported';
        _cryptographicBindingMethodsSupported?.build();
        _$failedField = 'cryptographicSuitesSupported';
        _cryptographicSuitesSupported?.build();

        _$failedField = 'types';
        _types?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OIDCConfigCredentialsSupportedDraft00Inner',
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
