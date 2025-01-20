// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_node_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateNodeInput extends CreateNodeInput {
  @override
  final String name;
  @override
  final NodeType type;
  @override
  final String? description;
  @override
  final String? parentNodeId;
  @override
  final EdekInfo? edekInfo;
  @override
  final String? dek;
  @override
  final String? metadata;

  factory _$CreateNodeInput([void Function(CreateNodeInputBuilder)? updates]) =>
      (new CreateNodeInputBuilder()..update(updates))._build();

  _$CreateNodeInput._(
      {required this.name,
      required this.type,
      this.description,
      this.parentNodeId,
      this.edekInfo,
      this.dek,
      this.metadata})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'CreateNodeInput', 'name');
    BuiltValueNullFieldError.checkNotNull(type, r'CreateNodeInput', 'type');
  }

  @override
  CreateNodeInput rebuild(void Function(CreateNodeInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateNodeInputBuilder toBuilder() =>
      new CreateNodeInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateNodeInput &&
        name == other.name &&
        type == other.type &&
        description == other.description &&
        parentNodeId == other.parentNodeId &&
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
    _$hash = $jc(_$hash, parentNodeId.hashCode);
    _$hash = $jc(_$hash, edekInfo.hashCode);
    _$hash = $jc(_$hash, dek.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateNodeInput')
          ..add('name', name)
          ..add('type', type)
          ..add('description', description)
          ..add('parentNodeId', parentNodeId)
          ..add('edekInfo', edekInfo)
          ..add('dek', dek)
          ..add('metadata', metadata))
        .toString();
  }
}

class CreateNodeInputBuilder
    implements Builder<CreateNodeInput, CreateNodeInputBuilder> {
  _$CreateNodeInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  NodeType? _type;
  NodeType? get type => _$this._type;
  set type(NodeType? type) => _$this._type = type;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _parentNodeId;
  String? get parentNodeId => _$this._parentNodeId;
  set parentNodeId(String? parentNodeId) => _$this._parentNodeId = parentNodeId;

  EdekInfoBuilder? _edekInfo;
  EdekInfoBuilder get edekInfo => _$this._edekInfo ??= new EdekInfoBuilder();
  set edekInfo(EdekInfoBuilder? edekInfo) => _$this._edekInfo = edekInfo;

  String? _dek;
  String? get dek => _$this._dek;
  set dek(String? dek) => _$this._dek = dek;

  String? _metadata;
  String? get metadata => _$this._metadata;
  set metadata(String? metadata) => _$this._metadata = metadata;

  CreateNodeInputBuilder() {
    CreateNodeInput._defaults(this);
  }

  CreateNodeInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _type = $v.type;
      _description = $v.description;
      _parentNodeId = $v.parentNodeId;
      _edekInfo = $v.edekInfo?.toBuilder();
      _dek = $v.dek;
      _metadata = $v.metadata;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateNodeInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateNodeInput;
  }

  @override
  void update(void Function(CreateNodeInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateNodeInput build() => _build();

  _$CreateNodeInput _build() {
    _$CreateNodeInput _$result;
    try {
      _$result = _$v ??
          new _$CreateNodeInput._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CreateNodeInput', 'name'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'CreateNodeInput', 'type'),
            description: description,
            parentNodeId: parentNodeId,
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
        throw new BuiltValueNestedFieldError(
            r'CreateNodeInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
