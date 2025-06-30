import 'package:mocktail/mocktail.dart';

import 'mock_edge_profile_repository.dart';

class ProfileMockSetup {
  static void setupProfileRepositoryMocks(
    MockEdgeProfileRepository mockRepository,
  ) {
    when(() => mockRepository.createProfile(
          name: any(named: 'name'),
          description: any(named: 'description'),
          accountIndex: any(named: 'accountIndex'),
          cancelToken: any(named: 'cancelToken'),
        )).thenAnswer((_) async {});

    when(() => mockRepository.listProfiles(
          cancelToken: any(named: 'cancelToken'),
        )).thenAnswer((_) async => []);

    when(() => mockRepository.updateProfile(
          profile: any(named: 'profile'),
          cancelToken: any(named: 'cancelToken'),
        )).thenAnswer((_) async {});

    when(() => mockRepository.deleteProfile(
          profileId: any(named: 'profileId'),
          cancelToken: any(named: 'cancelToken'),
        )).thenAnswer((_) async {});
  }
}
