// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_descriptor.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InputDescriptor extends InputDescriptor {
  @override
  final String id;
  @override
  final Constraints constraints;
  @override
  final String? name;
  @override
  final String? purpose;
  @override
  final Format? format;
  @override
  final BuiltList<String>? group;

  factory _$InputDescriptor([void Function(InputDescriptorBuilder)? updates]) =>
      (InputDescriptorBuilder()..update(updates))._build();

  _$InputDescriptor._(
      {required this.id,
      required this.constraints,
      this.name,
      this.purpose,
      this.format,
      this.group})
      : super._();
  @override
  InputDescriptor rebuild(void Function(InputDescriptorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InputDescriptorBuilder toBuilder() => InputDescriptorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InputDescriptor &&
        id == other.id &&
        constraints == other.constraints &&
        name == other.name &&
        purpose == other.purpose &&
        format == other.format &&
        group == other.group;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, constraints.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, purpose.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, group.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InputDescriptor')
          ..add('id', id)
          ..add('constraints', constraints)
          ..add('name', name)
          ..add('purpose', purpose)
          ..add('format', format)
          ..add('group', group))
        .toString();
  }
}

class InputDescriptorBuilder
    implements Builder<InputDescriptor, InputDescriptorBuilder> {
  _$InputDescriptor? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ConstraintsBuilder? _constraints;
  ConstraintsBuilder get constraints =>
      _$this._constraints ??= ConstraintsBuilder();
  set constraints(ConstraintsBuilder? constraints) =>
      _$this._constraints = constraints;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _purpose;
  String? get purpose => _$this._purpose;
  set purpose(String? purpose) => _$this._purpose = purpose;

  FormatBuilder? _format;
  FormatBuilder get format => _$this._format ??= FormatBuilder();
  set format(FormatBuilder? format) => _$this._format = format;

  ListBuilder<String>? _group;
  ListBuilder<String> get group => _$this._group ??= ListBuilder<String>();
  set group(ListBuilder<String>? group) => _$this._group = group;

  InputDescriptorBuilder() {
    InputDescriptor._defaults(this);
  }

  InputDescriptorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _constraints = $v.constraints.toBuilder();
      _name = $v.name;
      _purpose = $v.purpose;
      _format = $v.format?.toBuilder();
      _group = $v.group?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InputDescriptor other) {
    _$v = other as _$InputDescriptor;
  }

  @override
  void update(void Function(InputDescriptorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InputDescriptor build() => _build();

  _$InputDescriptor _build() {
    _$InputDescriptor _$result;
    try {
      _$result = _$v ??
          _$InputDescriptor._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'InputDescriptor', 'id'),
            constraints: constraints.build(),
            name: name,
            purpose: purpose,
            format: _format?.build(),
            group: _group?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'constraints';
        constraints.build();

        _$failedField = 'format';
        _format?.build();
        _$failedField = 'group';
        _group?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'InputDescriptor', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
