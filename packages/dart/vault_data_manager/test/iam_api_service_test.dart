import 'package:affinidi_tdk_consumer_iam_client/affinidi_tdk_consumer_iam_client.dart'
    as consumer_iam;
import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_data_manager/src/services/vault_data_manager_shared_access_api_service.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'fixtures/iam_api_service_fixtures.dart';
import 'mocks/mock_iam_client.dart';

void main() {
  late MockConsumerAuthzApi mockConsumerAuthzApi;
  late MockAffinidiTdkConsumerIamClient mockConsumerIamClient;
  late VaultDataManagerSharedAccessApiService iamApiService;

  setUpAll(() {
    registerFallbackValue(IamApiServiceFixtures.testPermissions);
    registerFallbackValue(
      consumer_iam.UpdateAccessInputBuilder().build(),
    );
  });

  setUp(() {
    mockConsumerAuthzApi = MockConsumerAuthzApi();
    mockConsumerIamClient = MockAffinidiTdkConsumerIamClient();
    when(() => mockConsumerIamClient.getAuthzApi())
        .thenReturn(mockConsumerAuthzApi);
    iamApiService = VaultDataManagerSharedAccessApiService(
        affinidiTdkConsumerIamClient: mockConsumerIamClient);
  });

  group('IamApiService', () {
    group('When revoking access from VFS', () {
      test('it should successfully revoke access', () async {
        when(() => mockConsumerAuthzApi.deleteAccessVfs(
                  granteeDid: any(named: 'granteeDid'),
                  cancelToken: any(named: 'cancelToken'),
                  headers: any(named: 'headers'),
                  extra: any(named: 'extra'),
                  validateStatus: any(named: 'validateStatus'),
                  onSendProgress: any(named: 'onSendProgress'),
                  onReceiveProgress: any(named: 'onReceiveProgress'),
                ))
            .thenAnswer((_) async =>
                IamApiServiceFixtures.successfulRevokeAccessResponse);

        await iamApiService.revokeAccessVfs(
          granteeDid: IamApiServiceFixtures.testGranteeDid,
        );

        verify(() => mockConsumerAuthzApi.deleteAccessVfs(
              granteeDid: IamApiServiceFixtures.testGranteeDid,
              cancelToken: any(named: 'cancelToken'),
              headers: any(named: 'headers'),
              extra: any(named: 'extra'),
              validateStatus: any(named: 'validateStatus'),
              onSendProgress: any(named: 'onSendProgress'),
              onReceiveProgress: any(named: 'onReceiveProgress'),
            )).called(1);
      });
    });

    group('When setting item-level access', () {
      test('it should successfully set items access', () async {
        when(() => mockConsumerAuthzApi.updateAccessVfs(
                  granteeDid: any(named: 'granteeDid'),
                  updateAccessInput: any(named: 'updateAccessInput'),
                  cancelToken: any(named: 'cancelToken'),
                  headers: any(named: 'headers'),
                  extra: any(named: 'extra'),
                  validateStatus: any(named: 'validateStatus'),
                  onSendProgress: any(named: 'onSendProgress'),
                  onReceiveProgress: any(named: 'onReceiveProgress'),
                ))
            .thenAnswer((_) async =>
                IamApiServiceFixtures.successfulUpdateAccessResponse);

        await iamApiService.setItemsAccessVfs(
          granteeDid: IamApiServiceFixtures.testGranteeDid,
          permissionGroups: [
            (
              itemIds: ['node-1'],
              permissions: Permissions.read,
              expiresAt: null
            ),
          ],
        );

        verify(() => mockConsumerAuthzApi.updateAccessVfs(
              granteeDid: IamApiServiceFixtures.testGranteeDid,
              updateAccessInput: any(named: 'updateAccessInput'),
              cancelToken: any(named: 'cancelToken'),
              headers: any(named: 'headers'),
              extra: any(named: 'extra'),
              validateStatus: any(named: 'validateStatus'),
              onSendProgress: any(named: 'onSendProgress'),
              onReceiveProgress: any(named: 'onReceiveProgress'),
            )).called(1);
      });
    });

    group('When revoking item-level access', () {
      test('it should successfully revoke items access', () async {
        when(() => mockConsumerAuthzApi.deleteAccessVfs(
                  granteeDid: any(named: 'granteeDid'),
                  cancelToken: any(named: 'cancelToken'),
                  headers: any(named: 'headers'),
                  extra: any(named: 'extra'),
                  validateStatus: any(named: 'validateStatus'),
                  onSendProgress: any(named: 'onSendProgress'),
                  onReceiveProgress: any(named: 'onReceiveProgress'),
                ))
            .thenAnswer((_) async =>
                IamApiServiceFixtures.successfulRevokeAccessResponse);

        await iamApiService.revokeItemsAccessVfs(
          granteeDid: IamApiServiceFixtures.testGranteeDid,
          itemIds: ['node-1', 'node-2'],
        );

        verify(() => mockConsumerAuthzApi.deleteAccessVfs(
              granteeDid: IamApiServiceFixtures.testGranteeDid,
              cancelToken: any(named: 'cancelToken'),
              headers: any(named: 'headers'),
              extra: any(named: 'extra'),
              validateStatus: any(named: 'validateStatus'),
              onSendProgress: any(named: 'onSendProgress'),
              onReceiveProgress: any(named: 'onReceiveProgress'),
            )).called(1);
      });
    });

    group('When getting item-level access', () {
      test('it should successfully get items access', () async {
        final expectedResponse = Response<consumer_iam.GetAccessOutput>(
          data: consumer_iam.GetAccessOutput(
            (b) => b.permissions = ListBuilder([
              consumer_iam.Permission(
                (b) => b
                  ..nodeIds = ListBuilder(['node-1'])
                  ..rights = ListBuilder([consumer_iam.RightsEnum.vfsRead]),
              ),
            ]),
          ),
          requestOptions: RequestOptions(path: '/'),
        );

        when(() => mockConsumerAuthzApi.getAccessVfs(
              granteeDid: any(named: 'granteeDid'),
              cancelToken: any(named: 'cancelToken'),
              headers: any(named: 'headers'),
              extra: any(named: 'extra'),
              validateStatus: any(named: 'validateStatus'),
              onSendProgress: any(named: 'onSendProgress'),
              onReceiveProgress: any(named: 'onReceiveProgress'),
            )).thenAnswer((_) async => expectedResponse);

        final result = await iamApiService.getItemsAccessVfs(
          granteeDid: IamApiServiceFixtures.testGranteeDid,
        );

        expect(result.data, isNotNull);
        expect(result.data!.permissions.length, 1);
        verify(() => mockConsumerAuthzApi.getAccessVfs(
              granteeDid: IamApiServiceFixtures.testGranteeDid,
              cancelToken: any(named: 'cancelToken'),
              headers: any(named: 'headers'),
              extra: any(named: 'extra'),
              validateStatus: any(named: 'validateStatus'),
              onSendProgress: any(named: 'onSendProgress'),
              onReceiveProgress: any(named: 'onReceiveProgress'),
            )).called(1);
      });
    });
  });
}
