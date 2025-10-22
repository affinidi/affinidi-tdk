// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_dcql_queries_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListDcqlQueriesOK extends ListDcqlQueriesOK {
  @override
  final BuiltList<DcqlQueryDto> dcqlQueries;
  @override
  final String? lastEvaluatedKey;

  factory _$ListDcqlQueriesOK(
          [void Function(ListDcqlQueriesOKBuilder)? updates]) =>
      (ListDcqlQueriesOKBuilder()..update(updates))._build();

  _$ListDcqlQueriesOK._({required this.dcqlQueries, this.lastEvaluatedKey})
      : super._();
  @override
  ListDcqlQueriesOK rebuild(void Function(ListDcqlQueriesOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListDcqlQueriesOKBuilder toBuilder() =>
      ListDcqlQueriesOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListDcqlQueriesOK &&
        dcqlQueries == other.dcqlQueries &&
        lastEvaluatedKey == other.lastEvaluatedKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dcqlQueries.hashCode);
    _$hash = $jc(_$hash, lastEvaluatedKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListDcqlQueriesOK')
          ..add('dcqlQueries', dcqlQueries)
          ..add('lastEvaluatedKey', lastEvaluatedKey))
        .toString();
  }
}

class ListDcqlQueriesOKBuilder
    implements Builder<ListDcqlQueriesOK, ListDcqlQueriesOKBuilder> {
  _$ListDcqlQueriesOK? _$v;

  ListBuilder<DcqlQueryDto>? _dcqlQueries;
  ListBuilder<DcqlQueryDto> get dcqlQueries =>
      _$this._dcqlQueries ??= ListBuilder<DcqlQueryDto>();
  set dcqlQueries(ListBuilder<DcqlQueryDto>? dcqlQueries) =>
      _$this._dcqlQueries = dcqlQueries;

  String? _lastEvaluatedKey;
  String? get lastEvaluatedKey => _$this._lastEvaluatedKey;
  set lastEvaluatedKey(String? lastEvaluatedKey) =>
      _$this._lastEvaluatedKey = lastEvaluatedKey;

  ListDcqlQueriesOKBuilder() {
    ListDcqlQueriesOK._defaults(this);
  }

  ListDcqlQueriesOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dcqlQueries = $v.dcqlQueries.toBuilder();
      _lastEvaluatedKey = $v.lastEvaluatedKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListDcqlQueriesOK other) {
    _$v = other as _$ListDcqlQueriesOK;
  }

  @override
  void update(void Function(ListDcqlQueriesOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListDcqlQueriesOK build() => _build();

  _$ListDcqlQueriesOK _build() {
    _$ListDcqlQueriesOK _$result;
    try {
      _$result = _$v ??
          _$ListDcqlQueriesOK._(
            dcqlQueries: dcqlQueries.build(),
            lastEvaluatedKey: lastEvaluatedKey,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dcqlQueries';
        dcqlQueries.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ListDcqlQueriesOK', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
