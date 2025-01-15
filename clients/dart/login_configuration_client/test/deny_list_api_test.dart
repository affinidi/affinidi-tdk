import 'package:test/test.dart';
import 'package:affinidi_tdk_login_configuration_client/affinidi_tdk_login_configuration_client.dart';


/// tests for DenyListApi
void main() {
  final instance = AffinidiTdkLoginConfigurationClient().getDenyListApi();

  group(DenyListApi, () {
    // Block Single or Multiple Groups
    //
    //Future blockGroups({ GroupNamesInput groupNamesInput }) async
    test('test blockGroups', () async {
      // TODO
    });

    // Block Single or Multiple user ids
    //
    //Future blockUsers({ BlockedUsersInput blockedUsersInput }) async
    test('test blockUsers', () async {
      // TODO
    });

    // Get Blocked Groups
    //
    //Future<GroupNames> listBlockedGroups({ String pageToken }) async
    test('test listBlockedGroups', () async {
      // TODO
    });

    // Get List of Blocked Users
    //
    //Future<BlockedUsers> listBlockedUsers({ String pageToken }) async
    test('test listBlockedUsers', () async {
      // TODO
    });

    // Unblock Single or Multiple Groups
    //
    //Future unblockGroups({ GroupNamesInput groupNamesInput }) async
    test('test unblockGroups', () async {
      // TODO
    });

    // Unblock Single or Multiple user ids
    //
    //Future unblockUsers({ BlockedUsersInput blockedUsersInput }) async
    test('test unblockUsers', () async {
      // TODO
    });

  });
}
