// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class NodeDtoBuilder {
  void replace(NodeDto other);
  void update(void Function(NodeDtoBuilder) updates);
  String? get nodeId;
  set nodeId(String? nodeId);

  NodeStatus? get status;
  set status(NodeStatus? status);

  int? get fileCount;
  set fileCount(int? fileCount);

  int? get profileCount;
  set profileCount(int? profileCount);

  int? get folderCount;
  set folderCount(int? folderCount);

  int? get vcCount;
  set vcCount(int? vcCount);

  String? get name;
  set name(String? name);

  String? get consumerId;
  set consumerId(String? consumerId);

  String? get parentNodeId;
  set parentNodeId(String? parentNodeId);

  String? get profileId;
  set profileId(String? profileId);

  String? get createdAt;
  set createdAt(String? createdAt);

  String? get modifiedAt;
  set modifiedAt(String? modifiedAt);

  String? get createdBy;
  set createdBy(String? createdBy);

  String? get modifiedBy;
  set modifiedBy(String? modifiedBy);

  String? get description;
  set description(String? description);

  NodeType? get type;
  set type(NodeType? type);

  String? get link;
  set link(String? link);

  String? get schema;
  set schema(String? schema);

  int? get consumedFileStorage;
  set consumedFileStorage(int? consumedFileStorage);

  EdekInfoBuilder get edekInfo;
  set edekInfo(EdekInfoBuilder? edekInfo);

  String? get metadata;
  set metadata(String? metadata);
}

class _$$NodeDto extends $NodeDto {
  @override
  final String nodeId;
  @override
  final NodeStatus status;
  @override
  final int? fileCount;
  @override
  final int? profileCount;
  @override
  final int? folderCount;
  @override
  final int? vcCount;
  @override
  final String name;
  @override
  final String consumerId;
  @override
  final String parentNodeId;
  @override
  final String profileId;
  @override
  final String createdAt;
  @override
  final String modifiedAt;
  @override
  final String createdBy;
  @override
  final String modifiedBy;
  @override
  final String? description;
  @override
  final NodeType type;
  @override
  final String? link;
  @override
  final String? schema;
  @override
  final int? consumedFileStorage;
  @override
  final EdekInfo? edekInfo;
  @override
  final String? metadata;

  factory _$$NodeDto([void Function($NodeDtoBuilder)? updates]) =>
      ($NodeDtoBuilder()..update(updates))._build();

  _$$NodeDto._(
      {required this.nodeId,
      required this.status,
      this.fileCount,
      this.profileCount,
      this.folderCount,
      this.vcCount,
      required this.name,
      required this.consumerId,
      required this.parentNodeId,
      required this.profileId,
      required this.createdAt,
      required this.modifiedAt,
      required this.createdBy,
      required this.modifiedBy,
      this.description,
      required this.type,
      this.link,
      this.schema,
      this.consumedFileStorage,
      this.edekInfo,
      this.metadata})
      : super._();
  @override
  $NodeDto rebuild(void Function($NodeDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $NodeDtoBuilder toBuilder() => $NodeDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $NodeDto &&
        nodeId == other.nodeId &&
        status == other.status &&
        fileCount == other.fileCount &&
        profileCount == other.profileCount &&
        folderCount == other.folderCount &&
        vcCount == other.vcCount &&
        name == other.name &&
        consumerId == other.consumerId &&
        parentNodeId == other.parentNodeId &&
        profileId == other.profileId &&
        createdAt == other.createdAt &&
        modifiedAt == other.modifiedAt &&
        createdBy == other.createdBy &&
        modifiedBy == other.modifiedBy &&
        description == other.description &&
        type == other.type &&
        link == other.link &&
        schema == other.schema &&
        consumedFileStorage == other.consumedFileStorage &&
        edekInfo == other.edekInfo &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nodeId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, fileCount.hashCode);
    _$hash = $jc(_$hash, profileCount.hashCode);
    _$hash = $jc(_$hash, folderCount.hashCode);
    _$hash = $jc(_$hash, vcCount.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, consumerId.hashCode);
    _$hash = $jc(_$hash, parentNodeId.hashCode);
    _$hash = $jc(_$hash, profileId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, modifiedAt.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, modifiedBy.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, link.hashCode);
    _$hash = $jc(_$hash, schema.hashCode);
    _$hash = $jc(_$hash, consumedFileStorage.hashCode);
    _$hash = $jc(_$hash, edekInfo.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$NodeDto')
          ..add('nodeId', nodeId)
          ..add('status', status)
          ..add('fileCount', fileCount)
          ..add('profileCount', profileCount)
          ..add('folderCount', folderCount)
          ..add('vcCount', vcCount)
          ..add('name', name)
          ..add('consumerId', consumerId)
          ..add('parentNodeId', parentNodeId)
          ..add('profileId', profileId)
          ..add('createdAt', createdAt)
          ..add('modifiedAt', modifiedAt)
          ..add('createdBy', createdBy)
          ..add('modifiedBy', modifiedBy)
          ..add('description', description)
          ..add('type', type)
          ..add('link', link)
          ..add('schema', schema)
          ..add('consumedFileStorage', consumedFileStorage)
          ..add('edekInfo', edekInfo)
          ..add('metadata', metadata))
        .toString();
  }
}

