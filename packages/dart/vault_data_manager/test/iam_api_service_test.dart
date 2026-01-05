import 'package:affinidi_tdk_consumer_iam_client/affinidi_tdk_consumer_iam_client.dart'
    as consumer_iam;
import 'package:affinidi_tdk_vault_data_manager/src/services/vault_data_manager_shared_access_api_service.dart';
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
    group('When granting access to VFS', () {
      test('it should successfully grant access', () async {
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

        await iamApiService.grantAccessVfs(
          granteeDid: IamApiServiceFixtures.testGranteeDid,
          permissions: IamApiServiceFixtures.testPermissions,
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
  });
}
