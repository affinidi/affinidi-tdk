// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_presentation_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifyPresentationInput extends VerifyPresentationInput {
  @override
  final W3cPresentation? verifiablePresentation;
  @override
  final W3cPresentation? signedPresentation;
  @override
  final JsonObject? presentationDefinition;
  @override
  final JsonObject? presentationSubmission;
  @override
  final String? challenge;

  factory _$VerifyPresentationInput(
          [void Function(VerifyPresentationInputBuilder)? updates]) =>
      (VerifyPresentationInputBuilder()..update(updates))._build();

  _$VerifyPresentationInput._(
      {this.verifiablePresentation,
      this.signedPresentation,
      this.presentationDefinition,
      this.presentationSubmission,
      this.challenge})
      : super._();
  @override
  VerifyPresentationInput rebuild(
          void Function(VerifyPresentationInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifyPresentationInputBuilder toBuilder() =>
      VerifyPresentationInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifyPresentationInput &&
        verifiablePresentation == other.verifiablePresentation &&
        signedPresentation == other.signedPresentation &&
        presentationDefinition == other.presentationDefinition &&
        presentationSubmission == other.presentationSubmission &&
        challenge == other.challenge;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiablePresentation.hashCode);
    _$hash = $jc(_$hash, signedPresentation.hashCode);
    _$hash = $jc(_$hash, presentationDefinition.hashCode);
    _$hash = $jc(_$hash, presentationSubmission.hashCode);
    _$hash = $jc(_$hash, challenge.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VerifyPresentationInput')
          ..add('verifiablePresentation', verifiablePresentation)
          ..add('signedPresentation', signedPresentation)
          ..add('presentationDefinition', presentationDefinition)
          ..add('presentationSubmission', presentationSubmission)
          ..add('challenge', challenge))
        .toString();
  }
}

class VerifyPresentationInputBuilder
    implements
        Builder<VerifyPresentationInput, VerifyPresentationInputBuilder> {
  _$VerifyPresentationInput? _$v;

  W3cPresentationBuilder? _verifiablePresentation;
  W3cPresentationBuilder get verifiablePresentation =>
      _$this._verifiablePresentation ??= W3cPresentationBuilder();
  set verifiablePresentation(W3cPresentationBuilder? verifiablePresentation) =>
      _$this._verifiablePresentation = verifiablePresentation;

  W3cPresentationBuilder? _signedPresentation;
  W3cPresentationBuilder get signedPresentation =>
      _$this._signedPresentation ??= W3cPresentationBuilder();
  set signedPresentation(W3cPresentationBuilder? signedPresentation) =>
      _$this._signedPresentation = signedPresentation;

  JsonObject? _presentationDefinition;
  JsonObject? get presentationDefinition => _$this._presentationDefinition;
  set presentationDefinition(JsonObject? presentationDefinition) =>
      _$this._presentationDefinition = presentationDefinition;

  JsonObject? _presentationSubmission;
  JsonObject? get presentationSubmission => _$this._presentationSubmission;
  set presentationSubmission(JsonObject? presentationSubmission) =>
      _$this._presentationSubmission = presentationSubmission;

  String? _challenge;
  String? get challenge => _$this._challenge;
  set challenge(String? challenge) => _$this._challenge = challenge;

  VerifyPresentationInputBuilder() {
    VerifyPresentationInput._defaults(this);
  }

  VerifyPresentationInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiablePresentation = $v.verifiablePresentation?.toBuilder();
      _signedPresentation = $v.signedPresentation?.toBuilder();
      _presentationDefinition = $v.presentationDefinition;
      _presentationSubmission = $v.presentationSubmission;
      _challenge = $v.challenge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifyPresentationInput other) {
    _$v = other as _$VerifyPresentationInput;
  }

  @override
  void update(void Function(VerifyPresentationInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifyPresentationInput build() => _build();

  _$VerifyPresentationInput _build() {
    _$VerifyPresentationInput _$result;
    try {
      _$result = _$v ??
          _$VerifyPresentationInput._(
            verifiablePresentation: _verifiablePresentation?.build(),
            signedPresentation: _signedPresentation?.build(),
            presentationDefinition: presentationDefinition,
            presentationSubmission: presentationSubmission,
            challenge: challenge,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verifiablePresentation';
        _verifiablePresentation?.build();
        _$failedField = 'signedPresentation';
        _signedPresentation?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'VerifyPresentationInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
