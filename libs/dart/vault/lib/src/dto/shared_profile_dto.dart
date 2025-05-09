import 'dart:typed_data';

/// DTO for shared profile information.
class SharedProfileDto {
  /// Creates a new instance of [SharedProfileDto].
  ///
  /// [kek] - Key encryption key for the shared profile.
  /// [profileId] - Unique identifier of the profile.
  /// [profileDID] - Decentralized identifier of the profile.
  const SharedProfileDto({
    required this.kek,
    required this.profileId,
    required this.profileDID,
  });

  /// Key encryption key for the shared profile.
  final Uint8List kek;

  /// Unique identifier of the profile.
  final String profileId;

  /// Decentralized identifier of the profile.
  final String profileDID;
}
