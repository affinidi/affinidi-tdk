// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_const.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FilterConst extends FilterConst {
  @override
  final OneOf oneOf;

  factory _$FilterConst([void Function(FilterConstBuilder)? updates]) =>
      (new FilterConstBuilder()..update(updates))._build();

  _$FilterConst._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(oneOf, r'FilterConst', 'oneOf');
  }

  @override
  FilterConst rebuild(void Function(FilterConstBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilterConstBuilder toBuilder() => new FilterConstBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilterConst && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FilterConst')..add('oneOf', oneOf))
        .toString();
  }
}

class FilterConstBuilder implements Builder<FilterConst, FilterConstBuilder> {
  _$FilterConst? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  FilterConstBuilder() {
    FilterConst._defaults(this);
  }

  FilterConstBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilterConst other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FilterConst;
  }

  @override
  void update(void Function(FilterConstBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilterConst build() => _build();

  _$FilterConst _build() {
    final _$result = _$v ??
        new _$FilterConst._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'FilterConst', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
