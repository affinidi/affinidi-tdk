// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_items.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FilterItems extends FilterItems {
  @override
  final OneOf oneOf;

  factory _$FilterItems([void Function(FilterItemsBuilder)? updates]) =>
      (new FilterItemsBuilder()..update(updates))._build();

  _$FilterItems._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(oneOf, r'FilterItems', 'oneOf');
  }

  @override
  FilterItems rebuild(void Function(FilterItemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilterItemsBuilder toBuilder() => new FilterItemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilterItems && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'FilterItems')..add('oneOf', oneOf))
        .toString();
  }
}

class FilterItemsBuilder implements Builder<FilterItems, FilterItemsBuilder> {
  _$FilterItems? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  FilterItemsBuilder() {
    FilterItems._defaults(this);
  }

  FilterItemsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilterItems other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FilterItems;
  }

  @override
  void update(void Function(FilterItemsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilterItems build() => _build();

  _$FilterItems _build() {
    final _$result = _$v ??
        new _$FilterItems._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'FilterItems', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
