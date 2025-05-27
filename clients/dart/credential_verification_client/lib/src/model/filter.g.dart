// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Filter extends Filter {
  @override
  final FilterConst? const_;
  @override
  final BuiltList<FilterConst>? enum_;
  @override
  final FilterConst? exclusiveMinimum;
  @override
  final FilterConst? exclusiveMaximum;
  @override
  final String? format;
  @override
  final String? formatMaximum;
  @override
  final String? formatMinimum;
  @override
  final String? formatExclusiveMaximum;
  @override
  final String? formatExclusiveMinimum;
  @override
  final int? minLength;
  @override
  final int? maxLength;
  @override
  final FilterConst? minimum;
  @override
  final FilterConst? maximum;
  @override
  final JsonObject? not;
  @override
  final String? pattern;
  @override
  final Filter? contains;
  @override
  final FilterItems? items;
  @override
  final String? type;

  factory _$Filter([void Function(FilterBuilder)? updates]) =>
      (FilterBuilder()..update(updates))._build();

  _$Filter._(
      {this.const_,
      this.enum_,
      this.exclusiveMinimum,
      this.exclusiveMaximum,
      this.format,
      this.formatMaximum,
      this.formatMinimum,
      this.formatExclusiveMaximum,
      this.formatExclusiveMinimum,
      this.minLength,
      this.maxLength,
      this.minimum,
      this.maximum,
      this.not,
      this.pattern,
      this.contains,
      this.items,
      this.type})
      : super._();
  @override
  Filter rebuild(void Function(FilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilterBuilder toBuilder() => FilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Filter &&
        const_ == other.const_ &&
        enum_ == other.enum_ &&
        exclusiveMinimum == other.exclusiveMinimum &&
        exclusiveMaximum == other.exclusiveMaximum &&
        format == other.format &&
        formatMaximum == other.formatMaximum &&
        formatMinimum == other.formatMinimum &&
        formatExclusiveMaximum == other.formatExclusiveMaximum &&
        formatExclusiveMinimum == other.formatExclusiveMinimum &&
        minLength == other.minLength &&
        maxLength == other.maxLength &&
        minimum == other.minimum &&
        maximum == other.maximum &&
        not == other.not &&
        pattern == other.pattern &&
        contains == other.contains &&
        items == other.items &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, const_.hashCode);
    _$hash = $jc(_$hash, enum_.hashCode);
    _$hash = $jc(_$hash, exclusiveMinimum.hashCode);
    _$hash = $jc(_$hash, exclusiveMaximum.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, formatMaximum.hashCode);
    _$hash = $jc(_$hash, formatMinimum.hashCode);
    _$hash = $jc(_$hash, formatExclusiveMaximum.hashCode);
    _$hash = $jc(_$hash, formatExclusiveMinimum.hashCode);
    _$hash = $jc(_$hash, minLength.hashCode);
    _$hash = $jc(_$hash, maxLength.hashCode);
    _$hash = $jc(_$hash, minimum.hashCode);
    _$hash = $jc(_$hash, maximum.hashCode);
    _$hash = $jc(_$hash, not.hashCode);
    _$hash = $jc(_$hash, pattern.hashCode);
    _$hash = $jc(_$hash, contains.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Filter')
          ..add('const_', const_)
          ..add('enum_', enum_)
          ..add('exclusiveMinimum', exclusiveMinimum)
          ..add('exclusiveMaximum', exclusiveMaximum)
          ..add('format', format)
          ..add('formatMaximum', formatMaximum)
          ..add('formatMinimum', formatMinimum)
          ..add('formatExclusiveMaximum', formatExclusiveMaximum)
          ..add('formatExclusiveMinimum', formatExclusiveMinimum)
          ..add('minLength', minLength)
          ..add('maxLength', maxLength)
          ..add('minimum', minimum)
          ..add('maximum', maximum)
          ..add('not', not)
          ..add('pattern', pattern)
          ..add('contains', contains)
          ..add('items', items)
          ..add('type', type))
        .toString();
  }
}

class FilterBuilder implements Builder<Filter, FilterBuilder> {
  _$Filter? _$v;

  FilterConstBuilder? _const_;
  FilterConstBuilder get const_ => _$this._const_ ??= FilterConstBuilder();
  set const_(FilterConstBuilder? const_) => _$this._const_ = const_;

  ListBuilder<FilterConst>? _enum_;
  ListBuilder<FilterConst> get enum_ =>
      _$this._enum_ ??= ListBuilder<FilterConst>();
  set enum_(ListBuilder<FilterConst>? enum_) => _$this._enum_ = enum_;

  FilterConstBuilder? _exclusiveMinimum;
  FilterConstBuilder get exclusiveMinimum =>
      _$this._exclusiveMinimum ??= FilterConstBuilder();
  set exclusiveMinimum(FilterConstBuilder? exclusiveMinimum) =>
      _$this._exclusiveMinimum = exclusiveMinimum;

