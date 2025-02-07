// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grant_access_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GrantAccessInputRightsEnum _$grantAccessInputRightsEnum_READ =
    const GrantAccessInputRightsEnum._('READ');
const GrantAccessInputRightsEnum _$grantAccessInputRightsEnum_WRITE =
    const GrantAccessInputRightsEnum._('WRITE');

GrantAccessInputRightsEnum _$grantAccessInputRightsEnumValueOf(String name) {
  switch (name) {
    case 'READ':
      return _$grantAccessInputRightsEnum_READ;
    case 'WRITE':
      return _$grantAccessInputRightsEnum_WRITE;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GrantAccessInputRightsEnum> _$grantAccessInputRightsEnumValues =
    new BuiltSet<GrantAccessInputRightsEnum>(const <GrantAccessInputRightsEnum>[
  _$grantAccessInputRightsEnum_READ,
  _$grantAccessInputRightsEnum_WRITE,
]);

Serializer<GrantAccessInputRightsEnum> _$grantAccessInputRightsEnumSerializer =
    new _$GrantAccessInputRightsEnumSerializer();

class _$GrantAccessInputRightsEnumSerializer
    implements PrimitiveSerializer<GrantAccessInputRightsEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'READ': 'READ',
    'WRITE': 'WRITE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'READ': 'READ',
    'WRITE': 'WRITE',
  };

  @override
  final Iterable<Type> types = const <Type>[GrantAccessInputRightsEnum];
  @override
  final String wireName = 'GrantAccessInputRightsEnum';

  @override
  Object serialize(Serializers serializers, GrantAccessInputRightsEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GrantAccessInputRightsEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GrantAccessInputRightsEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GrantAccessInput extends GrantAccessInput {
  @override
  final String subjectDid;
  @override
  final BuiltList<GrantAccessInputRightsEnum> rights;

  factory _$GrantAccessInput(
          [void Function(GrantAccessInputBuilder)? updates]) =>
      (new GrantAccessInputBuilder()..update(updates))._build();

  _$GrantAccessInput._({required this.subjectDid, required this.rights})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        subjectDid, r'GrantAccessInput', 'subjectDid');
    BuiltValueNullFieldError.checkNotNull(
        rights, r'GrantAccessInput', 'rights');
  }

  @override
  GrantAccessInput rebuild(void Function(GrantAccessInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GrantAccessInputBuilder toBuilder() =>
      new GrantAccessInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GrantAccessInput &&
        subjectDid == other.subjectDid &&
        rights == other.rights;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, subjectDid.hashCode);
    _$hash = $jc(_$hash, rights.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GrantAccessInput')
          ..add('subjectDid', subjectDid)
          ..add('rights', rights))
        .toString();
  }
}

class GrantAccessInputBuilder
    implements Builder<GrantAccessInput, GrantAccessInputBuilder> {
  _$GrantAccessInput? _$v;

  String? _subjectDid;
  String? get subjectDid => _$this._subjectDid;
  set subjectDid(String? subjectDid) => _$this._subjectDid = subjectDid;

  ListBuilder<GrantAccessInputRightsEnum>? _rights;
  ListBuilder<GrantAccessInputRightsEnum> get rights =>
      _$this._rights ??= new ListBuilder<GrantAccessInputRightsEnum>();
  set rights(ListBuilder<GrantAccessInputRightsEnum>? rights) =>
      _$this._rights = rights;

  GrantAccessInputBuilder() {
    GrantAccessInput._defaults(this);
  }

  GrantAccessInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subjectDid = $v.subjectDid;
      _rights = $v.rights.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GrantAccessInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GrantAccessInput;
  }

  @override
  void update(void Function(GrantAccessInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GrantAccessInput build() => _build();

  _$GrantAccessInput _build() {
    _$GrantAccessInput _$result;
    try {
      _$result = _$v ??
          new _$GrantAccessInput._(
            subjectDid: BuiltValueNullFieldError.checkNotNull(
                subjectDid, r'GrantAccessInput', 'subjectDid'),
            rights: rights.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rights';
        rights.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GrantAccessInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
