// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NodeStatus _$NOT_SET = const NodeStatus._('NOT_SET');
const NodeStatus _$HIDDEN = const NodeStatus._('HIDDEN');
const NodeStatus _$DELETED = const NodeStatus._('DELETED');
const NodeStatus _$INITIALIZED = const NodeStatus._('INITIALIZED');
const NodeStatus _$CREATED = const NodeStatus._('CREATED');

NodeStatus _$valueOf(String name) {
  switch (name) {
    case 'NOT_SET':
      return _$NOT_SET;
    case 'HIDDEN':
      return _$HIDDEN;
    case 'DELETED':
      return _$DELETED;
    case 'INITIALIZED':
      return _$INITIALIZED;
    case 'CREATED':
      return _$CREATED;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NodeStatus> _$values = BuiltSet<NodeStatus>(const <NodeStatus>[
  _$NOT_SET,
  _$HIDDEN,
  _$DELETED,
  _$INITIALIZED,
  _$CREATED,
]);

class _$NodeStatusMeta {
  const _$NodeStatusMeta();
  NodeStatus get NOT_SET => _$NOT_SET;
  NodeStatus get HIDDEN => _$HIDDEN;
  NodeStatus get DELETED => _$DELETED;
  NodeStatus get INITIALIZED => _$INITIALIZED;
  NodeStatus get CREATED => _$CREATED;
  NodeStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<NodeStatus> get values => _$values;
}

abstract class _$NodeStatusMixin {
  // ignore: non_constant_identifier_names
  _$NodeStatusMeta get NodeStatus => const _$NodeStatusMeta();
}

Serializer<NodeStatus> _$nodeStatusSerializer = _$NodeStatusSerializer();

class _$NodeStatusSerializer implements PrimitiveSerializer<NodeStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'NOT_SET': 'NOT_SET',
    'HIDDEN': 'HIDDEN',
    'DELETED': 'DELETED',
    'INITIALIZED': 'INITIALIZED',
    'CREATED': 'CREATED',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'NOT_SET': 'NOT_SET',
    'HIDDEN': 'HIDDEN',
    'DELETED': 'DELETED',
    'INITIALIZED': 'INITIALIZED',
    'CREATED': 'CREATED',
  };

  @override
  final Iterable<Type> types = const <Type>[NodeStatus];
  @override
  final String wireName = 'NodeStatus';

  @override
  Object serialize(Serializers serializers, NodeStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NodeStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NodeStatus.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
