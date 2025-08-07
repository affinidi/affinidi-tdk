// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_credential_v2_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifyCredentialV2Input extends VerifyCredentialV2Input {
  @override
  final BuiltList<String> verifiableCredentials;
  @override
  final BuiltMap<String, JsonObject?>? issuerDidDocument;

  factory _$VerifyCredentialV2Input(
          [void Function(VerifyCredentialV2InputBuilder)? updates]) =>
      (VerifyCredentialV2InputBuilder()..update(updates))._build();

  _$VerifyCredentialV2Input._(
      {required this.verifiableCredentials, this.issuerDidDocument})
      : super._();
  @override
  VerifyCredentialV2Input rebuild(
          void Function(VerifyCredentialV2InputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifyCredentialV2InputBuilder toBuilder() =>
      VerifyCredentialV2InputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifyCredentialV2Input &&
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
    return (newBuiltValueToStringHelper(r'VerifyCredentialV2Input')
          ..add('verifiableCredentials', verifiableCredentials)
          ..add('issuerDidDocument', issuerDidDocument))
        .toString();
  }
}

class VerifyCredentialV2InputBuilder
    implements
        Builder<VerifyCredentialV2Input, VerifyCredentialV2InputBuilder> {
  _$VerifyCredentialV2Input? _$v;

  ListBuilder<String>? _verifiableCredentials;
  ListBuilder<String> get verifiableCredentials =>
      _$this._verifiableCredentials ??= ListBuilder<String>();
  set verifiableCredentials(ListBuilder<String>? verifiableCredentials) =>
      _$this._verifiableCredentials = verifiableCredentials;

  MapBuilder<String, JsonObject?>? _issuerDidDocument;
  MapBuilder<String, JsonObject?> get issuerDidDocument =>
      _$this._issuerDidDocument ??= MapBuilder<String, JsonObject?>();
  set issuerDidDocument(MapBuilder<String, JsonObject?>? issuerDidDocument) =>
      _$this._issuerDidDocument = issuerDidDocument;

  VerifyCredentialV2InputBuilder() {
    VerifyCredentialV2Input._defaults(this);
  }

  VerifyCredentialV2InputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiableCredentials = $v.verifiableCredentials.toBuilder();
      _issuerDidDocument = $v.issuerDidDocument?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifyCredentialV2Input other) {
    _$v = other as _$VerifyCredentialV2Input;
  }

  @override
  void update(void Function(VerifyCredentialV2InputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifyCredentialV2Input build() => _build();

  _$VerifyCredentialV2Input _build() {
    _$VerifyCredentialV2Input _$result;
    try {
      _$result = _$v ??
          _$VerifyCredentialV2Input._(
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
        throw BuiltValueNestedFieldError(
            r'VerifyCredentialV2Input', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
