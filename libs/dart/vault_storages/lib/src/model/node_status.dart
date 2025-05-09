/// Represents the current status of a node in the storage system.
library;

// ignore_for_file: constant_identifier_names
/// Node statuses that can be used to describe the state of a node in the storage system.
enum NodeStatus {
  /// Node has been initialized but not createdS
  INITIALIZED,

  /// Node has been created and is active
  CREATED,

  /// Node has been marked as deleted
  DELETED,

  /// Node exists but is hidden from normal view
  HIDDEN,
}
