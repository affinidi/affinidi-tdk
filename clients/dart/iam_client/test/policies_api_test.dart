import 'package:test/test.dart';
import 'package:affinidi_tdk_iam_client/affinidi_tdk_iam_client.dart';


/// tests for PoliciesApi
void main() {
  final instance = AffinidiTdkIamClient().getPoliciesApi();

  group(PoliciesApi, () {
    //Future<PolicyDto> getPolicies(String principalId, String principalType) async
    test('test getPolicies', () async {
      // TODO
    });

    //Future<PolicyDto> updatePolicies(String principalId, String principalType, PolicyDto policyDto) async
    test('test updatePolicies', () async {
      // TODO
    });

  });
}
