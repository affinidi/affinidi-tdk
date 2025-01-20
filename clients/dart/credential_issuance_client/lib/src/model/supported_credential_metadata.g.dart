// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supported_credential_metadata.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SupportedCredentialMetadata extends SupportedCredentialMetadata {
  @override
  final BuiltList<SupportedCredentialMetadataDisplayInner>? display;

  factory _$SupportedCredentialMetadata(
          [void Function(SupportedCredentialMetadataBuilder)? updates]) =>
      (new SupportedCredentialMetadataBuilder()..update(updates))._build();

  _$SupportedCredentialMetadata._({this.display}) : super._();

  @override
  SupportedCredentialMetadata rebuild(
          void Function(SupportedCredentialMetadataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SupportedCredentialMetadataBuilder toBuilder() =>
      new SupportedCredentialMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SupportedCredentialMetadata && display == other.display;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, display.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SupportedCredentialMetadata')
          ..add('display', display))
        .toString();
  }
}

class SupportedCredentialMetadataBuilder
    implements
        Builder<SupportedCredentialMetadata,
            SupportedCredentialMetadataBuilder> {
  _$SupportedCredentialMetadata? _$v;

  ListBuilder<SupportedCredentialMetadataDisplayInner>? _display;
  ListBuilder<SupportedCredentialMetadataDisplayInner> get display =>
      _$this._display ??=
          new ListBuilder<SupportedCredentialMetadataDisplayInner>();
  set display(ListBuilder<SupportedCredentialMetadataDisplayInner>? display) =>
      _$this._display = display;

  SupportedCredentialMetadataBuilder() {
    SupportedCredentialMetadata._defaults(this);
  }

  SupportedCredentialMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _display = $v.display?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SupportedCredentialMetadata other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SupportedCredentialMetadata;
  }

  @override
  void update(void Function(SupportedCredentialMetadataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SupportedCredentialMetadata build() => _build();

  _$SupportedCredentialMetadata _build() {
    _$SupportedCredentialMetadata _$result;
    try {
      _$result = _$v ??
          new _$SupportedCredentialMetadata._(
            display: _display?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'display';
        _display?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SupportedCredentialMetadata', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
