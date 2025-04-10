import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:affinidi_tdk_auth_provider/affinidi_tdk_auth_provider.dart';
import 'package:affinidi_tdk_login_configuration_client/affinidi_tdk_login_configuration_client.dart';

import 'environment.dart';

void main() {
  group('Login Configuration Client Integration Tests', () {
    late ConfigurationApi configurationApi;
    late GroupApi groupApi;
    late AllowListApi allowListApi;
    late DenyListApi denyListApi;
    late String configurationId;

    setUp(() async {
      final env = getProjectEnvironment();
      final authProvider = AuthProvider(
        projectId: env.projectId,
        tokenId: env.tokenId,
        privateKey: env.privateKey,
        keyId: env.keyId,
        passphrase: env.passphrase,
      );

      final loginConfigurationClient = AffinidiTdkLoginConfigurationClient(
        dio: Dio(BaseOptions(
          baseUrl: AffinidiTdkLoginConfigurationClient.basePath,
          connectTimeout: const Duration(seconds: 5),
          receiveTimeout: const Duration(seconds: 5),
        )),
        authTokenHook: authProvider.fetchProjectScopedToken);

      groupApi = loginConfigurationClient.getGroupApi();
      allowListApi = loginConfigurationClient.getAllowListApi();
      denyListApi = loginConfigurationClient.getDenyListApi();
      configurationApi = loginConfigurationClient.getConfigurationApi();
    });

    group('User groups', () {
      final String groupName = 'test_group_name';

      test('Creates user group', () async {
        final createGroupInput = CreateGroupInputBuilder()
          ..groupName = groupName
          ..name = 'test';

        final response = (await groupApi.createGroup(
              createGroupInput: createGroupInput.build()));

        expect(response.statusCode, 201);
        expect(response.data!.ari, isNotEmpty);
      });

      test('Reads user groups', () async {
        final groups = (await groupApi.listGroups()).data?.groups;

        expect(groups, isNotNull);
        expect(groups?.length, greaterThan(0));
      });

      test('Reads user group', () async {
        final group = (await groupApi.getGroupById(groupName: groupName)).data;

        expect(group, isNotNull);
      });

      group('Allow List', () {
        test('Allows groups', () async {
          final groupNamesInputBuilder = GroupNamesInputBuilder()
            ..groupNames = ListBuilder([groupName]);

          final statusCode = (await allowListApi.allowGroups(groupNamesInput: groupNamesInputBuilder.build())).statusCode;

          expect(statusCode, 200);
        });

        test('List allowed groups', () async {
          final groupNames = (await allowListApi.listAllowedGroups()).data?.groupNames;

          expect(groupNames, isNotNull);
          expect(groupNames, contains(groupName));
        });


        test('Disallow groups', () async {
          final groupNamesInputBuilder = GroupNamesInputBuilder()
            ..groupNames = ListBuilder<String>([groupName]);

          final statusCode = (await allowListApi.disallowGroups(groupNamesInput: groupNamesInputBuilder.build())).statusCode;

          expect(statusCode, 200);
        });
      });

      group('Deny List', () {
        final String blockUserId = 'test';

        test('Block groups', () async {
          final groupNamesInputBuilder = GroupNamesInputBuilder()
            ..groupNames = ListBuilder([groupName]);

          final statusCode = (await denyListApi.blockGroups(groupNamesInput: groupNamesInputBuilder.build())).statusCode;

          expect(statusCode, 200);
        });

        test('List blocked groups', () async {
          final groupNames = (await denyListApi.listBlockedGroups()).data?.groupNames;

          expect(groupNames, isNotNull);
          expect(groupNames, contains(groupName));
        });


        test('Unblock groups', () async {
          final groupNamesInputBuilder = GroupNamesInputBuilder()
            ..groupNames = ListBuilder<String>([groupName]);

          final statusCode = (await denyListApi.unblockGroups(groupNamesInput: groupNamesInputBuilder.build())).statusCode;

          expect(statusCode, 200);
        });

        test('Block users', () async {
          final blockedUsersInputBuilder = BlockedUsersInputBuilder()
            ..userIds = ListBuilder([blockUserId]);

          final statusCode = (await denyListApi.blockUsers(blockedUsersInput: blockedUsersInputBuilder.build())).statusCode;

          expect(statusCode, 200);
        });

        test('List blocked users', () async {
          final userIds = (await denyListApi.listBlockedUsers()).data?.userIds;

          expect(userIds, isNotNull);
          expect(userIds, contains(blockUserId));
        });


        test('Unblock users', () async {
          final blockedUsersInputBuilder = BlockedUsersInputBuilder()
            ..userIds = ListBuilder([blockUserId]);

          final statusCode = (await denyListApi.unblockUsers(blockedUsersInput: blockedUsersInputBuilder.build())).statusCode;

          expect(statusCode, 200);
        });
      });

      test('Deletes user group', () async {
        if (groupName.isNotEmpty) {
          await groupApi.deleteGroup(groupName: groupName);

          expectLater(
            groupApi.getGroupById(groupName: groupName),
            throwsA(isA<DioException>().having((e) => e.response?.statusCode, 'status code', 404)),
          );
        }
      });
    });
  });
}
