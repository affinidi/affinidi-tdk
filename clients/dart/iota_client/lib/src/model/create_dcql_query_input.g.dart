// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_dcql_query_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateDcqlQueryInput extends CreateDcqlQueryInput {
  @override
  final String name;
  @override
  final String dcqlQuery;
  @override
  final String? description;

  factory _$CreateDcqlQueryInput(
          [void Function(CreateDcqlQueryInputBuilder)? updates]) =>
      (CreateDcqlQueryInputBuilder()..update(updates))._build();

  _$CreateDcqlQueryInput._(
      {required this.name, required this.dcqlQuery, this.description})
      : super._();
  @override
  CreateDcqlQueryInput rebuild(
          void Function(CreateDcqlQueryInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateDcqlQueryInputBuilder toBuilder() =>
      CreateDcqlQueryInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateDcqlQueryInput &&
        name == other.name &&
        dcqlQuery == other.dcqlQuery &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, dcqlQuery.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateDcqlQueryInput')
          ..add('name', name)
          ..add('dcqlQuery', dcqlQuery)
          ..add('description', description))
        .toString();
  }
}

class CreateDcqlQueryInputBuilder
    implements Builder<CreateDcqlQueryInput, CreateDcqlQueryInputBuilder> {
  _$CreateDcqlQueryInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _dcqlQuery;
  String? get dcqlQuery => _$this._dcqlQuery;
  set dcqlQuery(String? dcqlQuery) => _$this._dcqlQuery = dcqlQuery;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  CreateDcqlQueryInputBuilder() {
    CreateDcqlQueryInput._defaults(this);
  }

  CreateDcqlQueryInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _dcqlQuery = $v.dcqlQuery;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateDcqlQueryInput other) {
    _$v = other as _$CreateDcqlQueryInput;
  }

  @override
  void update(void Function(CreateDcqlQueryInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateDcqlQueryInput build() => _build();

  _$CreateDcqlQueryInput _build() {
    final _$result = _$v ??
        _$CreateDcqlQueryInput._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'CreateDcqlQueryInput', 'name'),
          dcqlQuery: BuiltValueNullFieldError.checkNotNull(
              dcqlQuery, r'CreateDcqlQueryInput', 'dcqlQuery'),
          description: description,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
