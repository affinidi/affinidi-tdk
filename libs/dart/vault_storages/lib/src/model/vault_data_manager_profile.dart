/// Represents a user profile in the storage system.
class VaultDataManagerProfile {
  /// Unique identifier for the profile
  late String id;

  /// Display name of the profile
  final String name;

  /// Optional description about the profile
  final String? description;

  /// URI pointing to the profile's picture
  final String? pictureURI;

  /// Creates a new profile instance.
  ///
  /// The [name] parameter is required, while [description], [pictureURI], and [id]
  /// are optional. If [id] is not provided, it defaults to an empty string.
  VaultDataManagerProfile({
    required this.name,
    this.description,
    this.pictureURI,
    this.id = '',
  });
}
