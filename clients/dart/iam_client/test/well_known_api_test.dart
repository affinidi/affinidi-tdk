import 'package:test/test.dart';
import 'package:affinidi_tdk_iam_client/affinidi_tdk_iam_client.dart';


/// tests for WellKnownApi
void main() {
  final instance = AffinidiTdkIamClient().getWellKnownApi();

  group(WellKnownApi, () {
    //Future<GetWellKnownDidOK> getWellKnownDid() async
    test('test getWellKnownDid', () async {
      // TODO
    });

    //Future<JsonWebKeySetDto> getWellKnownJwks() async
    test('test getWellKnownJwks', () async {
      // TODO
    });

  });
}
