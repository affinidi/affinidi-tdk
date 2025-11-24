// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invalid_jwt_token_error_details_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidJwtTokenErrorDetailsInner
    extends InvalidJwtTokenErrorDetailsInner {
  @override
  final String issue;
  @override
  final String? field;
  @override
  final String? value;
  @override
  final String? location;

  factory _$InvalidJwtTokenErrorDetailsInner(
          [void Function(InvalidJwtTokenErrorDetailsInnerBuilder)? updates]) =>
      (InvalidJwtTokenErrorDetailsInnerBuilder()..update(updates))._build();

  _$InvalidJwtTokenErrorDetailsInner._(
      {required this.issue, this.field, this.value, this.location})
      : super._();
  @override
  InvalidJwtTokenErrorDetailsInner rebuild(
          void Function(InvalidJwtTokenErrorDetailsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidJwtTokenErrorDetailsInnerBuilder toBuilder() =>
      InvalidJwtTokenErrorDetailsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidJwtTokenErrorDetailsInner &&
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
    return (newBuiltValueToStringHelper(r'InvalidJwtTokenErrorDetailsInner')
          ..add('issue', issue)
          ..add('field', field)
          ..add('value', value)
          ..add('location', location))
        .toString();
  }
}

class InvalidJwtTokenErrorDetailsInnerBuilder
    implements
        Builder<InvalidJwtTokenErrorDetailsInner,
            InvalidJwtTokenErrorDetailsInnerBuilder> {
  _$InvalidJwtTokenErrorDetailsInner? _$v;

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

  InvalidJwtTokenErrorDetailsInnerBuilder() {
    InvalidJwtTokenErrorDetailsInner._defaults(this);
  }

  InvalidJwtTokenErrorDetailsInnerBuilder get _$this {
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
  void replace(InvalidJwtTokenErrorDetailsInner other) {
    _$v = other as _$InvalidJwtTokenErrorDetailsInner;
  }

  @override
  void update(void Function(InvalidJwtTokenErrorDetailsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidJwtTokenErrorDetailsInner build() => _build();

  _$InvalidJwtTokenErrorDetailsInner _build() {
    final _$result = _$v ??
        _$InvalidJwtTokenErrorDetailsInner._(
          issue: BuiltValueNullFieldError.checkNotNull(
              issue, r'InvalidJwtTokenErrorDetailsInner', 'issue'),
          field: field,
          value: value,
          location: location,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
