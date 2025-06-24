import 'credential_mock_setup.dart';
import 'file_mock_setup.dart';
import 'mock_edge_credential_repository.dart';
import 'mock_edge_file_repository.dart';
import 'mock_edge_profile_repository.dart';
import 'profile_mock_setup.dart';

class MockSetup {
  static void setupFallbackValues() {
    CredentialMockSetup.setupFallbackValues();
    FileMockSetup.setupFallbackValues();
  }

  static void setupCredentialRepositoryMocks(
    MockEdgeCredentialRepository mockRepository,
  ) {
    CredentialMockSetup.setupCredentialRepositoryMocks(mockRepository);
  }

  static void setupFileRepositoryMocks(
    MockEdgeFileRepositoryInterface mockRepository,
  ) {
    FileMockSetup.setupFileRepositoryMocks(mockRepository);
  }

  static void setupProfileRepositoryMocks(
    MockEdgeProfileRepository mockRepository,
  ) {
    ProfileMockSetup.setupProfileRepositoryMocks(mockRepository);
  }
}
