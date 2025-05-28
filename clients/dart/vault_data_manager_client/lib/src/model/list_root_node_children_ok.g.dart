// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_root_node_children_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListRootNodeChildrenOK extends ListRootNodeChildrenOK {
  @override
  final BuiltList<NodeDto>? nodes;

  factory _$ListRootNodeChildrenOK(
          [void Function(ListRootNodeChildrenOKBuilder)? updates]) =>
      (ListRootNodeChildrenOKBuilder()..update(updates))._build();

  _$ListRootNodeChildrenOK._({this.nodes}) : super._();
  @override
  ListRootNodeChildrenOK rebuild(
          void Function(ListRootNodeChildrenOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListRootNodeChildrenOKBuilder toBuilder() =>
      ListRootNodeChildrenOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListRootNodeChildrenOK && nodes == other.nodes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nodes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListRootNodeChildrenOK')
          ..add('nodes', nodes))
        .toString();
  }
}

class ListRootNodeChildrenOKBuilder
    implements Builder<ListRootNodeChildrenOK, ListRootNodeChildrenOKBuilder> {
  _$ListRootNodeChildrenOK? _$v;

  ListBuilder<NodeDto>? _nodes;
  ListBuilder<NodeDto> get nodes => _$this._nodes ??= ListBuilder<NodeDto>();
  set nodes(ListBuilder<NodeDto>? nodes) => _$this._nodes = nodes;

  ListRootNodeChildrenOKBuilder() {
    ListRootNodeChildrenOK._defaults(this);
  }

  ListRootNodeChildrenOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nodes = $v.nodes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListRootNodeChildrenOK other) {
    _$v = other as _$ListRootNodeChildrenOK;
  }

  @override
  void update(void Function(ListRootNodeChildrenOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListRootNodeChildrenOK build() => _build();

  _$ListRootNodeChildrenOK _build() {
    _$ListRootNodeChildrenOK _$result;
    try {
      _$result = _$v ??
          _$ListRootNodeChildrenOK._(
            nodes: _nodes?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nodes';
        _nodes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ListRootNodeChildrenOK', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
