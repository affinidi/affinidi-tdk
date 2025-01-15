// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invalid_parameter_error_details_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidParameterErrorDetailsInner
    extends InvalidParameterErrorDetailsInner {
  @override
  final String issue;
  @override
  final String? field;
  @override
  final String? value;
  @override
  final String? location;

  factory _$InvalidParameterErrorDetailsInner(
          [void Function(InvalidParameterErrorDetailsInnerBuilder)? updates]) =>
      (new InvalidParameterErrorDetailsInnerBuilder()..update(updates))
          ._build();

  _$InvalidParameterErrorDetailsInner._(
      {required this.issue, this.field, this.value, this.location})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        issue, r'InvalidParameterErrorDetailsInner', 'issue');
  }

  @override
  InvalidParameterErrorDetailsInner rebuild(
          void Function(InvalidParameterErrorDetailsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidParameterErrorDetailsInnerBuilder toBuilder() =>
      new InvalidParameterErrorDetailsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidParameterErrorDetailsInner &&
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
    return (newBuiltValueToStringHelper(r'InvalidParameterErrorDetailsInner')
          ..add('issue', issue)
          ..add('field', field)
          ..add('value', value)
          ..add('location', location))
        .toString();
  }
}

class InvalidParameterErrorDetailsInnerBuilder
    implements
        Builder<InvalidParameterErrorDetailsInner,
            InvalidParameterErrorDetailsInnerBuilder> {
  _$InvalidParameterErrorDetailsInner? _$v;

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

  InvalidParameterErrorDetailsInnerBuilder() {
    InvalidParameterErrorDetailsInner._defaults(this);
  }

  InvalidParameterErrorDetailsInnerBuilder get _$this {
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
  void replace(InvalidParameterErrorDetailsInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidParameterErrorDetailsInner;
  }

  @override
  void update(
      void Function(InvalidParameterErrorDetailsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidParameterErrorDetailsInner build() => _build();

  _$InvalidParameterErrorDetailsInner _build() {
    final _$result = _$v ??
        new _$InvalidParameterErrorDetailsInner._(
          issue: BuiltValueNullFieldError.checkNotNull(
              issue, r'InvalidParameterErrorDetailsInner', 'issue'),
          field: field,
          value: value,
          location: location,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
