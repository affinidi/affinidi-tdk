import 'package:test/test.dart';
import 'package:affinidi_tdk_iam_client/affinidi_tdk_iam_client.dart';


/// tests for StsApi
void main() {
  final instance = AffinidiTdkIamClient().getStsApi();

  group(StsApi, () {
    //Future<CreateProjectScopedTokenOutput> createProjectScopedToken(CreateProjectScopedTokenInput createProjectScopedTokenInput) async
    test('test createProjectScopedToken', () async {
      // TODO
    });

    //Future<WhoamiDto> whoami() async
    test('test whoami', () async {
      // TODO
    });

  });
}
