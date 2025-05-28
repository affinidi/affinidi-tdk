// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_scanned_files_ok_scanned_files_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListScannedFilesOKScannedFilesInner
    extends ListScannedFilesOKScannedFilesInner {
  @override
  final String jobId;
  @override
  final String status;
  @override
  final String profileId;
  @override
  final String nodeId;
  @override
  final String createdAt;
  @override
  final String name;

  factory _$ListScannedFilesOKScannedFilesInner(
          [void Function(ListScannedFilesOKScannedFilesInnerBuilder)?
              updates]) =>
      (ListScannedFilesOKScannedFilesInnerBuilder()..update(updates))._build();

  _$ListScannedFilesOKScannedFilesInner._(
      {required this.jobId,
      required this.status,
      required this.profileId,
      required this.nodeId,
      required this.createdAt,
      required this.name})
      : super._();
  @override
  ListScannedFilesOKScannedFilesInner rebuild(
          void Function(ListScannedFilesOKScannedFilesInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListScannedFilesOKScannedFilesInnerBuilder toBuilder() =>
      ListScannedFilesOKScannedFilesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListScannedFilesOKScannedFilesInner &&
        jobId == other.jobId &&
        status == other.status &&
        profileId == other.profileId &&
        nodeId == other.nodeId &&
        createdAt == other.createdAt &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, jobId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, profileId.hashCode);
    _$hash = $jc(_$hash, nodeId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListScannedFilesOKScannedFilesInner')
          ..add('jobId', jobId)
          ..add('status', status)
          ..add('profileId', profileId)
          ..add('nodeId', nodeId)
          ..add('createdAt', createdAt)
          ..add('name', name))
        .toString();
  }
}

class ListScannedFilesOKScannedFilesInnerBuilder
    implements
        Builder<ListScannedFilesOKScannedFilesInner,
            ListScannedFilesOKScannedFilesInnerBuilder> {
  _$ListScannedFilesOKScannedFilesInner? _$v;

  String? _jobId;
  String? get jobId => _$this._jobId;
  set jobId(String? jobId) => _$this._jobId = jobId;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _profileId;
  String? get profileId => _$this._profileId;
  set profileId(String? profileId) => _$this._profileId = profileId;

  String? _nodeId;
  String? get nodeId => _$this._nodeId;
  set nodeId(String? nodeId) => _$this._nodeId = nodeId;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListScannedFilesOKScannedFilesInnerBuilder() {
    ListScannedFilesOKScannedFilesInner._defaults(this);
  }

  ListScannedFilesOKScannedFilesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jobId = $v.jobId;
      _status = $v.status;
      _profileId = $v.profileId;
      _nodeId = $v.nodeId;
      _createdAt = $v.createdAt;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListScannedFilesOKScannedFilesInner other) {
    _$v = other as _$ListScannedFilesOKScannedFilesInner;
  }

  @override
  void update(
      void Function(ListScannedFilesOKScannedFilesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListScannedFilesOKScannedFilesInner build() => _build();

  _$ListScannedFilesOKScannedFilesInner _build() {
    final _$result = _$v ??
        _$ListScannedFilesOKScannedFilesInner._(
          jobId: BuiltValueNullFieldError.checkNotNull(
              jobId, r'ListScannedFilesOKScannedFilesInner', 'jobId'),
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'ListScannedFilesOKScannedFilesInner', 'status'),
          profileId: BuiltValueNullFieldError.checkNotNull(
              profileId, r'ListScannedFilesOKScannedFilesInner', 'profileId'),
          nodeId: BuiltValueNullFieldError.checkNotNull(
              nodeId, r'ListScannedFilesOKScannedFilesInner', 'nodeId'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'ListScannedFilesOKScannedFilesInner', 'createdAt'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'ListScannedFilesOKScannedFilesInner', 'name'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
