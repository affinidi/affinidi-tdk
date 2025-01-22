// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holder_subject.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const HolderSubjectDirectiveEnum _$holderSubjectDirectiveEnum_required_ =
    const HolderSubjectDirectiveEnum._('required_');
const HolderSubjectDirectiveEnum _$holderSubjectDirectiveEnum_preferred =
    const HolderSubjectDirectiveEnum._('preferred');

HolderSubjectDirectiveEnum _$holderSubjectDirectiveEnumValueOf(String name) {
  switch (name) {
    case 'required_':
      return _$holderSubjectDirectiveEnum_required_;
    case 'preferred':
      return _$holderSubjectDirectiveEnum_preferred;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<HolderSubjectDirectiveEnum> _$holderSubjectDirectiveEnumValues =
    new BuiltSet<HolderSubjectDirectiveEnum>(const <HolderSubjectDirectiveEnum>[
  _$holderSubjectDirectiveEnum_required_,
  _$holderSubjectDirectiveEnum_preferred,
]);

Serializer<HolderSubjectDirectiveEnum> _$holderSubjectDirectiveEnumSerializer =
    new _$HolderSubjectDirectiveEnumSerializer();

class _$HolderSubjectDirectiveEnumSerializer
    implements PrimitiveSerializer<HolderSubjectDirectiveEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'required_': 'required',
    'preferred': 'preferred',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'required': 'required_',
    'preferred': 'preferred',
  };

  @override
  final Iterable<Type> types = const <Type>[HolderSubjectDirectiveEnum];
  @override
  final String wireName = 'HolderSubjectDirectiveEnum';

  @override
  Object serialize(Serializers serializers, HolderSubjectDirectiveEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  HolderSubjectDirectiveEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      HolderSubjectDirectiveEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$HolderSubject extends HolderSubject {
  @override
  final BuiltList<String> fieldId;
  @override
  final HolderSubjectDirectiveEnum directive;

  factory _$HolderSubject([void Function(HolderSubjectBuilder)? updates]) =>
      (new HolderSubjectBuilder()..update(updates))._build();

  _$HolderSubject._({required this.fieldId, required this.directive})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(fieldId, r'HolderSubject', 'fieldId');
    BuiltValueNullFieldError.checkNotNull(
        directive, r'HolderSubject', 'directive');
  }

  @override
  HolderSubject rebuild(void Function(HolderSubjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HolderSubjectBuilder toBuilder() => new HolderSubjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HolderSubject &&
        fieldId == other.fieldId &&
        directive == other.directive;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fieldId.hashCode);
    _$hash = $jc(_$hash, directive.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HolderSubject')
          ..add('fieldId', fieldId)
          ..add('directive', directive))
        .toString();
  }
}

class HolderSubjectBuilder
    implements Builder<HolderSubject, HolderSubjectBuilder> {
  _$HolderSubject? _$v;

  ListBuilder<String>? _fieldId;
  ListBuilder<String> get fieldId =>
      _$this._fieldId ??= new ListBuilder<String>();
  set fieldId(ListBuilder<String>? fieldId) => _$this._fieldId = fieldId;

  HolderSubjectDirectiveEnum? _directive;
  HolderSubjectDirectiveEnum? get directive => _$this._directive;
  set directive(HolderSubjectDirectiveEnum? directive) =>
      _$this._directive = directive;

  HolderSubjectBuilder() {
    HolderSubject._defaults(this);
  }

  HolderSubjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fieldId = $v.fieldId.toBuilder();
      _directive = $v.directive;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HolderSubject other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HolderSubject;
  }

  @override
  void update(void Function(HolderSubjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HolderSubject build() => _build();

  _$HolderSubject _build() {
    _$HolderSubject _$result;
    try {
      _$result = _$v ??
          new _$HolderSubject._(
            fieldId: fieldId.build(),
            directive: BuiltValueNullFieldError.checkNotNull(
                directive, r'HolderSubject', 'directive'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fieldId';
        fieldId.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HolderSubject', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
