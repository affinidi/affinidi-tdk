import 'dart:typed_data';

/// Data structure for raw credential information
class CredentialData {
  /// Creates a new instance of [CredentialData]
  const CredentialData({
    required this.id,
    required this.content,
  });

  /// The credential ID
  final String id;

  /// The raw credential content as bytes
  final Uint8List content;
}
