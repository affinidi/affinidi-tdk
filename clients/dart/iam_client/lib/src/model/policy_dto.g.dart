// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'policy_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PolicyDto extends PolicyDto {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? principalId;
  @override
  final String? projectId;
  @override
  final String version;
  @override
  final BuiltList<PolicyStatementDto> statement;

  factory _$PolicyDto([void Function(PolicyDtoBuilder)? updates]) =>
      (new PolicyDtoBuilder()..update(updates))._build();

  _$PolicyDto._(
      {this.name,
      this.description,
      this.principalId,
      this.projectId,
      required this.version,
      required this.statement})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(version, r'PolicyDto', 'version');
    BuiltValueNullFieldError.checkNotNull(statement, r'PolicyDto', 'statement');
  }

  @override
  PolicyDto rebuild(void Function(PolicyDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PolicyDtoBuilder toBuilder() => new PolicyDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PolicyDto &&
        name == other.name &&
        description == other.description &&
        principalId == other.principalId &&
        projectId == other.projectId &&
        version == other.version &&
        statement == other.statement;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, principalId.hashCode);
    _$hash = $jc(_$hash, projectId.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, statement.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PolicyDto')
          ..add('name', name)
          ..add('description', description)
          ..add('principalId', principalId)
          ..add('projectId', projectId)
          ..add('version', version)
          ..add('statement', statement))
        .toString();
  }
}

class PolicyDtoBuilder implements Builder<PolicyDto, PolicyDtoBuilder> {
  _$PolicyDto? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _principalId;
  String? get principalId => _$this._principalId;
  set principalId(String? principalId) => _$this._principalId = principalId;

  String? _projectId;
  String? get projectId => _$this._projectId;
  set projectId(String? projectId) => _$this._projectId = projectId;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  ListBuilder<PolicyStatementDto>? _statement;
  ListBuilder<PolicyStatementDto> get statement =>
      _$this._statement ??= new ListBuilder<PolicyStatementDto>();
  set statement(ListBuilder<PolicyStatementDto>? statement) =>
      _$this._statement = statement;

  PolicyDtoBuilder() {
    PolicyDto._defaults(this);
  }

  PolicyDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _principalId = $v.principalId;
      _projectId = $v.projectId;
      _version = $v.version;
      _statement = $v.statement.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PolicyDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PolicyDto;
  }

  @override
  void update(void Function(PolicyDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PolicyDto build() => _build();

  _$PolicyDto _build() {
    _$PolicyDto _$result;
    try {
      _$result = _$v ??
          new _$PolicyDto._(
            name: name,
            description: description,
            principalId: principalId,
            projectId: projectId,
            version: BuiltValueNullFieldError.checkNotNull(
                version, r'PolicyDto', 'version'),
            statement: statement.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'statement';
        statement.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PolicyDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
