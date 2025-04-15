// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vfs_access_right.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const VFSAccessRightRightsEnum _$vFSAccessRightRightsEnum_read =
    const VFSAccessRightRightsEnum._('read');
const VFSAccessRightRightsEnum _$vFSAccessRightRightsEnum_write =
    const VFSAccessRightRightsEnum._('write');

VFSAccessRightRightsEnum _$vFSAccessRightRightsEnumValueOf(String name) {
  switch (name) {
    case 'read':
      return _$vFSAccessRightRightsEnum_read;
    case 'write':
      return _$vFSAccessRightRightsEnum_write;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<VFSAccessRightRightsEnum> _$vFSAccessRightRightsEnumValues =
    new BuiltSet<VFSAccessRightRightsEnum>(const <VFSAccessRightRightsEnum>[
  _$vFSAccessRightRightsEnum_read,
  _$vFSAccessRightRightsEnum_write,
]);

Serializer<VFSAccessRightRightsEnum> _$vFSAccessRightRightsEnumSerializer =
    new _$VFSAccessRightRightsEnumSerializer();

class _$VFSAccessRightRightsEnumSerializer
    implements PrimitiveSerializer<VFSAccessRightRightsEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'read': 'vfs-read',
    'write': 'vfs-write',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'vfs-read': 'read',
    'vfs-write': 'write',
  };

  @override
  final Iterable<Type> types = const <Type>[VFSAccessRightRightsEnum];
  @override
  final String wireName = 'VFSAccessRightRightsEnum';

  @override
  Object serialize(Serializers serializers, VFSAccessRightRightsEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  VFSAccessRightRightsEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      VFSAccessRightRightsEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$VFSAccessRight extends VFSAccessRight {
  @override
  final BuiltList<VFSAccessRightRightsEnum> rights;

  factory _$VFSAccessRight([void Function(VFSAccessRightBuilder)? updates]) =>
      (new VFSAccessRightBuilder()..update(updates))._build();

  _$VFSAccessRight._({required this.rights}) : super._() {
    BuiltValueNullFieldError.checkNotNull(rights, r'VFSAccessRight', 'rights');
  }

  @override
  VFSAccessRight rebuild(void Function(VFSAccessRightBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VFSAccessRightBuilder toBuilder() =>
      new VFSAccessRightBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VFSAccessRight && rights == other.rights;
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
    return (newBuiltValueToStringHelper(r'VFSAccessRight')
          ..add('rights', rights))
        .toString();
  }
}

class VFSAccessRightBuilder
    implements Builder<VFSAccessRight, VFSAccessRightBuilder> {
  _$VFSAccessRight? _$v;

  ListBuilder<VFSAccessRightRightsEnum>? _rights;
  ListBuilder<VFSAccessRightRightsEnum> get rights =>
      _$this._rights ??= new ListBuilder<VFSAccessRightRightsEnum>();
  set rights(ListBuilder<VFSAccessRightRightsEnum>? rights) =>
      _$this._rights = rights;

  VFSAccessRightBuilder() {
    VFSAccessRight._defaults(this);
  }

  VFSAccessRightBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rights = $v.rights.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VFSAccessRight other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VFSAccessRight;
  }

  @override
  void update(void Function(VFSAccessRightBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VFSAccessRight build() => _build();

  _$VFSAccessRight _build() {
    _$VFSAccessRight _$result;
    try {
      _$result = _$v ??
          new _$VFSAccessRight._(
            rights: rights.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rights';
        rights.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VFSAccessRight', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
