import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';

class MockEdgeProfileRepository implements EdgeProfileRepositoryInterface {
  String? lastCalledCreateProfileName;
  String? lastCalledCreateProfileDescription;
  int? lastCalledDeletedProfileId;
  EdgeProfile? lastCalledUpdateProfile;
  bool? lastCalledListProfiles;

  @override
  Future<void> createProfile(
      {required String name,
      String? description,
      VaultCancelToken? cancelToken}) async {
    lastCalledCreateProfileName = name;
    lastCalledCreateProfileDescription = description;
  }

  @override
  Future<void> deleteProfile(
      {required int profileId, VaultCancelToken? cancelToken}) async {
    lastCalledDeletedProfileId = profileId;
  }

  @override
  Future<List<EdgeProfile>> listProfiles(
      {VaultCancelToken? cancelToken}) async {
    lastCalledListProfiles = true;
    return [];
  }

  @override
  Future<void> updateProfile(
      {required EdgeProfile profile, VaultCancelToken? cancelToken}) async {
    lastCalledUpdateProfile = profile;
  }
}
