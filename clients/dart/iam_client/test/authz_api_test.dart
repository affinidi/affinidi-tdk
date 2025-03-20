import 'package:test/test.dart';
import 'package:affinidi_tdk_iam_client/affinidi_tdk_iam_client.dart';


/// tests for AuthzApi
void main() {
  final instance = AffinidiTdkIamClient().getAuthzApi();

  group(AuthzApi, () {
    // Grant access to the virtual file system
    //
    // Grants access rights to a subject for the virtual file system
    //
    //Future<GrantAccessOutput> grantAccessVfs(GrantAccessInput grantAccessInput) async
    test('test grantAccessVfs', () async {
      // TODO
    });

  });
}
