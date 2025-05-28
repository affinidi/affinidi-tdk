// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_error_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceErrorResponse extends ServiceErrorResponse {
  @override
  final String debugId;
  @override
  final String name;
  @override
  final String code;
  @override
  final BuiltList<ServiceErrorResponseDetailsInner>? details;

  factory _$ServiceErrorResponse(
          [void Function(ServiceErrorResponseBuilder)? updates]) =>
      (ServiceErrorResponseBuilder()..update(updates))._build();

  _$ServiceErrorResponse._(
      {required this.debugId,
      required this.name,
      required this.code,
      this.details})
      : super._();
  @override
  ServiceErrorResponse rebuild(
          void Function(ServiceErrorResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceErrorResponseBuilder toBuilder() =>
      ServiceErrorResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceErrorResponse &&
        debugId == other.debugId &&
        name == other.name &&
        code == other.code &&
        details == other.details;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, debugId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServiceErrorResponse')
          ..add('debugId', debugId)
          ..add('name', name)
          ..add('code', code)
          ..add('details', details))
        .toString();
  }
}

class ServiceErrorResponseBuilder
    implements Builder<ServiceErrorResponse, ServiceErrorResponseBuilder> {
  _$ServiceErrorResponse? _$v;

  String? _debugId;
  String? get debugId => _$this._debugId;
  set debugId(String? debugId) => _$this._debugId = debugId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  ListBuilder<ServiceErrorResponseDetailsInner>? _details;
  ListBuilder<ServiceErrorResponseDetailsInner> get details =>
      _$this._details ??= ListBuilder<ServiceErrorResponseDetailsInner>();
  set details(ListBuilder<ServiceErrorResponseDetailsInner>? details) =>
      _$this._details = details;

  ServiceErrorResponseBuilder() {
    ServiceErrorResponse._defaults(this);
  }

  ServiceErrorResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _debugId = $v.debugId;
      _name = $v.name;
      _code = $v.code;
      _details = $v.details?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceErrorResponse other) {
    _$v = other as _$ServiceErrorResponse;
  }

  @override
  void update(void Function(ServiceErrorResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceErrorResponse build() => _build();

  _$ServiceErrorResponse _build() {
    _$ServiceErrorResponse _$result;
    try {
      _$result = _$v ??
          _$ServiceErrorResponse._(
            debugId: BuiltValueNullFieldError.checkNotNull(
                debugId, r'ServiceErrorResponse', 'debugId'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ServiceErrorResponse', 'name'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'ServiceErrorResponse', 'code'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ServiceErrorResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
