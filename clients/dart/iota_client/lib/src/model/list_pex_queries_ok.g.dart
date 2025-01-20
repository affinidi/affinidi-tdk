// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_pex_queries_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListPexQueriesOK extends ListPexQueriesOK {
  @override
  final BuiltList<PexQueryDto> pexQueries;
  @override
  final String? lastEvaluatedKey;

  factory _$ListPexQueriesOK(
          [void Function(ListPexQueriesOKBuilder)? updates]) =>
      (new ListPexQueriesOKBuilder()..update(updates))._build();

  _$ListPexQueriesOK._({required this.pexQueries, this.lastEvaluatedKey})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        pexQueries, r'ListPexQueriesOK', 'pexQueries');
  }

  @override
  ListPexQueriesOK rebuild(void Function(ListPexQueriesOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListPexQueriesOKBuilder toBuilder() =>
      new ListPexQueriesOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListPexQueriesOK &&
        pexQueries == other.pexQueries &&
        lastEvaluatedKey == other.lastEvaluatedKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pexQueries.hashCode);
    _$hash = $jc(_$hash, lastEvaluatedKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListPexQueriesOK')
          ..add('pexQueries', pexQueries)
          ..add('lastEvaluatedKey', lastEvaluatedKey))
        .toString();
  }
}

class ListPexQueriesOKBuilder
    implements Builder<ListPexQueriesOK, ListPexQueriesOKBuilder> {
  _$ListPexQueriesOK? _$v;

  ListBuilder<PexQueryDto>? _pexQueries;
  ListBuilder<PexQueryDto> get pexQueries =>
      _$this._pexQueries ??= new ListBuilder<PexQueryDto>();
  set pexQueries(ListBuilder<PexQueryDto>? pexQueries) =>
      _$this._pexQueries = pexQueries;

  String? _lastEvaluatedKey;
  String? get lastEvaluatedKey => _$this._lastEvaluatedKey;
  set lastEvaluatedKey(String? lastEvaluatedKey) =>
      _$this._lastEvaluatedKey = lastEvaluatedKey;

  ListPexQueriesOKBuilder() {
    ListPexQueriesOK._defaults(this);
  }

  ListPexQueriesOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pexQueries = $v.pexQueries.toBuilder();
      _lastEvaluatedKey = $v.lastEvaluatedKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListPexQueriesOK other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListPexQueriesOK;
  }

  @override
  void update(void Function(ListPexQueriesOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListPexQueriesOK build() => _build();

  _$ListPexQueriesOK _build() {
    _$ListPexQueriesOK _$result;
    try {
      _$result = _$v ??
          new _$ListPexQueriesOK._(
            pexQueries: pexQueries.build(),
            lastEvaluatedKey: lastEvaluatedKey,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pexQueries';
        pexQueries.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListPexQueriesOK', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
