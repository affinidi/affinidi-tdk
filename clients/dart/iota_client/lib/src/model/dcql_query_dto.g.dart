// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dcql_query_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DcqlQueryDto extends DcqlQueryDto {
  @override
  final String ari;
  @override
  final String queryId;
  @override
  final String name;
  @override
  final String description;
  @override
  final String configurationAri;
  @override
  final String dcqlQuery;

  factory _$DcqlQueryDto([void Function(DcqlQueryDtoBuilder)? updates]) =>
      (DcqlQueryDtoBuilder()..update(updates))._build();

  _$DcqlQueryDto._(
      {required this.ari,
      required this.queryId,
      required this.name,
      required this.description,
      required this.configurationAri,
      required this.dcqlQuery})
      : super._();
  @override
  DcqlQueryDto rebuild(void Function(DcqlQueryDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DcqlQueryDtoBuilder toBuilder() => DcqlQueryDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DcqlQueryDto &&
        ari == other.ari &&
        queryId == other.queryId &&
        name == other.name &&
        description == other.description &&
        configurationAri == other.configurationAri &&
        dcqlQuery == other.dcqlQuery;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ari.hashCode);
    _$hash = $jc(_$hash, queryId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, configurationAri.hashCode);
    _$hash = $jc(_$hash, dcqlQuery.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DcqlQueryDto')
          ..add('ari', ari)
          ..add('queryId', queryId)
          ..add('name', name)
          ..add('description', description)
          ..add('configurationAri', configurationAri)
          ..add('dcqlQuery', dcqlQuery))
        .toString();
  }
}

class DcqlQueryDtoBuilder
    implements Builder<DcqlQueryDto, DcqlQueryDtoBuilder> {
  _$DcqlQueryDto? _$v;

  String? _ari;
  String? get ari => _$this._ari;
  set ari(String? ari) => _$this._ari = ari;

  String? _queryId;
  String? get queryId => _$this._queryId;
  set queryId(String? queryId) => _$this._queryId = queryId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _configurationAri;
  String? get configurationAri => _$this._configurationAri;
  set configurationAri(String? configurationAri) =>
      _$this._configurationAri = configurationAri;

  String? _dcqlQuery;
  String? get dcqlQuery => _$this._dcqlQuery;
  set dcqlQuery(String? dcqlQuery) => _$this._dcqlQuery = dcqlQuery;

  DcqlQueryDtoBuilder() {
    DcqlQueryDto._defaults(this);
  }

  DcqlQueryDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ari = $v.ari;
      _queryId = $v.queryId;
      _name = $v.name;
      _description = $v.description;
      _configurationAri = $v.configurationAri;
      _dcqlQuery = $v.dcqlQuery;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DcqlQueryDto other) {
    _$v = other as _$DcqlQueryDto;
  }

  @override
  void update(void Function(DcqlQueryDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DcqlQueryDto build() => _build();

  _$DcqlQueryDto _build() {
    final _$result = _$v ??
        _$DcqlQueryDto._(
          ari: BuiltValueNullFieldError.checkNotNull(
              ari, r'DcqlQueryDto', 'ari'),
          queryId: BuiltValueNullFieldError.checkNotNull(
              queryId, r'DcqlQueryDto', 'queryId'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'DcqlQueryDto', 'name'),
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'DcqlQueryDto', 'description'),
          configurationAri: BuiltValueNullFieldError.checkNotNull(
              configurationAri, r'DcqlQueryDto', 'configurationAri'),
          dcqlQuery: BuiltValueNullFieldError.checkNotNull(
              dcqlQuery, r'DcqlQueryDto', 'dcqlQuery'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
