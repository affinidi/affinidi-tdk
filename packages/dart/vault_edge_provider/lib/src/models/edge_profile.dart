import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

import '../exceptions/tdk_exception_type.dart';

part 'edge_profile.g.dart';

/// Class representing a profile
@CopyWith(copyWithNull: true)
class EdgeProfile {
  /// Constructor
  ///
  /// The [id] of profile
  /// The [name] of profile
  /// The [description] of profile
  const EdgeProfile({
    required this.id,
    required this.name,
    required this.description,
  });

  /// The profile identifier
  @CopyWithField(immutable: true)
  final int id;

  /// The profile name
  final String name;

  /// The profile description
  final String? description;

  /// Constructs an [EdgeProfile] from a [Profile]
  factory EdgeProfile.from(Profile profile) {
    final profileId = int.tryParse(profile.id);

    if (profileId == null) {
      Error.throwWithStackTrace(
        TdkException(
            message: 'ProfileId cannot be null',
            code: TdkExceptionType.missingProfileId.code),
        StackTrace.current,
      );
    }

    return EdgeProfile(
      id: profileId,
      name: profile.name,
      description: profile.description,
    );
  }
}
