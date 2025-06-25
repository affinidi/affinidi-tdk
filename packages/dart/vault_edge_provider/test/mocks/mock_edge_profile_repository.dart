import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';

class MockEdgeProfileRepository implements EdgeProfileRepositoryInterface {
  String? lastCalledCreateProfileName;
  String? lastCalledCreateProfileDescription;
  int? lastCalledCreateProfileAccountIndex;
  String? lastCalledDeletedProfileId;
  EdgeProfile? lastCalledUpdateProfile;
  bool lastCalledListProfiles = false;
  List<EdgeProfile> listProfilesReturnValue = [];

  @override
  Future<void> createProfile({
    required String name,
    String? description,
    required int accountIndex,
    VaultCancelToken? cancelToken,
  }) async {
    lastCalledCreateProfileName = name;
    lastCalledCreateProfileDescription = description;
    lastCalledCreateProfileAccountIndex = accountIndex;
  }

  @override
  Future<void> deleteProfile({
    required String profileId,
    VaultCancelToken? cancelToken,
  }) async {
    lastCalledDeletedProfileId = profileId;
  }

  @override
  Future<List<EdgeProfile>> listProfiles(
      {VaultCancelToken? cancelToken}) async {
    lastCalledListProfiles = true;
    return listProfilesReturnValue;
  }

  @override
  Future<void> updateProfile({
    required EdgeProfile profile,
    VaultCancelToken? cancelToken,
  }) async {
    lastCalledUpdateProfile = profile;
  }
}
