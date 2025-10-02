// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_dcql_query_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateDcqlQueryInput extends UpdateDcqlQueryInput {
  @override
  final String? dcqlQuery;
  @override
  final String? description;

  factory _$UpdateDcqlQueryInput(
          [void Function(UpdateDcqlQueryInputBuilder)? updates]) =>
      (UpdateDcqlQueryInputBuilder()..update(updates))._build();

  _$UpdateDcqlQueryInput._({this.dcqlQuery, this.description}) : super._();
  @override
  UpdateDcqlQueryInput rebuild(
          void Function(UpdateDcqlQueryInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateDcqlQueryInputBuilder toBuilder() =>
      UpdateDcqlQueryInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateDcqlQueryInput &&
        dcqlQuery == other.dcqlQuery &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dcqlQuery.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateDcqlQueryInput')
          ..add('dcqlQuery', dcqlQuery)
          ..add('description', description))
        .toString();
  }
}

class UpdateDcqlQueryInputBuilder
    implements Builder<UpdateDcqlQueryInput, UpdateDcqlQueryInputBuilder> {
  _$UpdateDcqlQueryInput? _$v;

  String? _dcqlQuery;
  String? get dcqlQuery => _$this._dcqlQuery;
  set dcqlQuery(String? dcqlQuery) => _$this._dcqlQuery = dcqlQuery;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  UpdateDcqlQueryInputBuilder() {
    UpdateDcqlQueryInput._defaults(this);
  }

  UpdateDcqlQueryInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dcqlQuery = $v.dcqlQuery;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateDcqlQueryInput other) {
    _$v = other as _$UpdateDcqlQueryInput;
  }

  @override
  void update(void Function(UpdateDcqlQueryInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateDcqlQueryInput build() => _build();

  _$UpdateDcqlQueryInput _build() {
    final _$result = _$v ??
        _$UpdateDcqlQueryInput._(
          dcqlQuery: dcqlQuery,
          description: description,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
