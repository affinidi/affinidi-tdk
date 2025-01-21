// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_profile_data_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QueryProfileDataOK extends QueryProfileDataOK {
  @override
  final JsonObject? data;

  factory _$QueryProfileDataOK(
          [void Function(QueryProfileDataOKBuilder)? updates]) =>
      (new QueryProfileDataOKBuilder()..update(updates))._build();

  _$QueryProfileDataOK._({this.data}) : super._();

  @override
  QueryProfileDataOK rebuild(
          void Function(QueryProfileDataOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QueryProfileDataOKBuilder toBuilder() =>
      new QueryProfileDataOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QueryProfileDataOK && data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QueryProfileDataOK')
          ..add('data', data))
        .toString();
  }
}

class QueryProfileDataOKBuilder
    implements Builder<QueryProfileDataOK, QueryProfileDataOKBuilder> {
  _$QueryProfileDataOK? _$v;

  JsonObject? _data;
  JsonObject? get data => _$this._data;
  set data(JsonObject? data) => _$this._data = data;

  QueryProfileDataOKBuilder() {
    QueryProfileDataOK._defaults(this);
  }

  QueryProfileDataOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QueryProfileDataOK other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QueryProfileDataOK;
  }

  @override
  void update(void Function(QueryProfileDataOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QueryProfileDataOK build() => _build();

  _$QueryProfileDataOK _build() {
    final _$result = _$v ??
        new _$QueryProfileDataOK._(
          data: data,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
