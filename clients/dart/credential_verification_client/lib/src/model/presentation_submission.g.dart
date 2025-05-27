// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presentation_submission.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PresentationSubmission extends PresentationSubmission {
  @override
  final String id;
  @override
  final String definitionId;
  @override
  final BuiltList<Descriptor> descriptorMap;

  factory _$PresentationSubmission(
          [void Function(PresentationSubmissionBuilder)? updates]) =>
      (PresentationSubmissionBuilder()..update(updates))._build();

  _$PresentationSubmission._(
      {required this.id,
      required this.definitionId,
      required this.descriptorMap})
      : super._();
  @override
  PresentationSubmission rebuild(
          void Function(PresentationSubmissionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PresentationSubmissionBuilder toBuilder() =>
      PresentationSubmissionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PresentationSubmission &&
        id == other.id &&
        definitionId == other.definitionId &&
        descriptorMap == other.descriptorMap;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, definitionId.hashCode);
    _$hash = $jc(_$hash, descriptorMap.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PresentationSubmission')
          ..add('id', id)
          ..add('definitionId', definitionId)
          ..add('descriptorMap', descriptorMap))
        .toString();
  }
}

class PresentationSubmissionBuilder
    implements Builder<PresentationSubmission, PresentationSubmissionBuilder> {
  _$PresentationSubmission? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _definitionId;
  String? get definitionId => _$this._definitionId;
  set definitionId(String? definitionId) => _$this._definitionId = definitionId;

  ListBuilder<Descriptor>? _descriptorMap;
  ListBuilder<Descriptor> get descriptorMap =>
      _$this._descriptorMap ??= ListBuilder<Descriptor>();
  set descriptorMap(ListBuilder<Descriptor>? descriptorMap) =>
      _$this._descriptorMap = descriptorMap;

  PresentationSubmissionBuilder() {
    PresentationSubmission._defaults(this);
  }

  PresentationSubmissionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _definitionId = $v.definitionId;
      _descriptorMap = $v.descriptorMap.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PresentationSubmission other) {
    _$v = other as _$PresentationSubmission;
  }

  @override
  void update(void Function(PresentationSubmissionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PresentationSubmission build() => _build();

  _$PresentationSubmission _build() {
    _$PresentationSubmission _$result;
    try {
      _$result = _$v ??
          _$PresentationSubmission._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'PresentationSubmission', 'id'),
            definitionId: BuiltValueNullFieldError.checkNotNull(
                definitionId, r'PresentationSubmission', 'definitionId'),
            descriptorMap: descriptorMap.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'descriptorMap';
        descriptorMap.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PresentationSubmission', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
