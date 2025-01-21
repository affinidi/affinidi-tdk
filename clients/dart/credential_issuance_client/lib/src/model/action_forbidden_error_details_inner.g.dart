// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_forbidden_error_details_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ActionForbiddenErrorDetailsInner
    extends ActionForbiddenErrorDetailsInner {
  @override
  final String issue;
  @override
  final String? field;
  @override
  final String? value;
  @override
  final String? location;

  factory _$ActionForbiddenErrorDetailsInner(
          [void Function(ActionForbiddenErrorDetailsInnerBuilder)? updates]) =>
      (new ActionForbiddenErrorDetailsInnerBuilder()..update(updates))._build();

  _$ActionForbiddenErrorDetailsInner._(
      {required this.issue, this.field, this.value, this.location})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        issue, r'ActionForbiddenErrorDetailsInner', 'issue');
  }

  @override
  ActionForbiddenErrorDetailsInner rebuild(
          void Function(ActionForbiddenErrorDetailsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActionForbiddenErrorDetailsInnerBuilder toBuilder() =>
      new ActionForbiddenErrorDetailsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActionForbiddenErrorDetailsInner &&
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
    return (newBuiltValueToStringHelper(r'ActionForbiddenErrorDetailsInner')
          ..add('issue', issue)
          ..add('field', field)
          ..add('value', value)
          ..add('location', location))
        .toString();
  }
}

class ActionForbiddenErrorDetailsInnerBuilder
    implements
        Builder<ActionForbiddenErrorDetailsInner,
            ActionForbiddenErrorDetailsInnerBuilder> {
  _$ActionForbiddenErrorDetailsInner? _$v;

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

  ActionForbiddenErrorDetailsInnerBuilder() {
    ActionForbiddenErrorDetailsInner._defaults(this);
  }

  ActionForbiddenErrorDetailsInnerBuilder get _$this {
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
  void replace(ActionForbiddenErrorDetailsInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ActionForbiddenErrorDetailsInner;
  }

  @override
  void update(void Function(ActionForbiddenErrorDetailsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActionForbiddenErrorDetailsInner build() => _build();

  _$ActionForbiddenErrorDetailsInner _build() {
    final _$result = _$v ??
        new _$ActionForbiddenErrorDetailsInner._(
          issue: BuiltValueNullFieldError.checkNotNull(
              issue, r'ActionForbiddenErrorDetailsInner', 'issue'),
          field: field,
          value: value,
          location: location,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
