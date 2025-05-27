// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_node_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateNodeOK extends CreateNodeOK {
  @override
  final String nodeId;
  @override
  final String? url;
  @override
  final String? link;
  @override
  final BuiltMap<String, JsonObject?>? fields;

  factory _$CreateNodeOK([void Function(CreateNodeOKBuilder)? updates]) =>
      (CreateNodeOKBuilder()..update(updates))._build();

  _$CreateNodeOK._({required this.nodeId, this.url, this.link, this.fields})
      : super._();
  @override
  CreateNodeOK rebuild(void Function(CreateNodeOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateNodeOKBuilder toBuilder() => CreateNodeOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateNodeOK &&
        nodeId == other.nodeId &&
        url == other.url &&
        link == other.link &&
        fields == other.fields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nodeId.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, link.hashCode);
    _$hash = $jc(_$hash, fields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateNodeOK')
          ..add('nodeId', nodeId)
          ..add('url', url)
          ..add('link', link)
          ..add('fields', fields))
        .toString();
  }
}

class CreateNodeOKBuilder
    implements Builder<CreateNodeOK, CreateNodeOKBuilder> {
  _$CreateNodeOK? _$v;

  String? _nodeId;
  String? get nodeId => _$this._nodeId;
  set nodeId(String? nodeId) => _$this._nodeId = nodeId;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  MapBuilder<String, JsonObject?>? _fields;
  MapBuilder<String, JsonObject?> get fields =>
      _$this._fields ??= MapBuilder<String, JsonObject?>();
  set fields(MapBuilder<String, JsonObject?>? fields) =>
      _$this._fields = fields;

  CreateNodeOKBuilder() {
    CreateNodeOK._defaults(this);
  }

  CreateNodeOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nodeId = $v.nodeId;
      _url = $v.url;
      _link = $v.link;
      _fields = $v.fields?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateNodeOK other) {
    _$v = other as _$CreateNodeOK;
  }

  @override
  void update(void Function(CreateNodeOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateNodeOK build() => _build();

  _$CreateNodeOK _build() {
    _$CreateNodeOK _$result;
    try {
      _$result = _$v ??
          _$CreateNodeOK._(
            nodeId: BuiltValueNullFieldError.checkNotNull(
                nodeId, r'CreateNodeOK', 'nodeId'),
            url: url,
            link: link,
            fields: _fields?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fields';
        _fields?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreateNodeOK', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
