import 'package:test/test.dart';
import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';


/// tests for ProfileDataApi
void main() {
  final instance = AffinidiTdkVaultDataManagerClient().getProfileDataApi();

  group(ProfileDataApi, () {
    // Updates the profile with the given data
    //
    //Future<UpdateProfileDataOK> updateProfileData(String nodeId, UpdateProfileDataInput updateProfileDataInput) async
    test('test updateProfileData', () async {
      // TODO
    });

  });
}
