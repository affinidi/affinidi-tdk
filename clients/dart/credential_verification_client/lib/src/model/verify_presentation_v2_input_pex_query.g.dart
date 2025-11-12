// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_presentation_v2_input_pex_query.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifyPresentationV2InputPexQuery
    extends VerifyPresentationV2InputPexQuery {
  @override
  final JsonObject? presentationDefinition;
  @override
  final JsonObject? presentationSubmission;

  factory _$VerifyPresentationV2InputPexQuery(
          [void Function(VerifyPresentationV2InputPexQueryBuilder)? updates]) =>
      (VerifyPresentationV2InputPexQueryBuilder()..update(updates))._build();

  _$VerifyPresentationV2InputPexQuery._(
      {this.presentationDefinition, this.presentationSubmission})
      : super._();
  @override
  VerifyPresentationV2InputPexQuery rebuild(
          void Function(VerifyPresentationV2InputPexQueryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifyPresentationV2InputPexQueryBuilder toBuilder() =>
      VerifyPresentationV2InputPexQueryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifyPresentationV2InputPexQuery &&
        presentationDefinition == other.presentationDefinition &&
        presentationSubmission == other.presentationSubmission;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, presentationDefinition.hashCode);
    _$hash = $jc(_$hash, presentationSubmission.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VerifyPresentationV2InputPexQuery')
          ..add('presentationDefinition', presentationDefinition)
          ..add('presentationSubmission', presentationSubmission))
        .toString();
  }
}

class VerifyPresentationV2InputPexQueryBuilder
    implements
        Builder<VerifyPresentationV2InputPexQuery,
            VerifyPresentationV2InputPexQueryBuilder> {
  _$VerifyPresentationV2InputPexQuery? _$v;

  JsonObject? _presentationDefinition;
  JsonObject? get presentationDefinition => _$this._presentationDefinition;
  set presentationDefinition(JsonObject? presentationDefinition) =>
      _$this._presentationDefinition = presentationDefinition;

  JsonObject? _presentationSubmission;
  JsonObject? get presentationSubmission => _$this._presentationSubmission;
  set presentationSubmission(JsonObject? presentationSubmission) =>
      _$this._presentationSubmission = presentationSubmission;

  VerifyPresentationV2InputPexQueryBuilder() {
    VerifyPresentationV2InputPexQuery._defaults(this);
  }

  VerifyPresentationV2InputPexQueryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _presentationDefinition = $v.presentationDefinition;
      _presentationSubmission = $v.presentationSubmission;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifyPresentationV2InputPexQuery other) {
    _$v = other as _$VerifyPresentationV2InputPexQuery;
  }

  @override
  void update(
      void Function(VerifyPresentationV2InputPexQueryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifyPresentationV2InputPexQuery build() => _build();

  _$VerifyPresentationV2InputPexQuery _build() {
    final _$result = _$v ??
        _$VerifyPresentationV2InputPexQuery._(
          presentationDefinition: presentationDefinition,
          presentationSubmission: presentationSubmission,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
