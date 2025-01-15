// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_pex_queries_update_input_queries_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SavePexQueriesUpdateInputQueriesInner
    extends SavePexQueriesUpdateInputQueriesInner {
  @override
  final String queryId;
  @override
  final String? vpDefinition;
  @override
  final String? description;

  factory _$SavePexQueriesUpdateInputQueriesInner(
          [void Function(SavePexQueriesUpdateInputQueriesInnerBuilder)?
              updates]) =>
      (new SavePexQueriesUpdateInputQueriesInnerBuilder()..update(updates))
          ._build();

  _$SavePexQueriesUpdateInputQueriesInner._(
      {required this.queryId, this.vpDefinition, this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        queryId, r'SavePexQueriesUpdateInputQueriesInner', 'queryId');
  }

  @override
  SavePexQueriesUpdateInputQueriesInner rebuild(
          void Function(SavePexQueriesUpdateInputQueriesInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SavePexQueriesUpdateInputQueriesInnerBuilder toBuilder() =>
      new SavePexQueriesUpdateInputQueriesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SavePexQueriesUpdateInputQueriesInner &&
        queryId == other.queryId &&
        vpDefinition == other.vpDefinition &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, queryId.hashCode);
    _$hash = $jc(_$hash, vpDefinition.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'SavePexQueriesUpdateInputQueriesInner')
          ..add('queryId', queryId)
          ..add('vpDefinition', vpDefinition)
          ..add('description', description))
        .toString();
  }
}

class SavePexQueriesUpdateInputQueriesInnerBuilder
    implements
        Builder<SavePexQueriesUpdateInputQueriesInner,
            SavePexQueriesUpdateInputQueriesInnerBuilder> {
  _$SavePexQueriesUpdateInputQueriesInner? _$v;

  String? _queryId;
  String? get queryId => _$this._queryId;
  set queryId(String? queryId) => _$this._queryId = queryId;

  String? _vpDefinition;
  String? get vpDefinition => _$this._vpDefinition;
  set vpDefinition(String? vpDefinition) => _$this._vpDefinition = vpDefinition;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  SavePexQueriesUpdateInputQueriesInnerBuilder() {
    SavePexQueriesUpdateInputQueriesInner._defaults(this);
  }

  SavePexQueriesUpdateInputQueriesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _queryId = $v.queryId;
      _vpDefinition = $v.vpDefinition;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SavePexQueriesUpdateInputQueriesInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SavePexQueriesUpdateInputQueriesInner;
  }

  @override
  void update(
      void Function(SavePexQueriesUpdateInputQueriesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SavePexQueriesUpdateInputQueriesInner build() => _build();

  _$SavePexQueriesUpdateInputQueriesInner _build() {
    final _$result = _$v ??
        new _$SavePexQueriesUpdateInputQueriesInner._(
          queryId: BuiltValueNullFieldError.checkNotNull(
              queryId, r'SavePexQueriesUpdateInputQueriesInner', 'queryId'),
          vpDefinition: vpDefinition,
          description: description,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
