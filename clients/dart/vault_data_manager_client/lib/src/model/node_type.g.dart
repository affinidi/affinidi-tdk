// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NodeType _$VC_ROOT = const NodeType._('VC_ROOT');
const NodeType _$VC = const NodeType._('VC');
const NodeType _$FILE = const NodeType._('FILE');
const NodeType _$FOLDER = const NodeType._('FOLDER');
const NodeType _$PROFILE = const NodeType._('PROFILE');
const NodeType _$ROOT_ELEMENT = const NodeType._('ROOT_ELEMENT');
const NodeType _$TRASH_BIN = const NodeType._('TRASH_BIN');

NodeType _$valueOf(String name) {
  switch (name) {
    case 'VC_ROOT':
      return _$VC_ROOT;
    case 'VC':
      return _$VC;
    case 'FILE':
      return _$FILE;
    case 'FOLDER':
      return _$FOLDER;
    case 'PROFILE':
      return _$PROFILE;
    case 'ROOT_ELEMENT':
      return _$ROOT_ELEMENT;
    case 'TRASH_BIN':
      return _$TRASH_BIN;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<NodeType> _$values = new BuiltSet<NodeType>(const <NodeType>[
  _$VC_ROOT,
  _$VC,
  _$FILE,
  _$FOLDER,
  _$PROFILE,
  _$ROOT_ELEMENT,
  _$TRASH_BIN,
]);

class _$NodeTypeMeta {
  const _$NodeTypeMeta();
  NodeType get VC_ROOT => _$VC_ROOT;
  NodeType get VC => _$VC;
  NodeType get FILE => _$FILE;
  NodeType get FOLDER => _$FOLDER;
  NodeType get PROFILE => _$PROFILE;
  NodeType get ROOT_ELEMENT => _$ROOT_ELEMENT;
  NodeType get TRASH_BIN => _$TRASH_BIN;
  NodeType valueOf(String name) => _$valueOf(name);
  BuiltSet<NodeType> get values => _$values;
}

abstract class _$NodeTypeMixin {
  // ignore: non_constant_identifier_names
  _$NodeTypeMeta get NodeType => const _$NodeTypeMeta();
}

Serializer<NodeType> _$nodeTypeSerializer = new _$NodeTypeSerializer();

class _$NodeTypeSerializer implements PrimitiveSerializer<NodeType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'VC_ROOT': 'VC_ROOT',
    'VC': 'VC',
    'FILE': 'FILE',
    'FOLDER': 'FOLDER',
    'PROFILE': 'PROFILE',
    'ROOT_ELEMENT': 'ROOT_ELEMENT',
    'TRASH_BIN': 'TRASH_BIN',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'VC_ROOT': 'VC_ROOT',
    'VC': 'VC',
    'FILE': 'FILE',
    'FOLDER': 'FOLDER',
    'PROFILE': 'PROFILE',
    'ROOT_ELEMENT': 'ROOT_ELEMENT',
    'TRASH_BIN': 'TRASH_BIN',
  };

  @override
  final Iterable<Type> types = const <Type>[NodeType];
  @override
  final String wireName = 'NodeType';

  @override
  Object serialize(Serializers serializers, NodeType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NodeType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NodeType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
