//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// type of the Node
class NodeType {
  /// Instantiate a new enum with the provided [value].
  const NodeType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const VC_ROOT = NodeType._(r'VC_ROOT');
  static const VC = NodeType._(r'VC');
  static const FILE = NodeType._(r'FILE');
  static const FOLDER = NodeType._(r'FOLDER');
  static const PROFILE = NodeType._(r'PROFILE');
  static const ROOT_ELEMENT = NodeType._(r'ROOT_ELEMENT');
  static const TRASH_BIN = NodeType._(r'TRASH_BIN');

  /// List of all possible values in this [enum][NodeType].
  static const values = <NodeType>[
    VC_ROOT,
    VC,
    FILE,
    FOLDER,
    PROFILE,
    ROOT_ELEMENT,
    TRASH_BIN,
  ];

  static NodeType? fromJson(dynamic value) => NodeTypeTypeTransformer().decode(value);

  static List<NodeType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NodeType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NodeType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NodeType] to String,
/// and [decode] dynamic data back to [NodeType].
class NodeTypeTypeTransformer {
  factory NodeTypeTypeTransformer() => _instance ??= const NodeTypeTypeTransformer._();

  const NodeTypeTypeTransformer._();

  String encode(NodeType data) => data.value;

  /// Decodes a [dynamic value][data] to a NodeType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NodeType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'VC_ROOT': return NodeType.VC_ROOT;
        case r'VC': return NodeType.VC;
        case r'FILE': return NodeType.FILE;
        case r'FOLDER': return NodeType.FOLDER;
        case r'PROFILE': return NodeType.PROFILE;
        case r'ROOT_ELEMENT': return NodeType.ROOT_ELEMENT;
        case r'TRASH_BIN': return NodeType.TRASH_BIN;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NodeTypeTypeTransformer] instance.
  static NodeTypeTypeTransformer? _instance;
}

