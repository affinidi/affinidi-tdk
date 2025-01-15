import 'package:test/test.dart';
import 'package:affinidi_tdk_iota_client/affinidi_tdk_iota_client.dart';


/// tests for DefaultApi
void main() {
  final instance = AffinidiTdkIotaClient().getDefaultApi();

  group(DefaultApi, () {
    // Lists all the logged consents for a project.
    //
    //Future<ListLoggedConsentsOK> listLoggedConsents({ String configurationId, String userId, int limit, String exclusiveStartKey }) async
    test('test listLoggedConsents', () async {
      // TODO
    });

  });
}
