// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'constraints.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ConstraintsLimitDisclosureEnum
    _$constraintsLimitDisclosureEnum_required_ =
    const ConstraintsLimitDisclosureEnum._('required_');
const ConstraintsLimitDisclosureEnum
    _$constraintsLimitDisclosureEnum_preferred =
    const ConstraintsLimitDisclosureEnum._('preferred');

ConstraintsLimitDisclosureEnum _$constraintsLimitDisclosureEnumValueOf(
    String name) {
  switch (name) {
    case 'required_':
      return _$constraintsLimitDisclosureEnum_required_;
    case 'preferred':
      return _$constraintsLimitDisclosureEnum_preferred;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ConstraintsLimitDisclosureEnum>
    _$constraintsLimitDisclosureEnumValues = new BuiltSet<
        ConstraintsLimitDisclosureEnum>(const <ConstraintsLimitDisclosureEnum>[
  _$constraintsLimitDisclosureEnum_required_,
  _$constraintsLimitDisclosureEnum_preferred,
]);

const ConstraintsSubjectIsIssuerEnum
    _$constraintsSubjectIsIssuerEnum_required_ =
    const ConstraintsSubjectIsIssuerEnum._('required_');
const ConstraintsSubjectIsIssuerEnum
    _$constraintsSubjectIsIssuerEnum_preferred =
    const ConstraintsSubjectIsIssuerEnum._('preferred');

ConstraintsSubjectIsIssuerEnum _$constraintsSubjectIsIssuerEnumValueOf(
    String name) {
  switch (name) {
    case 'required_':
      return _$constraintsSubjectIsIssuerEnum_required_;
    case 'preferred':
      return _$constraintsSubjectIsIssuerEnum_preferred;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ConstraintsSubjectIsIssuerEnum>
    _$constraintsSubjectIsIssuerEnumValues = new BuiltSet<
        ConstraintsSubjectIsIssuerEnum>(const <ConstraintsSubjectIsIssuerEnum>[
  _$constraintsSubjectIsIssuerEnum_required_,
  _$constraintsSubjectIsIssuerEnum_preferred,
]);

Serializer<ConstraintsLimitDisclosureEnum>
    _$constraintsLimitDisclosureEnumSerializer =
    new _$ConstraintsLimitDisclosureEnumSerializer();
Serializer<ConstraintsSubjectIsIssuerEnum>
    _$constraintsSubjectIsIssuerEnumSerializer =
    new _$ConstraintsSubjectIsIssuerEnumSerializer();

class _$ConstraintsLimitDisclosureEnumSerializer
    implements PrimitiveSerializer<ConstraintsLimitDisclosureEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'required_': 'required',
    'preferred': 'preferred',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'required': 'required_',
    'preferred': 'preferred',
  };

  @override
  final Iterable<Type> types = const <Type>[ConstraintsLimitDisclosureEnum];
  @override
  final String wireName = 'ConstraintsLimitDisclosureEnum';

  @override
  Object serialize(
          Serializers serializers, ConstraintsLimitDisclosureEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ConstraintsLimitDisclosureEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ConstraintsLimitDisclosureEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ConstraintsSubjectIsIssuerEnumSerializer
    implements PrimitiveSerializer<ConstraintsSubjectIsIssuerEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'required_': 'required',
    'preferred': 'preferred',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'required': 'required_',
    'preferred': 'preferred',
  };

  @override
  final Iterable<Type> types = const <Type>[ConstraintsSubjectIsIssuerEnum];
  @override
  final String wireName = 'ConstraintsSubjectIsIssuerEnum';

  @override
  Object serialize(
          Serializers serializers, ConstraintsSubjectIsIssuerEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ConstraintsSubjectIsIssuerEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ConstraintsSubjectIsIssuerEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Constraints extends Constraints {
  @override
  final ConstraintsLimitDisclosureEnum? limitDisclosure;
  @override
  final ConstraintsStatuses? statuses;
  @override
  final BuiltList<Field>? fields;
  @override
  final ConstraintsSubjectIsIssuerEnum? subjectIsIssuer;
  @override
  final BuiltList<HolderSubject>? isHolder;
  @override
  final BuiltList<HolderSubject>? sameSubject;

  factory _$Constraints([void Function(ConstraintsBuilder)? updates]) =>
      (new ConstraintsBuilder()..update(updates))._build();

  _$Constraints._(
      {this.limitDisclosure,
      this.statuses,
      this.fields,
      this.subjectIsIssuer,
      this.isHolder,
      this.sameSubject})
      : super._();

  @override
  Constraints rebuild(void Function(ConstraintsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConstraintsBuilder toBuilder() => new ConstraintsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Constraints &&
        limitDisclosure == other.limitDisclosure &&
        statuses == other.statuses &&
        fields == other.fields &&
        subjectIsIssuer == other.subjectIsIssuer &&
        isHolder == other.isHolder &&
        sameSubject == other.sameSubject;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, limitDisclosure.hashCode);
    _$hash = $jc(_$hash, statuses.hashCode);
    _$hash = $jc(_$hash, fields.hashCode);
    _$hash = $jc(_$hash, subjectIsIssuer.hashCode);
    _$hash = $jc(_$hash, isHolder.hashCode);
    _$hash = $jc(_$hash, sameSubject.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Constraints')
          ..add('limitDisclosure', limitDisclosure)
          ..add('statuses', statuses)
          ..add('fields', fields)
          ..add('subjectIsIssuer', subjectIsIssuer)
          ..add('isHolder', isHolder)
          ..add('sameSubject', sameSubject))
        .toString();
  }
}

class ConstraintsBuilder implements Builder<Constraints, ConstraintsBuilder> {
  _$Constraints? _$v;

  ConstraintsLimitDisclosureEnum? _limitDisclosure;
  ConstraintsLimitDisclosureEnum? get limitDisclosure =>
      _$this._limitDisclosure;
  set limitDisclosure(ConstraintsLimitDisclosureEnum? limitDisclosure) =>
      _$this._limitDisclosure = limitDisclosure;

  ConstraintsStatusesBuilder? _statuses;
  ConstraintsStatusesBuilder get statuses =>
      _$this._statuses ??= new ConstraintsStatusesBuilder();
  set statuses(ConstraintsStatusesBuilder? statuses) =>
      _$this._statuses = statuses;

  ListBuilder<Field>? _fields;
  ListBuilder<Field> get fields => _$this._fields ??= new ListBuilder<Field>();
  set fields(ListBuilder<Field>? fields) => _$this._fields = fields;

  ConstraintsSubjectIsIssuerEnum? _subjectIsIssuer;
  ConstraintsSubjectIsIssuerEnum? get subjectIsIssuer =>
      _$this._subjectIsIssuer;
  set subjectIsIssuer(ConstraintsSubjectIsIssuerEnum? subjectIsIssuer) =>
      _$this._subjectIsIssuer = subjectIsIssuer;

  ListBuilder<HolderSubject>? _isHolder;
  ListBuilder<HolderSubject> get isHolder =>
      _$this._isHolder ??= new ListBuilder<HolderSubject>();
  set isHolder(ListBuilder<HolderSubject>? isHolder) =>
      _$this._isHolder = isHolder;

  ListBuilder<HolderSubject>? _sameSubject;
  ListBuilder<HolderSubject> get sameSubject =>
      _$this._sameSubject ??= new ListBuilder<HolderSubject>();
  set sameSubject(ListBuilder<HolderSubject>? sameSubject) =>
      _$this._sameSubject = sameSubject;

  ConstraintsBuilder() {
    Constraints._defaults(this);
  }

  ConstraintsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _limitDisclosure = $v.limitDisclosure;
      _statuses = $v.statuses?.toBuilder();
      _fields = $v.fields?.toBuilder();
      _subjectIsIssuer = $v.subjectIsIssuer;
      _isHolder = $v.isHolder?.toBuilder();
      _sameSubject = $v.sameSubject?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Constraints other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Constraints;
  }

  @override
  void update(void Function(ConstraintsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Constraints build() => _build();

  _$Constraints _build() {
    _$Constraints _$result;
    try {
      _$result = _$v ??
          new _$Constraints._(
            limitDisclosure: limitDisclosure,
            statuses: _statuses?.build(),
            fields: _fields?.build(),
            subjectIsIssuer: subjectIsIssuer,
            isHolder: _isHolder?.build(),
            sameSubject: _sameSubject?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'statuses';
        _statuses?.build();
        _$failedField = 'fields';
        _fields?.build();

        _$failedField = 'isHolder';
        _isHolder?.build();
        _$failedField = 'sameSubject';
        _sameSubject?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Constraints', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
