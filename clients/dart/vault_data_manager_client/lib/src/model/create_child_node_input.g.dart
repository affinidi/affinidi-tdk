// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_child_node_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateChildNodeInput extends CreateChildNodeInput {
  @override
  final String name;
  @override
  final NodeType type;
  @override
  final String? description;
  @override
  final EdekInfo? edekInfo;
  @override
  final String? dek;
  @override
  final String? metadata;

  factory _$CreateChildNodeInput(
          [void Function(CreateChildNodeInputBuilder)? updates]) =>
      (CreateChildNodeInputBuilder()..update(updates))._build();

  _$CreateChildNodeInput._(
      {required this.name,
      required this.type,
      this.description,
      this.edekInfo,
      this.dek,
      this.metadata})
      : super._();
  @override
  CreateChildNodeInput rebuild(
          void Function(CreateChildNodeInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateChildNodeInputBuilder toBuilder() =>
      CreateChildNodeInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateChildNodeInput &&
        name == other.name &&
        type == other.type &&
        description == other.description &&
        edekInfo == other.edekInfo &&
        dek == other.dek &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, edekInfo.hashCode);
    _$hash = $jc(_$hash, dek.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateChildNodeInput')
          ..add('name', name)
          ..add('type', type)
          ..add('description', description)
          ..add('edekInfo', edekInfo)
          ..add('dek', dek)
          ..add('metadata', metadata))
        .toString();
  }
}

class CreateChildNodeInputBuilder
    implements Builder<CreateChildNodeInput, CreateChildNodeInputBuilder> {
  _$CreateChildNodeInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  NodeType? _type;
  NodeType? get type => _$this._type;
  set type(NodeType? type) => _$this._type = type;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  EdekInfoBuilder? _edekInfo;
  EdekInfoBuilder get edekInfo => _$this._edekInfo ??= EdekInfoBuilder();
  set edekInfo(EdekInfoBuilder? edekInfo) => _$this._edekInfo = edekInfo;

  String? _dek;
  String? get dek => _$this._dek;
  set dek(String? dek) => _$this._dek = dek;

  String? _metadata;
  String? get metadata => _$this._metadata;
  set metadata(String? metadata) => _$this._metadata = metadata;

  CreateChildNodeInputBuilder() {
    CreateChildNodeInput._defaults(this);
  }

  CreateChildNodeInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _type = $v.type;
      _description = $v.description;
      _edekInfo = $v.edekInfo?.toBuilder();
      _dek = $v.dek;
      _metadata = $v.metadata;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateChildNodeInput other) {
    _$v = other as _$CreateChildNodeInput;
  }

  @override
  void update(void Function(CreateChildNodeInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateChildNodeInput build() => _build();

  _$CreateChildNodeInput _build() {
    _$CreateChildNodeInput _$result;
    try {
      _$result = _$v ??
          _$CreateChildNodeInput._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CreateChildNodeInput', 'name'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'CreateChildNodeInput', 'type'),
            description: description,
            edekInfo: _edekInfo?.build(),
            dek: dek,
            metadata: metadata,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'edekInfo';
        _edekInfo?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreateChildNodeInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
