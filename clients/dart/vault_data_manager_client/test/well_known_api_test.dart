import 'package:test/test.dart';
import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';


/// tests for WellKnownApi
void main() {
  final instance = AffinidiTdkVaultDataManagerClient().getWellKnownApi();

  group(WellKnownApi, () {
    //Future<JsonWebKeySetDto> getWellKnownJwks() async
    test('test getWellKnownJwks', () async {
      // TODO
    });

  });
}
