// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pex_query_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PexQueryDto extends PexQueryDto {
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
  final String vpDefinition;

  factory _$PexQueryDto([void Function(PexQueryDtoBuilder)? updates]) =>
      (PexQueryDtoBuilder()..update(updates))._build();

  _$PexQueryDto._(
      {required this.ari,
      required this.queryId,
      required this.name,
      required this.description,
      required this.configurationAri,
      required this.vpDefinition})
      : super._();
  @override
  PexQueryDto rebuild(void Function(PexQueryDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PexQueryDtoBuilder toBuilder() => PexQueryDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PexQueryDto &&
        ari == other.ari &&
        queryId == other.queryId &&
        name == other.name &&
        description == other.description &&
        configurationAri == other.configurationAri &&
        vpDefinition == other.vpDefinition;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ari.hashCode);
    _$hash = $jc(_$hash, queryId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, configurationAri.hashCode);
    _$hash = $jc(_$hash, vpDefinition.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PexQueryDto')
          ..add('ari', ari)
          ..add('queryId', queryId)
          ..add('name', name)
          ..add('description', description)
          ..add('configurationAri', configurationAri)
          ..add('vpDefinition', vpDefinition))
        .toString();
  }
}

class PexQueryDtoBuilder implements Builder<PexQueryDto, PexQueryDtoBuilder> {
  _$PexQueryDto? _$v;

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

  String? _vpDefinition;
  String? get vpDefinition => _$this._vpDefinition;
  set vpDefinition(String? vpDefinition) => _$this._vpDefinition = vpDefinition;

  PexQueryDtoBuilder() {
    PexQueryDto._defaults(this);
  }

  PexQueryDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ari = $v.ari;
      _queryId = $v.queryId;
      _name = $v.name;
      _description = $v.description;
      _configurationAri = $v.configurationAri;
      _vpDefinition = $v.vpDefinition;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PexQueryDto other) {
    _$v = other as _$PexQueryDto;
  }

  @override
  void update(void Function(PexQueryDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PexQueryDto build() => _build();

  _$PexQueryDto _build() {
    final _$result = _$v ??
        _$PexQueryDto._(
          ari:
              BuiltValueNullFieldError.checkNotNull(ari, r'PexQueryDto', 'ari'),
          queryId: BuiltValueNullFieldError.checkNotNull(
              queryId, r'PexQueryDto', 'queryId'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'PexQueryDto', 'name'),
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'PexQueryDto', 'description'),
          configurationAri: BuiltValueNullFieldError.checkNotNull(
              configurationAri, r'PexQueryDto', 'configurationAri'),
          vpDefinition: BuiltValueNullFieldError.checkNotNull(
              vpDefinition, r'PexQueryDto', 'vpDefinition'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
