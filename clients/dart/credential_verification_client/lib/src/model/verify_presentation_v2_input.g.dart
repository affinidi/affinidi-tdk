// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_presentation_v2_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifyPresentationV2Input extends VerifyPresentationV2Input {
  @override
  final JsonObject? verifiablePresentation;
  @override
  final VerifyPresentationV2InputPexQuery? pexQuery;
  @override
  final String? challenge;

  factory _$VerifyPresentationV2Input(
          [void Function(VerifyPresentationV2InputBuilder)? updates]) =>
      (VerifyPresentationV2InputBuilder()..update(updates))._build();

  _$VerifyPresentationV2Input._(
      {this.verifiablePresentation, this.pexQuery, this.challenge})
      : super._();
  @override
  VerifyPresentationV2Input rebuild(
          void Function(VerifyPresentationV2InputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifyPresentationV2InputBuilder toBuilder() =>
      VerifyPresentationV2InputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifyPresentationV2Input &&
        verifiablePresentation == other.verifiablePresentation &&
        pexQuery == other.pexQuery &&
        challenge == other.challenge;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiablePresentation.hashCode);
    _$hash = $jc(_$hash, pexQuery.hashCode);
    _$hash = $jc(_$hash, challenge.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VerifyPresentationV2Input')
          ..add('verifiablePresentation', verifiablePresentation)
          ..add('pexQuery', pexQuery)
          ..add('challenge', challenge))
        .toString();
  }
}

class VerifyPresentationV2InputBuilder
    implements
        Builder<VerifyPresentationV2Input, VerifyPresentationV2InputBuilder> {
  _$VerifyPresentationV2Input? _$v;

  JsonObject? _verifiablePresentation;
  JsonObject? get verifiablePresentation => _$this._verifiablePresentation;
  set verifiablePresentation(JsonObject? verifiablePresentation) =>
      _$this._verifiablePresentation = verifiablePresentation;

  VerifyPresentationV2InputPexQueryBuilder? _pexQuery;
  VerifyPresentationV2InputPexQueryBuilder get pexQuery =>
      _$this._pexQuery ??= VerifyPresentationV2InputPexQueryBuilder();
  set pexQuery(VerifyPresentationV2InputPexQueryBuilder? pexQuery) =>
      _$this._pexQuery = pexQuery;

  String? _challenge;
  String? get challenge => _$this._challenge;
  set challenge(String? challenge) => _$this._challenge = challenge;

  VerifyPresentationV2InputBuilder() {
    VerifyPresentationV2Input._defaults(this);
  }

  VerifyPresentationV2InputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiablePresentation = $v.verifiablePresentation;
      _pexQuery = $v.pexQuery?.toBuilder();
      _challenge = $v.challenge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifyPresentationV2Input other) {
    _$v = other as _$VerifyPresentationV2Input;
  }

  @override
  void update(void Function(VerifyPresentationV2InputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifyPresentationV2Input build() => _build();

  _$VerifyPresentationV2Input _build() {
    _$VerifyPresentationV2Input _$result;
    try {
      _$result = _$v ??
          _$VerifyPresentationV2Input._(
            verifiablePresentation: verifiablePresentation,
            pexQuery: _pexQuery?.build(),
            challenge: challenge,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pexQuery';
        _pexQuery?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'VerifyPresentationV2Input', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
