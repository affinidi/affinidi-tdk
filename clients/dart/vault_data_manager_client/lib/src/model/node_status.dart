//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'node_status.g.dart';

class NodeStatus extends EnumClass {
  /// status of current node. INITIALIZED status is used for PROFILE/FILE node that was just created, before file was uploaded in s3 CREATED status is used, when the file for node is uploaded in s3. HIDDEN and DELETED statuses are used for deletion of Nodes
  @BuiltValueEnumConst(wireName: r'NOT_SET')
  static const NodeStatus NOT_SET = _$NOT_SET;

  /// status of current node. INITIALIZED status is used for PROFILE/FILE node that was just created, before file was uploaded in s3 CREATED status is used, when the file for node is uploaded in s3. HIDDEN and DELETED statuses are used for deletion of Nodes
  @BuiltValueEnumConst(wireName: r'HIDDEN')
  static const NodeStatus HIDDEN = _$HIDDEN;

  /// status of current node. INITIALIZED status is used for PROFILE/FILE node that was just created, before file was uploaded in s3 CREATED status is used, when the file for node is uploaded in s3. HIDDEN and DELETED statuses are used for deletion of Nodes
  @BuiltValueEnumConst(wireName: r'DELETED')
  static const NodeStatus DELETED = _$DELETED;

  /// status of current node. INITIALIZED status is used for PROFILE/FILE node that was just created, before file was uploaded in s3 CREATED status is used, when the file for node is uploaded in s3. HIDDEN and DELETED statuses are used for deletion of Nodes
  @BuiltValueEnumConst(wireName: r'INITIALIZED')
  static const NodeStatus INITIALIZED = _$INITIALIZED;

  /// status of current node. INITIALIZED status is used for PROFILE/FILE node that was just created, before file was uploaded in s3 CREATED status is used, when the file for node is uploaded in s3. HIDDEN and DELETED statuses are used for deletion of Nodes
  @BuiltValueEnumConst(wireName: r'CREATED')
  static const NodeStatus CREATED = _$CREATED;

  static Serializer<NodeStatus> get serializer => _$nodeStatusSerializer;

  const NodeStatus._(String name) : super(name);

  static BuiltSet<NodeStatus> get values => _$values;
  static NodeStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class NodeStatusMixin = Object with _$NodeStatusMixin;
