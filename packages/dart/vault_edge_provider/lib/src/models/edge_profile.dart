import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'edge_profile.g.dart';

/// Class representing a profile
@CopyWith(copyWithNull: true)
class EdgeProfile {
  /// Constructor
  ///
  /// The [id] of profile
  /// The [accountIndex] of profile
  /// The [name] of profile
  /// The [description] of profile
  const EdgeProfile({
    required this.id,
    required this.accountIndex,
    required this.name,
    required this.description,
  });

  /// The profile identifier
  @CopyWithField(immutable: true)
  final String id;

  /// The profile name
  final String name;

  /// The profile description
  final String? description;

  /// The profile accountIndex
  @CopyWithField(immutable: true)
  final int accountIndex;

  /// Constructs an [EdgeProfile] from a [Profile]
  factory EdgeProfile.from(Profile profile) {
    return EdgeProfile(
      id: profile.id,
      accountIndex: profile.accountIndex,
      name: profile.name,
      description: profile.description,
    );
  }
}
