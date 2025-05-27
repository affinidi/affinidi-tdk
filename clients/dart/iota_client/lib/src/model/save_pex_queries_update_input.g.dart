// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_pex_queries_update_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SavePexQueriesUpdateInput extends SavePexQueriesUpdateInput {
  @override
  final BuiltList<SavePexQueriesUpdateInputQueriesInner>? queries;

  factory _$SavePexQueriesUpdateInput(
          [void Function(SavePexQueriesUpdateInputBuilder)? updates]) =>
      (SavePexQueriesUpdateInputBuilder()..update(updates))._build();

  _$SavePexQueriesUpdateInput._({this.queries}) : super._();
  @override
  SavePexQueriesUpdateInput rebuild(
          void Function(SavePexQueriesUpdateInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SavePexQueriesUpdateInputBuilder toBuilder() =>
      SavePexQueriesUpdateInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SavePexQueriesUpdateInput && queries == other.queries;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, queries.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SavePexQueriesUpdateInput')
          ..add('queries', queries))
        .toString();
  }
}

class SavePexQueriesUpdateInputBuilder
    implements
        Builder<SavePexQueriesUpdateInput, SavePexQueriesUpdateInputBuilder> {
  _$SavePexQueriesUpdateInput? _$v;

  ListBuilder<SavePexQueriesUpdateInputQueriesInner>? _queries;
  ListBuilder<SavePexQueriesUpdateInputQueriesInner> get queries =>
      _$this._queries ??= ListBuilder<SavePexQueriesUpdateInputQueriesInner>();
  set queries(ListBuilder<SavePexQueriesUpdateInputQueriesInner>? queries) =>
      _$this._queries = queries;

  SavePexQueriesUpdateInputBuilder() {
    SavePexQueriesUpdateInput._defaults(this);
  }

  SavePexQueriesUpdateInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _queries = $v.queries?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SavePexQueriesUpdateInput other) {
    _$v = other as _$SavePexQueriesUpdateInput;
  }

  @override
  void update(void Function(SavePexQueriesUpdateInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SavePexQueriesUpdateInput build() => _build();

  _$SavePexQueriesUpdateInput _build() {
    _$SavePexQueriesUpdateInput _$result;
    try {
      _$result = _$v ??
          _$SavePexQueriesUpdateInput._(
            queries: _queries?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'queries';
        _queries?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SavePexQueriesUpdateInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
