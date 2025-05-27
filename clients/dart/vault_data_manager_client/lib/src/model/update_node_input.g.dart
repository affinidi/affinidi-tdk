// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_node_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateNodeInput extends UpdateNodeInput {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? metadata;

  factory _$UpdateNodeInput([void Function(UpdateNodeInputBuilder)? updates]) =>
      (UpdateNodeInputBuilder()..update(updates))._build();

  _$UpdateNodeInput._({this.name, this.description, this.metadata}) : super._();
  @override
  UpdateNodeInput rebuild(void Function(UpdateNodeInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateNodeInputBuilder toBuilder() => UpdateNodeInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateNodeInput &&
        name == other.name &&
        description == other.description &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateNodeInput')
          ..add('name', name)
          ..add('description', description)
          ..add('metadata', metadata))
        .toString();
  }
}

class UpdateNodeInputBuilder
    implements Builder<UpdateNodeInput, UpdateNodeInputBuilder> {
  _$UpdateNodeInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _metadata;
  String? get metadata => _$this._metadata;
  set metadata(String? metadata) => _$this._metadata = metadata;

  UpdateNodeInputBuilder() {
    UpdateNodeInput._defaults(this);
  }

  UpdateNodeInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _metadata = $v.metadata;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateNodeInput other) {
    _$v = other as _$UpdateNodeInput;
  }

  @override
  void update(void Function(UpdateNodeInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateNodeInput build() => _build();

  _$UpdateNodeInput _build() {
    final _$result = _$v ??
        _$UpdateNodeInput._(
          name: name,
          description: description,
          metadata: metadata,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
