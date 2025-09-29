// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'w3c_presentation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$W3cPresentation extends W3cPresentation {
  @override
  final W3cPresentationContext atContext;
  @override
  final String? id;
  @override
  final BuiltList<String> type;
  @override
  final JsonObject holder;
  @override
  final BuiltList<W3cCredential> verifiableCredential;
  @override
  final PresentationSubmission? presentationSubmission;
  @override
  final JsonObject proof;

  factory _$W3cPresentation([void Function(W3cPresentationBuilder)? updates]) =>
      (W3cPresentationBuilder()..update(updates))._build();

  _$W3cPresentation._(
      {required this.atContext,
      this.id,
      required this.type,
      required this.holder,
      required this.verifiableCredential,
      this.presentationSubmission,
      required this.proof})
      : super._();
  @override
  W3cPresentation rebuild(void Function(W3cPresentationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  W3cPresentationBuilder toBuilder() => W3cPresentationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is W3cPresentation &&
        atContext == other.atContext &&
        id == other.id &&
        type == other.type &&
        holder == other.holder &&
        verifiableCredential == other.verifiableCredential &&
        presentationSubmission == other.presentationSubmission &&
        proof == other.proof;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, atContext.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, holder.hashCode);
    _$hash = $jc(_$hash, verifiableCredential.hashCode);
    _$hash = $jc(_$hash, presentationSubmission.hashCode);
    _$hash = $jc(_$hash, proof.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'W3cPresentation')
          ..add('atContext', atContext)
          ..add('id', id)
          ..add('type', type)
          ..add('holder', holder)
          ..add('verifiableCredential', verifiableCredential)
          ..add('presentationSubmission', presentationSubmission)
          ..add('proof', proof))
        .toString();
  }
}

class W3cPresentationBuilder
    implements Builder<W3cPresentation, W3cPresentationBuilder> {
  _$W3cPresentation? _$v;

  W3cPresentationContextBuilder? _atContext;
  W3cPresentationContextBuilder get atContext =>
      _$this._atContext ??= W3cPresentationContextBuilder();
  set atContext(W3cPresentationContextBuilder? atContext) =>
      _$this._atContext = atContext;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ListBuilder<String>? _type;
  ListBuilder<String> get type => _$this._type ??= ListBuilder<String>();
  set type(ListBuilder<String>? type) => _$this._type = type;

  JsonObject? _holder;
  JsonObject? get holder => _$this._holder;
  set holder(JsonObject? holder) => _$this._holder = holder;

  ListBuilder<W3cCredential>? _verifiableCredential;
  ListBuilder<W3cCredential> get verifiableCredential =>
      _$this._verifiableCredential ??= ListBuilder<W3cCredential>();
  set verifiableCredential(ListBuilder<W3cCredential>? verifiableCredential) =>
      _$this._verifiableCredential = verifiableCredential;

  PresentationSubmissionBuilder? _presentationSubmission;
  PresentationSubmissionBuilder get presentationSubmission =>
      _$this._presentationSubmission ??= PresentationSubmissionBuilder();
  set presentationSubmission(
          PresentationSubmissionBuilder? presentationSubmission) =>
      _$this._presentationSubmission = presentationSubmission;

  JsonObject? _proof;
  JsonObject? get proof => _$this._proof;
  set proof(JsonObject? proof) => _$this._proof = proof;

  W3cPresentationBuilder() {
    W3cPresentation._defaults(this);
  }

  W3cPresentationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atContext = $v.atContext.toBuilder();
      _id = $v.id;
      _type = $v.type.toBuilder();
      _holder = $v.holder;
      _verifiableCredential = $v.verifiableCredential.toBuilder();
      _presentationSubmission = $v.presentationSubmission?.toBuilder();
      _proof = $v.proof;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(W3cPresentation other) {
    _$v = other as _$W3cPresentation;
  }

  @override
  void update(void Function(W3cPresentationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  W3cPresentation build() => _build();

  _$W3cPresentation _build() {
    _$W3cPresentation _$result;
    try {
      _$result = _$v ??
          _$W3cPresentation._(
            atContext: atContext.build(),
            id: id,
            type: type.build(),
            holder: BuiltValueNullFieldError.checkNotNull(
                holder, r'W3cPresentation', 'holder'),
            verifiableCredential: verifiableCredential.build(),
            presentationSubmission: _presentationSubmission?.build(),
            proof: BuiltValueNullFieldError.checkNotNull(
                proof, r'W3cPresentation', 'proof'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'atContext';
        atContext.build();

        _$failedField = 'type';
        type.build();

        _$failedField = 'verifiableCredential';
        verifiableCredential.build();
        _$failedField = 'presentationSubmission';
        _presentationSubmission?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'W3cPresentation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
