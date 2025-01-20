// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_pex_queries_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeletePexQueriesInput extends DeletePexQueriesInput {
  @override
  final BuiltList<String> queryIds;

  factory _$DeletePexQueriesInput(
          [void Function(DeletePexQueriesInputBuilder)? updates]) =>
      (new DeletePexQueriesInputBuilder()..update(updates))._build();

  _$DeletePexQueriesInput._({required this.queryIds}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        queryIds, r'DeletePexQueriesInput', 'queryIds');
  }

  @override
  DeletePexQueriesInput rebuild(
          void Function(DeletePexQueriesInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeletePexQueriesInputBuilder toBuilder() =>
      new DeletePexQueriesInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeletePexQueriesInput && queryIds == other.queryIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, queryIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeletePexQueriesInput')
          ..add('queryIds', queryIds))
        .toString();
  }
}

class DeletePexQueriesInputBuilder
    implements Builder<DeletePexQueriesInput, DeletePexQueriesInputBuilder> {
  _$DeletePexQueriesInput? _$v;

  ListBuilder<String>? _queryIds;
  ListBuilder<String> get queryIds =>
      _$this._queryIds ??= new ListBuilder<String>();
  set queryIds(ListBuilder<String>? queryIds) => _$this._queryIds = queryIds;

  DeletePexQueriesInputBuilder() {
    DeletePexQueriesInput._defaults(this);
  }

  DeletePexQueriesInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _queryIds = $v.queryIds.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeletePexQueriesInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeletePexQueriesInput;
  }

  @override
  void update(void Function(DeletePexQueriesInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeletePexQueriesInput build() => _build();

  _$DeletePexQueriesInput _build() {
    _$DeletePexQueriesInput _$result;
    try {
      _$result = _$v ??
          new _$DeletePexQueriesInput._(
            queryIds: queryIds.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'queryIds';
        queryIds.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeletePexQueriesInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
