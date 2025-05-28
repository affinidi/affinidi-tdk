// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presentation_definition.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PresentationDefinition extends PresentationDefinition {
  @override
  final String id;
  @override
  final String? name;
  @override
  final String? purpose;
  @override
  final Format? format;
  @override
  final BuiltList<SubmissionRequirement>? submissionRequirements;
  @override
  final BuiltList<InputDescriptor> inputDescriptors;
  @override
  final BuiltMap<String, JsonObject?>? frame;

  factory _$PresentationDefinition(
          [void Function(PresentationDefinitionBuilder)? updates]) =>
      (PresentationDefinitionBuilder()..update(updates))._build();

  _$PresentationDefinition._(
      {required this.id,
      this.name,
      this.purpose,
      this.format,
      this.submissionRequirements,
      required this.inputDescriptors,
      this.frame})
      : super._();
  @override
  PresentationDefinition rebuild(
          void Function(PresentationDefinitionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PresentationDefinitionBuilder toBuilder() =>
      PresentationDefinitionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PresentationDefinition &&
        id == other.id &&
        name == other.name &&
        purpose == other.purpose &&
        format == other.format &&
        submissionRequirements == other.submissionRequirements &&
        inputDescriptors == other.inputDescriptors &&
        frame == other.frame;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, purpose.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, submissionRequirements.hashCode);
    _$hash = $jc(_$hash, inputDescriptors.hashCode);
    _$hash = $jc(_$hash, frame.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PresentationDefinition')
          ..add('id', id)
          ..add('name', name)
          ..add('purpose', purpose)
          ..add('format', format)
          ..add('submissionRequirements', submissionRequirements)
          ..add('inputDescriptors', inputDescriptors)
          ..add('frame', frame))
        .toString();
  }
}

class PresentationDefinitionBuilder
    implements Builder<PresentationDefinition, PresentationDefinitionBuilder> {
  _$PresentationDefinition? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _purpose;
  String? get purpose => _$this._purpose;
  set purpose(String? purpose) => _$this._purpose = purpose;

  FormatBuilder? _format;
  FormatBuilder get format => _$this._format ??= FormatBuilder();
  set format(FormatBuilder? format) => _$this._format = format;

  ListBuilder<SubmissionRequirement>? _submissionRequirements;
  ListBuilder<SubmissionRequirement> get submissionRequirements =>
      _$this._submissionRequirements ??= ListBuilder<SubmissionRequirement>();
  set submissionRequirements(
          ListBuilder<SubmissionRequirement>? submissionRequirements) =>
      _$this._submissionRequirements = submissionRequirements;

  ListBuilder<InputDescriptor>? _inputDescriptors;
  ListBuilder<InputDescriptor> get inputDescriptors =>
      _$this._inputDescriptors ??= ListBuilder<InputDescriptor>();
  set inputDescriptors(ListBuilder<InputDescriptor>? inputDescriptors) =>
      _$this._inputDescriptors = inputDescriptors;

  MapBuilder<String, JsonObject?>? _frame;
  MapBuilder<String, JsonObject?> get frame =>
      _$this._frame ??= MapBuilder<String, JsonObject?>();
  set frame(MapBuilder<String, JsonObject?>? frame) => _$this._frame = frame;

  PresentationDefinitionBuilder() {
    PresentationDefinition._defaults(this);
  }

  PresentationDefinitionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _purpose = $v.purpose;
      _format = $v.format?.toBuilder();
      _submissionRequirements = $v.submissionRequirements?.toBuilder();
      _inputDescriptors = $v.inputDescriptors.toBuilder();
      _frame = $v.frame?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PresentationDefinition other) {
    _$v = other as _$PresentationDefinition;
  }

  @override
  void update(void Function(PresentationDefinitionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PresentationDefinition build() => _build();

  _$PresentationDefinition _build() {
    _$PresentationDefinition _$result;
    try {
      _$result = _$v ??
          _$PresentationDefinition._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'PresentationDefinition', 'id'),
            name: name,
            purpose: purpose,
            format: _format?.build(),
            submissionRequirements: _submissionRequirements?.build(),
            inputDescriptors: inputDescriptors.build(),
            frame: _frame?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'format';
        _format?.build();
        _$failedField = 'submissionRequirements';
        _submissionRequirements?.build();
        _$failedField = 'inputDescriptors';
        inputDescriptors.build();
        _$failedField = 'frame';
        _frame?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PresentationDefinition', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
