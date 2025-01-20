// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_error_response_details_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceErrorResponseDetailsInner
    extends ServiceErrorResponseDetailsInner {
  @override
  final String issue;
  @override
  final String? field;
  @override
  final String? value;
  @override
  final String? location;

  factory _$ServiceErrorResponseDetailsInner(
          [void Function(ServiceErrorResponseDetailsInnerBuilder)? updates]) =>
      (new ServiceErrorResponseDetailsInnerBuilder()..update(updates))._build();

  _$ServiceErrorResponseDetailsInner._(
      {required this.issue, this.field, this.value, this.location})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        issue, r'ServiceErrorResponseDetailsInner', 'issue');
  }

  @override
  ServiceErrorResponseDetailsInner rebuild(
          void Function(ServiceErrorResponseDetailsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceErrorResponseDetailsInnerBuilder toBuilder() =>
      new ServiceErrorResponseDetailsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceErrorResponseDetailsInner &&
        issue == other.issue &&
        field == other.field &&
        value == other.value &&
        location == other.location;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, issue.hashCode);
    _$hash = $jc(_$hash, field.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServiceErrorResponseDetailsInner')
          ..add('issue', issue)
          ..add('field', field)
          ..add('value', value)
          ..add('location', location))
        .toString();
  }
}

class ServiceErrorResponseDetailsInnerBuilder
    implements
        Builder<ServiceErrorResponseDetailsInner,
            ServiceErrorResponseDetailsInnerBuilder> {
  _$ServiceErrorResponseDetailsInner? _$v;

  String? _issue;
  String? get issue => _$this._issue;
  set issue(String? issue) => _$this._issue = issue;

  String? _field;
  String? get field => _$this._field;
  set field(String? field) => _$this._field = field;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  ServiceErrorResponseDetailsInnerBuilder() {
    ServiceErrorResponseDetailsInner._defaults(this);
  }

  ServiceErrorResponseDetailsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _issue = $v.issue;
      _field = $v.field;
      _value = $v.value;
      _location = $v.location;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceErrorResponseDetailsInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServiceErrorResponseDetailsInner;
  }

  @override
  void update(void Function(ServiceErrorResponseDetailsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceErrorResponseDetailsInner build() => _build();

  _$ServiceErrorResponseDetailsInner _build() {
    final _$result = _$v ??
        new _$ServiceErrorResponseDetailsInner._(
          issue: BuiltValueNullFieldError.checkNotNull(
              issue, r'ServiceErrorResponseDetailsInner', 'issue'),
          field: field,
          value: value,
          location: location,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
