// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_metadata_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerMetadataDto extends ConsumerMetadataDto {
  @override
  final String nodeId;
  @override
  final NodeStatus status;
  @override
  final int? fileCount;
  @override
  final int? folderCount;
  @override
  final int? profileCount;
  @override
  final String name;
  @override
  final String consumerId;
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
  final int consumedFileStorage;

  factory _$ConsumerMetadataDto(
          [void Function(ConsumerMetadataDtoBuilder)? updates]) =>
      (ConsumerMetadataDtoBuilder()..update(updates))._build();

  _$ConsumerMetadataDto._(
      {required this.nodeId,
      required this.status,
      this.fileCount,
      this.folderCount,
      this.profileCount,
      required this.name,
      required this.consumerId,
      required this.createdAt,
      required this.modifiedAt,
      required this.createdBy,
      required this.modifiedBy,
      this.description,
      required this.type,
      required this.consumedFileStorage})
      : super._();
  @override
  ConsumerMetadataDto rebuild(
          void Function(ConsumerMetadataDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerMetadataDtoBuilder toBuilder() =>
      ConsumerMetadataDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerMetadataDto &&
        nodeId == other.nodeId &&
        status == other.status &&
        fileCount == other.fileCount &&
        folderCount == other.folderCount &&
        profileCount == other.profileCount &&
        name == other.name &&
        consumerId == other.consumerId &&
        createdAt == other.createdAt &&
        modifiedAt == other.modifiedAt &&
        createdBy == other.createdBy &&
        modifiedBy == other.modifiedBy &&
        description == other.description &&
        type == other.type &&
        consumedFileStorage == other.consumedFileStorage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nodeId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, fileCount.hashCode);
    _$hash = $jc(_$hash, folderCount.hashCode);
    _$hash = $jc(_$hash, profileCount.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, consumerId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, modifiedAt.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, modifiedBy.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, consumedFileStorage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerMetadataDto')
          ..add('nodeId', nodeId)
          ..add('status', status)
          ..add('fileCount', fileCount)
          ..add('folderCount', folderCount)
          ..add('profileCount', profileCount)
          ..add('name', name)
          ..add('consumerId', consumerId)
          ..add('createdAt', createdAt)
          ..add('modifiedAt', modifiedAt)
          ..add('createdBy', createdBy)
          ..add('modifiedBy', modifiedBy)
          ..add('description', description)
          ..add('type', type)
          ..add('consumedFileStorage', consumedFileStorage))
        .toString();
  }
}

class ConsumerMetadataDtoBuilder
    implements Builder<ConsumerMetadataDto, ConsumerMetadataDtoBuilder> {
  _$ConsumerMetadataDto? _$v;

  String? _nodeId;
  String? get nodeId => _$this._nodeId;
  set nodeId(String? nodeId) => _$this._nodeId = nodeId;

  NodeStatus? _status;
  NodeStatus? get status => _$this._status;
  set status(NodeStatus? status) => _$this._status = status;

  int? _fileCount;
  int? get fileCount => _$this._fileCount;
  set fileCount(int? fileCount) => _$this._fileCount = fileCount;

  int? _folderCount;
  int? get folderCount => _$this._folderCount;
  set folderCount(int? folderCount) => _$this._folderCount = folderCount;

  int? _profileCount;
  int? get profileCount => _$this._profileCount;
  set profileCount(int? profileCount) => _$this._profileCount = profileCount;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _consumerId;
  String? get consumerId => _$this._consumerId;
  set consumerId(String? consumerId) => _$this._consumerId = consumerId;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _modifiedAt;
  String? get modifiedAt => _$this._modifiedAt;
  set modifiedAt(String? modifiedAt) => _$this._modifiedAt = modifiedAt;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  String? _modifiedBy;
  String? get modifiedBy => _$this._modifiedBy;
  set modifiedBy(String? modifiedBy) => _$this._modifiedBy = modifiedBy;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  NodeType? _type;
  NodeType? get type => _$this._type;
  set type(NodeType? type) => _$this._type = type;

  int? _consumedFileStorage;
  int? get consumedFileStorage => _$this._consumedFileStorage;
  set consumedFileStorage(int? consumedFileStorage) =>
      _$this._consumedFileStorage = consumedFileStorage;

  ConsumerMetadataDtoBuilder() {
    ConsumerMetadataDto._defaults(this);
  }

  ConsumerMetadataDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nodeId = $v.nodeId;
      _status = $v.status;
      _fileCount = $v.fileCount;
      _folderCount = $v.folderCount;
      _profileCount = $v.profileCount;
      _name = $v.name;
      _consumerId = $v.consumerId;
      _createdAt = $v.createdAt;
      _modifiedAt = $v.modifiedAt;
      _createdBy = $v.createdBy;
      _modifiedBy = $v.modifiedBy;
      _description = $v.description;
      _type = $v.type;
      _consumedFileStorage = $v.consumedFileStorage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerMetadataDto other) {
    _$v = other as _$ConsumerMetadataDto;
  }

  @override
  void update(void Function(ConsumerMetadataDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerMetadataDto build() => _build();

  _$ConsumerMetadataDto _build() {
    final _$result = _$v ??
        _$ConsumerMetadataDto._(
          nodeId: BuiltValueNullFieldError.checkNotNull(
              nodeId, r'ConsumerMetadataDto', 'nodeId'),
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'ConsumerMetadataDto', 'status'),
          fileCount: fileCount,
          folderCount: folderCount,
          profileCount: profileCount,
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'ConsumerMetadataDto', 'name'),
          consumerId: BuiltValueNullFieldError.checkNotNull(
              consumerId, r'ConsumerMetadataDto', 'consumerId'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'ConsumerMetadataDto', 'createdAt'),
          modifiedAt: BuiltValueNullFieldError.checkNotNull(
              modifiedAt, r'ConsumerMetadataDto', 'modifiedAt'),
          createdBy: BuiltValueNullFieldError.checkNotNull(
              createdBy, r'ConsumerMetadataDto', 'createdBy'),
          modifiedBy: BuiltValueNullFieldError.checkNotNull(
              modifiedBy, r'ConsumerMetadataDto', 'modifiedBy'),
          description: description,
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'ConsumerMetadataDto', 'type'),
          consumedFileStorage: BuiltValueNullFieldError.checkNotNull(
              consumedFileStorage,
              r'ConsumerMetadataDto',
              'consumedFileStorage'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
