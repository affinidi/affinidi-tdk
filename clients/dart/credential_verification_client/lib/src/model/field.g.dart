// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FieldPredicateEnum _$fieldPredicateEnum_required_ =
    const FieldPredicateEnum._('required_');
const FieldPredicateEnum _$fieldPredicateEnum_preferred =
    const FieldPredicateEnum._('preferred');

FieldPredicateEnum _$fieldPredicateEnumValueOf(String name) {
  switch (name) {
    case 'required_':
      return _$fieldPredicateEnum_required_;
    case 'preferred':
      return _$fieldPredicateEnum_preferred;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<FieldPredicateEnum> _$fieldPredicateEnumValues =
    new BuiltSet<FieldPredicateEnum>(const <FieldPredicateEnum>[
  _$fieldPredicateEnum_required_,
  _$fieldPredicateEnum_preferred,
]);

Serializer<FieldPredicateEnum> _$fieldPredicateEnumSerializer =
    new _$FieldPredicateEnumSerializer();

class _$FieldPredicateEnumSerializer
    implements PrimitiveSerializer<FieldPredicateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'required_': 'required',
    'preferred': 'preferred',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'required': 'required_',
    'preferred': 'preferred',
  };

  @override
  final Iterable<Type> types = const <Type>[FieldPredicateEnum];
  @override
  final String wireName = 'FieldPredicateEnum';

  @override
  Object serialize(Serializers serializers, FieldPredicateEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FieldPredicateEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FieldPredicateEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Field extends Field {
  @override
  final String? id;
  @override
  final BuiltList<String>? path;
  @override
  final String? purpose;
  @override
  final Filter? filter;
  @override
  final FieldPredicateEnum? predicate;

  factory _$Field([void Function(FieldBuilder)? updates]) =>
      (new FieldBuilder()..update(updates))._build();

  _$Field._({this.id, this.path, this.purpose, this.filter, this.predicate})
      : super._();

  @override
  Field rebuild(void Function(FieldBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FieldBuilder toBuilder() => new FieldBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Field &&
        id == other.id &&
        path == other.path &&
        purpose == other.purpose &&
        filter == other.filter &&
        predicate == other.predicate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, purpose.hashCode);
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jc(_$hash, predicate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Field')
          ..add('id', id)
          ..add('path', path)
          ..add('purpose', purpose)
          ..add('filter', filter)
          ..add('predicate', predicate))
        .toString();
  }
}

class FieldBuilder implements Builder<Field, FieldBuilder> {
  _$Field? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ListBuilder<String>? _path;
  ListBuilder<String> get path => _$this._path ??= new ListBuilder<String>();
  set path(ListBuilder<String>? path) => _$this._path = path;

  String? _purpose;
  String? get purpose => _$this._purpose;
  set purpose(String? purpose) => _$this._purpose = purpose;

  FilterBuilder? _filter;
  FilterBuilder get filter => _$this._filter ??= new FilterBuilder();
  set filter(FilterBuilder? filter) => _$this._filter = filter;

  FieldPredicateEnum? _predicate;
  FieldPredicateEnum? get predicate => _$this._predicate;
  set predicate(FieldPredicateEnum? predicate) => _$this._predicate = predicate;

  FieldBuilder() {
    Field._defaults(this);
  }

  FieldBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _path = $v.path?.toBuilder();
      _purpose = $v.purpose;
      _filter = $v.filter?.toBuilder();
      _predicate = $v.predicate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Field other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Field;
  }

  @override
  void update(void Function(FieldBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Field build() => _build();

  _$Field _build() {
    _$Field _$result;
    try {
      _$result = _$v ??
          new _$Field._(
            id: id,
            path: _path?.build(),
            purpose: purpose,
            filter: _filter?.build(),
            predicate: predicate,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'path';
        _path?.build();

        _$failedField = 'filter';
        _filter?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Field', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
