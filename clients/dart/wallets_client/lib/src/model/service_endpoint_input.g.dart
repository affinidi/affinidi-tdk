// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_endpoint_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceEndpointInput extends ServiceEndpointInput {
  @override
  final String name;
  @override
  final String description;
  @override
  final String url;

  factory _$ServiceEndpointInput(
          [void Function(ServiceEndpointInputBuilder)? updates]) =>
      (ServiceEndpointInputBuilder()..update(updates))._build();

  _$ServiceEndpointInput._(
      {required this.name, required this.description, required this.url})
      : super._();
  @override
  ServiceEndpointInput rebuild(
          void Function(ServiceEndpointInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceEndpointInputBuilder toBuilder() =>
      ServiceEndpointInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceEndpointInput &&
        name == other.name &&
        description == other.description &&
        url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServiceEndpointInput')
          ..add('name', name)
          ..add('description', description)
          ..add('url', url))
        .toString();
  }
}

class ServiceEndpointInputBuilder
    implements Builder<ServiceEndpointInput, ServiceEndpointInputBuilder> {
  _$ServiceEndpointInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  ServiceEndpointInputBuilder() {
    ServiceEndpointInput._defaults(this);
  }

  ServiceEndpointInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceEndpointInput other) {
    _$v = other as _$ServiceEndpointInput;
  }

  @override
  void update(void Function(ServiceEndpointInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceEndpointInput build() => _build();

  _$ServiceEndpointInput _build() {
    final _$result = _$v ??
        _$ServiceEndpointInput._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'ServiceEndpointInput', 'name'),
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'ServiceEndpointInput', 'description'),
          url: BuiltValueNullFieldError.checkNotNull(
              url, r'ServiceEndpointInput', 'url'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