  FilterConstBuilder? _exclusiveMaximum;
  FilterConstBuilder get exclusiveMaximum =>
      _$this._exclusiveMaximum ??= FilterConstBuilder();
  set exclusiveMaximum(FilterConstBuilder? exclusiveMaximum) =>
      _$this._exclusiveMaximum = exclusiveMaximum;

  String? _format;
  String? get format => _$this._format;
  set format(String? format) => _$this._format = format;

  String? _formatMaximum;
  String? get formatMaximum => _$this._formatMaximum;
  set formatMaximum(String? formatMaximum) =>
      _$this._formatMaximum = formatMaximum;

  String? _formatMinimum;
  String? get formatMinimum => _$this._formatMinimum;
  set formatMinimum(String? formatMinimum) =>
      _$this._formatMinimum = formatMinimum;

  String? _formatExclusiveMaximum;
  String? get formatExclusiveMaximum => _$this._formatExclusiveMaximum;
  set formatExclusiveMaximum(String? formatExclusiveMaximum) =>
      _$this._formatExclusiveMaximum = formatExclusiveMaximum;

  String? _formatExclusiveMinimum;
  String? get formatExclusiveMinimum => _$this._formatExclusiveMinimum;
  set formatExclusiveMinimum(String? formatExclusiveMinimum) =>
      _$this._formatExclusiveMinimum = formatExclusiveMinimum;

  int? _minLength;
  int? get minLength => _$this._minLength;
  set minLength(int? minLength) => _$this._minLength = minLength;

  int? _maxLength;
  int? get maxLength => _$this._maxLength;
  set maxLength(int? maxLength) => _$this._maxLength = maxLength;

  FilterConstBuilder? _minimum;
  FilterConstBuilder get minimum => _$this._minimum ??= FilterConstBuilder();
  set minimum(FilterConstBuilder? minimum) => _$this._minimum = minimum;

  FilterConstBuilder? _maximum;
  FilterConstBuilder get maximum => _$this._maximum ??= FilterConstBuilder();
  set maximum(FilterConstBuilder? maximum) => _$this._maximum = maximum;

  JsonObject? _not;
  JsonObject? get not => _$this._not;
  set not(JsonObject? not) => _$this._not = not;

  String? _pattern;
  String? get pattern => _$this._pattern;
  set pattern(String? pattern) => _$this._pattern = pattern;

  FilterBuilder? _contains;
  FilterBuilder get contains => _$this._contains ??= FilterBuilder();
  set contains(FilterBuilder? contains) => _$this._contains = contains;

  FilterItemsBuilder? _items;
  FilterItemsBuilder get items => _$this._items ??= FilterItemsBuilder();
  set items(FilterItemsBuilder? items) => _$this._items = items;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  FilterBuilder() {
    Filter._defaults(this);
  }

  FilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _const_ = $v.const_?.toBuilder();
      _enum_ = $v.enum_?.toBuilder();
      _exclusiveMinimum = $v.exclusiveMinimum?.toBuilder();
      _exclusiveMaximum = $v.exclusiveMaximum?.toBuilder();
      _format = $v.format;
      _formatMaximum = $v.formatMaximum;
      _formatMinimum = $v.formatMinimum;
      _formatExclusiveMaximum = $v.formatExclusiveMaximum;
      _formatExclusiveMinimum = $v.formatExclusiveMinimum;
      _minLength = $v.minLength;
      _maxLength = $v.maxLength;
      _minimum = $v.minimum?.toBuilder();
      _maximum = $v.maximum?.toBuilder();
      _not = $v.not;
      _pattern = $v.pattern;
      _contains = $v.contains?.toBuilder();
      _items = $v.items?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Filter other) {
    _$v = other as _$Filter;
  }

  @override
  void update(void Function(FilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Filter build() => _build();

  _$Filter _build() {
    _$Filter _$result;
    try {
      _$result = _$v ??
          _$Filter._(
            const_: _const_?.build(),
            enum_: _enum_?.build(),
            exclusiveMinimum: _exclusiveMinimum?.build(),
            exclusiveMaximum: _exclusiveMaximum?.build(),
            format: format,
            formatMaximum: formatMaximum,
            formatMinimum: formatMinimum,
            formatExclusiveMaximum: formatExclusiveMaximum,
            formatExclusiveMinimum: formatExclusiveMinimum,
            minLength: minLength,
            maxLength: maxLength,
            minimum: _minimum?.build(),
            maximum: _maximum?.build(),
            not: not,
            pattern: pattern,
            contains: _contains?.build(),
            items: _items?.build(),
            type: type,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'const_';
        _const_?.build();
        _$failedField = 'enum_';
        _enum_?.build();
        _$failedField = 'exclusiveMinimum';
        _exclusiveMinimum?.build();
        _$failedField = 'exclusiveMaximum';
        _exclusiveMaximum?.build();

        _$failedField = 'minimum';
        _minimum?.build();
        _$failedField = 'maximum';
        _maximum?.build();

        _$failedField = 'contains';
        _contains?.build();
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Filter', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
