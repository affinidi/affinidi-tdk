import 'edge_credentials_repository_interface.dart';
import 'edge_file_repository_interface.dart';
import 'edge_profile_repository_interface.dart';

/// Used to create repositories for handling operations on profiles, files and credentials.
abstract interface class EdgeRepositoryFactoryInterface {
  /// Returns an EdgeProfileRepository to manage local profiles.
  EdgeProfileRepositoryInterface createProfileRepository();

  /// Returns an EdgeFileRepository to manage local files.
  EdgeFileRepositoryInterface createFileRepository({
    required String profileId,
  });

  /// Returns an EdgeCredentialsRepository to manage local credentials.
  EdgeCredentialsRepositoryInterface createCredentialRepository({
    required String profileId,
  });
}
