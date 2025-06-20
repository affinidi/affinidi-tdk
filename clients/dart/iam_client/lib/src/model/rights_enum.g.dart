// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rights_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RightsEnum _$vfsRead = const RightsEnum._('vfsRead');
const RightsEnum _$vfsWrite = const RightsEnum._('vfsWrite');

RightsEnum _$valueOf(String name) {
  switch (name) {
    case 'vfsRead':
      return _$vfsRead;
    case 'vfsWrite':
      return _$vfsWrite;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RightsEnum> _$values = BuiltSet<RightsEnum>(const <RightsEnum>[
  _$vfsRead,
  _$vfsWrite,
]);

class _$RightsEnumMeta {
  const _$RightsEnumMeta();
  RightsEnum get vfsRead => _$vfsRead;
  RightsEnum get vfsWrite => _$vfsWrite;
  RightsEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<RightsEnum> get values => _$values;
}

abstract class _$RightsEnumMixin {
  // ignore: non_constant_identifier_names
  _$RightsEnumMeta get RightsEnum => const _$RightsEnumMeta();
}

Serializer<RightsEnum> _$rightsEnumSerializer = _$RightsEnumSerializer();

class _$RightsEnumSerializer implements PrimitiveSerializer<RightsEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'vfsRead': 'vfs-read',
    'vfsWrite': 'vfs-write',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'vfs-read': 'vfsRead',
    'vfs-write': 'vfsWrite',
  };

  @override
  final Iterable<Type> types = const <Type>[RightsEnum];
  @override
  final String wireName = 'RightsEnum';

  @override
  Object serialize(Serializers serializers, RightsEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RightsEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RightsEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
