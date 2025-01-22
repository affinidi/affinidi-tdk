// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_node_children_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListNodeChildrenOK extends ListNodeChildrenOK {
  @override
  final BuiltList<NodeDto>? nodes;
  @override
  final String? lastEvaluatedKey;

  factory _$ListNodeChildrenOK(
          [void Function(ListNodeChildrenOKBuilder)? updates]) =>
      (new ListNodeChildrenOKBuilder()..update(updates))._build();

  _$ListNodeChildrenOK._({this.nodes, this.lastEvaluatedKey}) : super._();

  @override
  ListNodeChildrenOK rebuild(
          void Function(ListNodeChildrenOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListNodeChildrenOKBuilder toBuilder() =>
      new ListNodeChildrenOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListNodeChildrenOK &&
        nodes == other.nodes &&
        lastEvaluatedKey == other.lastEvaluatedKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nodes.hashCode);
    _$hash = $jc(_$hash, lastEvaluatedKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListNodeChildrenOK')
          ..add('nodes', nodes)
          ..add('lastEvaluatedKey', lastEvaluatedKey))
        .toString();
  }
}

class ListNodeChildrenOKBuilder
    implements Builder<ListNodeChildrenOK, ListNodeChildrenOKBuilder> {
  _$ListNodeChildrenOK? _$v;

  ListBuilder<NodeDto>? _nodes;
  ListBuilder<NodeDto> get nodes =>
      _$this._nodes ??= new ListBuilder<NodeDto>();
  set nodes(ListBuilder<NodeDto>? nodes) => _$this._nodes = nodes;

  String? _lastEvaluatedKey;
  String? get lastEvaluatedKey => _$this._lastEvaluatedKey;
  set lastEvaluatedKey(String? lastEvaluatedKey) =>
      _$this._lastEvaluatedKey = lastEvaluatedKey;

  ListNodeChildrenOKBuilder() {
    ListNodeChildrenOK._defaults(this);
  }

  ListNodeChildrenOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nodes = $v.nodes?.toBuilder();
      _lastEvaluatedKey = $v.lastEvaluatedKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListNodeChildrenOK other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListNodeChildrenOK;
  }

  @override
  void update(void Function(ListNodeChildrenOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListNodeChildrenOK build() => _build();

  _$ListNodeChildrenOK _build() {
    _$ListNodeChildrenOK _$result;
    try {
      _$result = _$v ??
          new _$ListNodeChildrenOK._(
            nodes: _nodes?.build(),
            lastEvaluatedKey: lastEvaluatedKey,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nodes';
        _nodes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListNodeChildrenOK', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
