// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grant_access_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UpdateAccessInputRightsEnum _$updateAccessInputRightsEnum_read =
    const UpdateAccessInputRightsEnum._('read');
const UpdateAccessInputRightsEnum _$updateAccessInputRightsEnum_write =
    const UpdateAccessInputRightsEnum._('write');

UpdateAccessInputRightsEnum _$updateAccessInputRightsEnumValueOf(String name) {
  switch (name) {
    case 'read':
      return _$updateAccessInputRightsEnum_read;
    case 'write':
      return _$updateAccessInputRightsEnum_write;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<UpdateAccessInputRightsEnum>
    _$updateAccessInputRightsEnumValues = new BuiltSet<
        UpdateAccessInputRightsEnum>(const <UpdateAccessInputRightsEnum>[
  _$updateAccessInputRightsEnum_read,
  _$updateAccessInputRightsEnum_write,
]);

Serializer<UpdateAccessInputRightsEnum>
    _$updateAccessInputRightsEnumSerializer =
    new _$UpdateAccessInputRightsEnumSerializer();

class _$UpdateAccessInputRightsEnumSerializer
    implements PrimitiveSerializer<UpdateAccessInputRightsEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'read': 'vfs-read',
    'write': 'vfs-write',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'vfs-read': 'read',
    'vfs-write': 'write',
  };

  @override
  final Iterable<Type> types = const <Type>[UpdateAccessInputRightsEnum];
  @override
  final String wireName = 'UpdateAccessInputRightsEnum';

  @override
  Object serialize(Serializers serializers, UpdateAccessInputRightsEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UpdateAccessInputRightsEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UpdateAccessInputRightsEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GrantAccessInput extends GrantAccessInput {
  @override
  final String granteeDid;
  @override
  final BuiltList<UpdateAccessInputRightsEnum> rights;

  factory _$GrantAccessInput(
          [void Function(GrantAccessInputBuilder)? updates]) =>
      (new GrantAccessInputBuilder()..update(updates))._build();

  _$GrantAccessInput._({required this.granteeDid, required this.rights})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        granteeDid, r'GrantAccessInput', 'granteeDid');
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
        granteeDid == other.granteeDid &&
        rights == other.rights;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, granteeDid.hashCode);
    _$hash = $jc(_$hash, rights.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GrantAccessInput')
          ..add('granteeDid', granteeDid)
          ..add('rights', rights))
        .toString();
  }
}

class GrantAccessInputBuilder
    implements Builder<GrantAccessInput, GrantAccessInputBuilder> {
  _$GrantAccessInput? _$v;

  String? _granteeDid;
  String? get granteeDid => _$this._granteeDid;
  set granteeDid(String? granteeDid) => _$this._granteeDid = granteeDid;

  ListBuilder<UpdateAccessInputRightsEnum>? _rights;
  ListBuilder<UpdateAccessInputRightsEnum> get rights =>
      _$this._rights ??= new ListBuilder<UpdateAccessInputRightsEnum>();
  set rights(ListBuilder<UpdateAccessInputRightsEnum>? rights) =>
      _$this._rights = rights;

  GrantAccessInputBuilder() {
    GrantAccessInput._defaults(this);
  }

  GrantAccessInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _granteeDid = $v.granteeDid;
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
            granteeDid: BuiltValueNullFieldError.checkNotNull(
                granteeDid, r'GrantAccessInput', 'granteeDid'),
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