class $NodeDtoBuilder
    implements Builder<$NodeDto, $NodeDtoBuilder>, NodeDtoBuilder {
  _$$NodeDto? _$v;

  String? _nodeId;
  String? get nodeId => _$this._nodeId;
  set nodeId(covariant String? nodeId) => _$this._nodeId = nodeId;

  NodeStatus? _status;
  NodeStatus? get status => _$this._status;
  set status(covariant NodeStatus? status) => _$this._status = status;

  int? _fileCount;
  int? get fileCount => _$this._fileCount;
  set fileCount(covariant int? fileCount) => _$this._fileCount = fileCount;

  int? _profileCount;
  int? get profileCount => _$this._profileCount;
  set profileCount(covariant int? profileCount) =>
      _$this._profileCount = profileCount;

  int? _folderCount;
  int? get folderCount => _$this._folderCount;
  set folderCount(covariant int? folderCount) =>
      _$this._folderCount = folderCount;

  int? _vcCount;
  int? get vcCount => _$this._vcCount;
  set vcCount(covariant int? vcCount) => _$this._vcCount = vcCount;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  String? _consumerId;
  String? get consumerId => _$this._consumerId;
  set consumerId(covariant String? consumerId) =>
      _$this._consumerId = consumerId;

  String? _parentNodeId;
  String? get parentNodeId => _$this._parentNodeId;
  set parentNodeId(covariant String? parentNodeId) =>
      _$this._parentNodeId = parentNodeId;

  String? _profileId;
  String? get profileId => _$this._profileId;
  set profileId(covariant String? profileId) => _$this._profileId = profileId;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(covariant String? createdAt) => _$this._createdAt = createdAt;

  String? _modifiedAt;
  String? get modifiedAt => _$this._modifiedAt;
  set modifiedAt(covariant String? modifiedAt) =>
      _$this._modifiedAt = modifiedAt;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(covariant String? createdBy) => _$this._createdBy = createdBy;

  String? _modifiedBy;
  String? get modifiedBy => _$this._modifiedBy;
  set modifiedBy(covariant String? modifiedBy) =>
      _$this._modifiedBy = modifiedBy;

  String? _description;
  String? get description => _$this._description;
  set description(covariant String? description) =>
      _$this._description = description;

  NodeType? _type;
  NodeType? get type => _$this._type;
  set type(covariant NodeType? type) => _$this._type = type;

  String? _link;
  String? get link => _$this._link;
  set link(covariant String? link) => _$this._link = link;

  String? _schema;
  String? get schema => _$this._schema;
  set schema(covariant String? schema) => _$this._schema = schema;

  int? _consumedFileStorage;
  int? get consumedFileStorage => _$this._consumedFileStorage;
  set consumedFileStorage(covariant int? consumedFileStorage) =>
      _$this._consumedFileStorage = consumedFileStorage;

  EdekInfoBuilder? _edekInfo;
  EdekInfoBuilder get edekInfo => _$this._edekInfo ??= EdekInfoBuilder();
  set edekInfo(covariant EdekInfoBuilder? edekInfo) =>
      _$this._edekInfo = edekInfo;

  String? _metadata;
  String? get metadata => _$this._metadata;
  set metadata(covariant String? metadata) => _$this._metadata = metadata;

  $NodeDtoBuilder() {
    $NodeDto._defaults(this);
  }

  $NodeDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nodeId = $v.nodeId;
      _status = $v.status;
      _fileCount = $v.fileCount;
      _profileCount = $v.profileCount;
      _folderCount = $v.folderCount;
      _vcCount = $v.vcCount;
      _name = $v.name;
      _consumerId = $v.consumerId;
      _parentNodeId = $v.parentNodeId;
      _profileId = $v.profileId;
      _createdAt = $v.createdAt;
      _modifiedAt = $v.modifiedAt;
      _createdBy = $v.createdBy;
      _modifiedBy = $v.modifiedBy;
      _description = $v.description;
      _type = $v.type;
      _link = $v.link;
      _schema = $v.schema;
      _consumedFileStorage = $v.consumedFileStorage;
      _edekInfo = $v.edekInfo?.toBuilder();
      _metadata = $v.metadata;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $NodeDto other) {
    _$v = other as _$$NodeDto;
  }

  @override
  void update(void Function($NodeDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $NodeDto build() => _build();

  _$$NodeDto _build() {
    _$$NodeDto _$result;
    try {
      _$result = _$v ??
          _$$NodeDto._(
            nodeId: BuiltValueNullFieldError.checkNotNull(
                nodeId, r'$NodeDto', 'nodeId'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'$NodeDto', 'status'),
            fileCount: fileCount,
            profileCount: profileCount,
            folderCount: folderCount,
            vcCount: vcCount,
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'$NodeDto', 'name'),
            consumerId: BuiltValueNullFieldError.checkNotNull(
                consumerId, r'$NodeDto', 'consumerId'),
            parentNodeId: BuiltValueNullFieldError.checkNotNull(
                parentNodeId, r'$NodeDto', 'parentNodeId'),
            profileId: BuiltValueNullFieldError.checkNotNull(
                profileId, r'$NodeDto', 'profileId'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'$NodeDto', 'createdAt'),
            modifiedAt: BuiltValueNullFieldError.checkNotNull(
                modifiedAt, r'$NodeDto', 'modifiedAt'),
            createdBy: BuiltValueNullFieldError.checkNotNull(
                createdBy, r'$NodeDto', 'createdBy'),
            modifiedBy: BuiltValueNullFieldError.checkNotNull(
                modifiedBy, r'$NodeDto', 'modifiedBy'),
            description: description,
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'$NodeDto', 'type'),
            link: link,
            schema: schema,
            consumedFileStorage: consumedFileStorage,
            edekInfo: _edekInfo?.build(),
            metadata: metadata,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'edekInfo';
        _edekInfo?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'$NodeDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
