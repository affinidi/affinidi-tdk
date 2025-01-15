// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pd_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PdStatusDirectiveEnum _$pdStatusDirectiveEnum_required_ =
    const PdStatusDirectiveEnum._('required_');
const PdStatusDirectiveEnum _$pdStatusDirectiveEnum_allowed =
    const PdStatusDirectiveEnum._('allowed');
const PdStatusDirectiveEnum _$pdStatusDirectiveEnum_disallowed =
    const PdStatusDirectiveEnum._('disallowed');

PdStatusDirectiveEnum _$pdStatusDirectiveEnumValueOf(String name) {
  switch (name) {
    case 'required_':
      return _$pdStatusDirectiveEnum_required_;
    case 'allowed':
      return _$pdStatusDirectiveEnum_allowed;
    case 'disallowed':
      return _$pdStatusDirectiveEnum_disallowed;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PdStatusDirectiveEnum> _$pdStatusDirectiveEnumValues =
    new BuiltSet<PdStatusDirectiveEnum>(const <PdStatusDirectiveEnum>[
  _$pdStatusDirectiveEnum_required_,
  _$pdStatusDirectiveEnum_allowed,
  _$pdStatusDirectiveEnum_disallowed,
]);

Serializer<PdStatusDirectiveEnum> _$pdStatusDirectiveEnumSerializer =
    new _$PdStatusDirectiveEnumSerializer();

class _$PdStatusDirectiveEnumSerializer
    implements PrimitiveSerializer<PdStatusDirectiveEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'required_': 'required',
    'allowed': 'allowed',
    'disallowed': 'disallowed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'required': 'required_',
    'allowed': 'allowed',
    'disallowed': 'disallowed',
  };

  @override
  final Iterable<Type> types = const <Type>[PdStatusDirectiveEnum];
  @override
  final String wireName = 'PdStatusDirectiveEnum';

  @override
  Object serialize(Serializers serializers, PdStatusDirectiveEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PdStatusDirectiveEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PdStatusDirectiveEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PdStatus extends PdStatus {
  @override
  final PdStatusDirectiveEnum? directive;

  factory _$PdStatus([void Function(PdStatusBuilder)? updates]) =>
      (new PdStatusBuilder()..update(updates))._build();

  _$PdStatus._({this.directive}) : super._();

  @override
  PdStatus rebuild(void Function(PdStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PdStatusBuilder toBuilder() => new PdStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PdStatus && directive == other.directive;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, directive.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PdStatus')
          ..add('directive', directive))
        .toString();
  }
}

class PdStatusBuilder implements Builder<PdStatus, PdStatusBuilder> {
  _$PdStatus? _$v;

  PdStatusDirectiveEnum? _directive;
  PdStatusDirectiveEnum? get directive => _$this._directive;
  set directive(PdStatusDirectiveEnum? directive) =>
      _$this._directive = directive;

  PdStatusBuilder() {
    PdStatus._defaults(this);
  }

  PdStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _directive = $v.directive;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PdStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PdStatus;
  }

  @override
  void update(void Function(PdStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PdStatus build() => _build();

  _$PdStatus _build() {
    final _$result = _$v ??
        new _$PdStatus._(
          directive: directive,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
