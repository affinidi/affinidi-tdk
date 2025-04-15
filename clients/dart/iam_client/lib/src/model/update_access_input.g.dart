// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_access_input.dart';

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

class _$UpdateAccessInput extends UpdateAccessInput {
  @override
  final BuiltList<UpdateAccessInputRightsEnum> rights;

  factory _$UpdateAccessInput(
          [void Function(UpdateAccessInputBuilder)? updates]) =>
      (new UpdateAccessInputBuilder()..update(updates))._build();

  _$UpdateAccessInput._({required this.rights}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        rights, r'UpdateAccessInput', 'rights');
  }

  @override
  UpdateAccessInput rebuild(void Function(UpdateAccessInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateAccessInputBuilder toBuilder() =>
      new UpdateAccessInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateAccessInput && rights == other.rights;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rights.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateAccessInput')
          ..add('rights', rights))
        .toString();
  }
}

class UpdateAccessInputBuilder
    implements Builder<UpdateAccessInput, UpdateAccessInputBuilder> {
  _$UpdateAccessInput? _$v;

  ListBuilder<UpdateAccessInputRightsEnum>? _rights;
  ListBuilder<UpdateAccessInputRightsEnum> get rights =>
      _$this._rights ??= new ListBuilder<UpdateAccessInputRightsEnum>();
  set rights(ListBuilder<UpdateAccessInputRightsEnum>? rights) =>
      _$this._rights = rights;

  UpdateAccessInputBuilder() {
    UpdateAccessInput._defaults(this);
  }

  UpdateAccessInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rights = $v.rights.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateAccessInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateAccessInput;
  }

  @override
  void update(void Function(UpdateAccessInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateAccessInput build() => _build();

  _$UpdateAccessInput _build() {
    _$UpdateAccessInput _$result;
    try {
      _$result = _$v ??
          new _$UpdateAccessInput._(
            rights: rights.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rights';
        rights.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateAccessInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
