// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_scanned_file_info_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetScannedFileInfoOK extends GetScannedFileInfoOK {
  @override
  final JsonObject data;
  @override
  final String jobId;
  @override
  final String status;
  @override
  final String profileId;
  @override
  final String? exclusiveStartKey;
  @override
  final String nodeId;
  @override
  final String createdAt;
  @override
  final String name;

  factory _$GetScannedFileInfoOK(
          [void Function(GetScannedFileInfoOKBuilder)? updates]) =>
      (new GetScannedFileInfoOKBuilder()..update(updates))._build();

  _$GetScannedFileInfoOK._(
      {required this.data,
      required this.jobId,
      required this.status,
      required this.profileId,
      this.exclusiveStartKey,
      required this.nodeId,
      required this.createdAt,
      required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        data, r'GetScannedFileInfoOK', 'data');
    BuiltValueNullFieldError.checkNotNull(
        jobId, r'GetScannedFileInfoOK', 'jobId');
    BuiltValueNullFieldError.checkNotNull(
        status, r'GetScannedFileInfoOK', 'status');
    BuiltValueNullFieldError.checkNotNull(
        profileId, r'GetScannedFileInfoOK', 'profileId');
    BuiltValueNullFieldError.checkNotNull(
        nodeId, r'GetScannedFileInfoOK', 'nodeId');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GetScannedFileInfoOK', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GetScannedFileInfoOK', 'name');
  }

  @override
  GetScannedFileInfoOK rebuild(
          void Function(GetScannedFileInfoOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetScannedFileInfoOKBuilder toBuilder() =>
      new GetScannedFileInfoOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetScannedFileInfoOK &&
        data == other.data &&
        jobId == other.jobId &&
        status == other.status &&
        profileId == other.profileId &&
        exclusiveStartKey == other.exclusiveStartKey &&
        nodeId == other.nodeId &&
        createdAt == other.createdAt &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, jobId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, profileId.hashCode);
    _$hash = $jc(_$hash, exclusiveStartKey.hashCode);
    _$hash = $jc(_$hash, nodeId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetScannedFileInfoOK')
          ..add('data', data)
          ..add('jobId', jobId)
          ..add('status', status)
          ..add('profileId', profileId)
          ..add('exclusiveStartKey', exclusiveStartKey)
          ..add('nodeId', nodeId)
          ..add('createdAt', createdAt)
          ..add('name', name))
        .toString();
  }
}

class GetScannedFileInfoOKBuilder
    implements Builder<GetScannedFileInfoOK, GetScannedFileInfoOKBuilder> {
  _$GetScannedFileInfoOK? _$v;

  JsonObject? _data;
  JsonObject? get data => _$this._data;
  set data(JsonObject? data) => _$this._data = data;

  String? _jobId;
  String? get jobId => _$this._jobId;
  set jobId(String? jobId) => _$this._jobId = jobId;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _profileId;
  String? get profileId => _$this._profileId;
  set profileId(String? profileId) => _$this._profileId = profileId;

  String? _exclusiveStartKey;
  String? get exclusiveStartKey => _$this._exclusiveStartKey;
  set exclusiveStartKey(String? exclusiveStartKey) =>
      _$this._exclusiveStartKey = exclusiveStartKey;

  String? _nodeId;
  String? get nodeId => _$this._nodeId;
  set nodeId(String? nodeId) => _$this._nodeId = nodeId;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GetScannedFileInfoOKBuilder() {
    GetScannedFileInfoOK._defaults(this);
  }

  GetScannedFileInfoOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _jobId = $v.jobId;
      _status = $v.status;
      _profileId = $v.profileId;
      _exclusiveStartKey = $v.exclusiveStartKey;
      _nodeId = $v.nodeId;
      _createdAt = $v.createdAt;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetScannedFileInfoOK other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetScannedFileInfoOK;
  }

  @override
  void update(void Function(GetScannedFileInfoOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetScannedFileInfoOK build() => _build();

  _$GetScannedFileInfoOK _build() {
    final _$result = _$v ??
        new _$GetScannedFileInfoOK._(
          data: BuiltValueNullFieldError.checkNotNull(
              data, r'GetScannedFileInfoOK', 'data'),
          jobId: BuiltValueNullFieldError.checkNotNull(
              jobId, r'GetScannedFileInfoOK', 'jobId'),
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'GetScannedFileInfoOK', 'status'),
          profileId: BuiltValueNullFieldError.checkNotNull(
              profileId, r'GetScannedFileInfoOK', 'profileId'),
          exclusiveStartKey: exclusiveStartKey,
          nodeId: BuiltValueNullFieldError.checkNotNull(
              nodeId, r'GetScannedFileInfoOK', 'nodeId'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'GetScannedFileInfoOK', 'createdAt'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'GetScannedFileInfoOK', 'name'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
