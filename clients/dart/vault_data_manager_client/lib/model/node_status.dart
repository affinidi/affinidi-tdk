//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// status of current node. INITIALIZED status is used for PROFILE/FILE node that was just created, before file was uploaded in s3 CREATED status is used, when the file for node is uploaded in s3. HIDDEN and DELETED statuses are used for deletion of Nodes
class NodeStatus {
  /// Instantiate a new enum with the provided [value].
  const NodeStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NOT_SET = NodeStatus._(r'NOT_SET');
  static const HIDDEN = NodeStatus._(r'HIDDEN');
  static const DELETED = NodeStatus._(r'DELETED');
  static const INITIALIZED = NodeStatus._(r'INITIALIZED');
  static const CREATED = NodeStatus._(r'CREATED');

  /// List of all possible values in this [enum][NodeStatus].
  static const values = <NodeStatus>[
    NOT_SET,
    HIDDEN,
    DELETED,
    INITIALIZED,
    CREATED,
  ];

  static NodeStatus? fromJson(dynamic value) => NodeStatusTypeTransformer().decode(value);

  static List<NodeStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NodeStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NodeStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NodeStatus] to String,
/// and [decode] dynamic data back to [NodeStatus].
class NodeStatusTypeTransformer {
  factory NodeStatusTypeTransformer() => _instance ??= const NodeStatusTypeTransformer._();

  const NodeStatusTypeTransformer._();

  String encode(NodeStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a NodeStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NodeStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NOT_SET': return NodeStatus.NOT_SET;
        case r'HIDDEN': return NodeStatus.HIDDEN;
        case r'DELETED': return NodeStatus.DELETED;
        case r'INITIALIZED': return NodeStatus.INITIALIZED;
        case r'CREATED': return NodeStatus.CREATED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NodeStatusTypeTransformer] instance.
  static NodeStatusTypeTransformer? _instance;
}

