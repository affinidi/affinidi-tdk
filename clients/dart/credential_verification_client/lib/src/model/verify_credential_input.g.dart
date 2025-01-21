// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_credential_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifyCredentialInput extends VerifyCredentialInput {
  @override
  final BuiltList<W3cCredential> verifiableCredentials;
  @override
  final BuiltMap<String, JsonObject?>? issuerDidDocument;

  factory _$VerifyCredentialInput(
          [void Function(VerifyCredentialInputBuilder)? updates]) =>
      (new VerifyCredentialInputBuilder()..update(updates))._build();

  _$VerifyCredentialInput._(
      {required this.verifiableCredentials, this.issuerDidDocument})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(verifiableCredentials,
        r'VerifyCredentialInput', 'verifiableCredentials');
  }

  @override
  VerifyCredentialInput rebuild(
          void Function(VerifyCredentialInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifyCredentialInputBuilder toBuilder() =>
      new VerifyCredentialInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifyCredentialInput &&
        verifiableCredentials == other.verifiableCredentials &&
        issuerDidDocument == other.issuerDidDocument;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiableCredentials.hashCode);
    _$hash = $jc(_$hash, issuerDidDocument.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VerifyCredentialInput')
          ..add('verifiableCredentials', verifiableCredentials)
          ..add('issuerDidDocument', issuerDidDocument))
        .toString();
  }
}

class VerifyCredentialInputBuilder
    implements Builder<VerifyCredentialInput, VerifyCredentialInputBuilder> {
  _$VerifyCredentialInput? _$v;

  ListBuilder<W3cCredential>? _verifiableCredentials;
  ListBuilder<W3cCredential> get verifiableCredentials =>
      _$this._verifiableCredentials ??= new ListBuilder<W3cCredential>();
  set verifiableCredentials(
          ListBuilder<W3cCredential>? verifiableCredentials) =>
      _$this._verifiableCredentials = verifiableCredentials;

  MapBuilder<String, JsonObject?>? _issuerDidDocument;
  MapBuilder<String, JsonObject?> get issuerDidDocument =>
      _$this._issuerDidDocument ??= new MapBuilder<String, JsonObject?>();
  set issuerDidDocument(MapBuilder<String, JsonObject?>? issuerDidDocument) =>
      _$this._issuerDidDocument = issuerDidDocument;

  VerifyCredentialInputBuilder() {
    VerifyCredentialInput._defaults(this);
  }

  VerifyCredentialInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiableCredentials = $v.verifiableCredentials.toBuilder();
      _issuerDidDocument = $v.issuerDidDocument?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifyCredentialInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifyCredentialInput;
  }

  @override
  void update(void Function(VerifyCredentialInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifyCredentialInput build() => _build();

  _$VerifyCredentialInput _build() {
    _$VerifyCredentialInput _$result;
    try {
      _$result = _$v ??
          new _$VerifyCredentialInput._(
            verifiableCredentials: verifiableCredentials.build(),
            issuerDidDocument: _issuerDidDocument?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verifiableCredentials';
        verifiableCredentials.build();
        _$failedField = 'issuerDidDocument';
        _issuerDidDocument?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VerifyCredentialInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
