/// Defines the different types of nodes that can exist in the storage system.
library;
// ignore_for_file: constant_identifier_names

/// Node types that can be used to describe the type of a node in the storage system.
enum NodeType {
  /// Root node for storing Verifiable Credentials
  VC_ROOT,

  /// Individual Verifiable Credential node
  VC,

  /// File node representing a stored file
  FILE,

  /// Folder node
  FOLDER,

  /// Profile node representing a user profile
  PROFILE,

  /// Root element node in the hierarchy
  ROOT_ELEMENT,

  /// Node type for deleted items
  TRASH_BIN,
}
