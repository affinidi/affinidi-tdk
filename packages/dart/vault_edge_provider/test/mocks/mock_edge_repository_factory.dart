import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';

class MockEdgeRepositoryFactory implements EdgeRepositoryFactoryInterface {
  MockEdgeRepositoryFactory({
    required EdgeProfileRepositoryInterface profileRepository,
    required EdgeFileRepositoryInterface fileRepository,
    required EdgeCredentialsRepositoryInterface credentialRepository,
  })  : _credentialRepository = credentialRepository,
        _fileRepository = fileRepository,
        _profileRepository = profileRepository;

  final EdgeProfileRepositoryInterface _profileRepository;
  final EdgeFileRepositoryInterface _fileRepository;
  final EdgeCredentialsRepositoryInterface _credentialRepository;

  @override
  EdgeCredentialsRepositoryInterface createCredentialRepository({
    required String profileId,
  }) {
    return _credentialRepository;
  }

  @override
  EdgeFileRepositoryInterface createFileRepository({
    required String profileId,
  }) {
    return _fileRepository;
  }

  @override
  EdgeProfileRepositoryInterface createProfileRepository() {
    return _profileRepository;
  }
}
