import 'package:test/test.dart';
import 'package:affinidi_tdk_login_configuration_client/affinidi_tdk_login_configuration_client.dart';


/// tests for AllowListApi
void main() {
  final instance = AffinidiTdkLoginConfigurationClient().getAllowListApi();

  group(AllowListApi, () {
    // Allow Single or Multiple Groups
    //
    //Future allowGroups({ GroupNamesInput groupNamesInput }) async
    test('test allowGroups', () async {
      // TODO
    });

    // Disallow Single or Multiple Groups
    //
    //Future disallowGroups({ GroupNamesInput groupNamesInput }) async
    test('test disallowGroups', () async {
      // TODO
    });

    // Get Allowed Groups
    //
    //Future<GroupNames> listAllowedGroups({ String pageToken }) async
    test('test listAllowedGroups', () async {
      // TODO
    });

  });
}
