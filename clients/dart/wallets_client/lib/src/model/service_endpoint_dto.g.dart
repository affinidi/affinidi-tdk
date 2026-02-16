// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_endpoint_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceEndpointDto extends ServiceEndpointDto {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? url;
  @override
  final String? walletAri;
  @override
  final String? projectId;
  @override
  final String? createdAt;
  @override
  final String? modifiedAt;
  @override
  final String? createdBy;
  @override
  final String? modifiedBy;

  factory _$ServiceEndpointDto(
          [void Function(ServiceEndpointDtoBuilder)? updates]) =>
      (ServiceEndpointDtoBuilder()..update(updates))._build();

  _$ServiceEndpointDto._(
      {this.id,
      this.name,
      this.description,
      this.url,
      this.walletAri,
      this.projectId,
      this.createdAt,
      this.modifiedAt,
      this.createdBy,
      this.modifiedBy})
      : super._();
  @override
  ServiceEndpointDto rebuild(
          void Function(ServiceEndpointDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceEndpointDtoBuilder toBuilder() =>
      ServiceEndpointDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceEndpointDto &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        url == other.url &&
        walletAri == other.walletAri &&
        projectId == other.projectId &&
        createdAt == other.createdAt &&
        modifiedAt == other.modifiedAt &&
        createdBy == other.createdBy &&
        modifiedBy == other.modifiedBy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, walletAri.hashCode);
    _$hash = $jc(_$hash, projectId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, modifiedAt.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, modifiedBy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServiceEndpointDto')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('url', url)
          ..add('walletAri', walletAri)
          ..add('projectId', projectId)
          ..add('createdAt', createdAt)
          ..add('modifiedAt', modifiedAt)
          ..add('createdBy', createdBy)
          ..add('modifiedBy', modifiedBy))
        .toString();
  }
}

class ServiceEndpointDtoBuilder
    implements Builder<ServiceEndpointDto, ServiceEndpointDtoBuilder> {
  _$ServiceEndpointDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _walletAri;
  String? get walletAri => _$this._walletAri;
  set walletAri(String? walletAri) => _$this._walletAri = walletAri;

  String? _projectId;
  String? get projectId => _$this._projectId;
  set projectId(String? projectId) => _$this._projectId = projectId;

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

  ServiceEndpointDtoBuilder() {
    ServiceEndpointDto._defaults(this);
  }

  ServiceEndpointDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _url = $v.url;
      _walletAri = $v.walletAri;
      _projectId = $v.projectId;
      _createdAt = $v.createdAt;
      _modifiedAt = $v.modifiedAt;
      _createdBy = $v.createdBy;
      _modifiedBy = $v.modifiedBy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceEndpointDto other) {
    _$v = other as _$ServiceEndpointDto;
  }

  @override
  void update(void Function(ServiceEndpointDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceEndpointDto build() => _build();

  _$ServiceEndpointDto _build() {
    final _$result = _$v ??
        _$ServiceEndpointDto._(
          id: id,
          name: name,
          description: description,
          url: url,
          walletAri: walletAri,
          projectId: projectId,
          createdAt: createdAt,
          modifiedAt: modifiedAt,
          createdBy: createdBy,
          modifiedBy: modifiedBy,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
