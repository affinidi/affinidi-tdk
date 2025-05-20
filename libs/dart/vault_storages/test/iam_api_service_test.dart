import 'package:affinidi_tdk_vault_storages/src/iam_api_service.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'fixtures/iam_api_service_fixtures.dart';
import 'mocks/mock_iam_client.dart';

void main() {
  late MockAuthzApi mockAuthzApi;
  late MockAffinidiTdkIamClient mockIamClient;
  late IamApiService iamApiService;

  setUpAll(() {
    registerFallbackValue(IamApiServiceFixtures.testPermissions);
    registerFallbackValue(GrantAccessInputFake());
  });

  setUp(() {
    mockAuthzApi = MockAuthzApi();
    mockIamClient = MockAffinidiTdkIamClient();
    when(() => mockIamClient.getAuthzApi()).thenReturn(mockAuthzApi);
    iamApiService = IamApiService(affinidiTdkIamClient: mockIamClient);
  });

  group('IamApiService', () {
    group('When granting access to VFS', () {
      test('it should successfully grant access', () async {
        when(() => mockAuthzApi.grantAccessVfs(
                  grantAccessInput: any(named: 'grantAccessInput'),
                ))
            .thenAnswer((_) async =>
                IamApiServiceFixtures.successfulGrantAccessResponse);

        await iamApiService.grantAccessVfs(
          granteeDid: IamApiServiceFixtures.testGranteeDid,
          permissions: IamApiServiceFixtures.testPermissions,
        );

        verify(() => mockAuthzApi.grantAccessVfs(
              grantAccessInput: any(named: 'grantAccessInput'),
            )).called(1);
      });
    });

    group('When revoking access from VFS', () {
      test('it should successfully revoke access', () async {
        when(() => mockAuthzApi.deleteAccessVfs(
                  granteeDid: IamApiServiceFixtures.testGranteeDid,
                ))
            .thenAnswer((_) async =>
                IamApiServiceFixtures.successfulRevokeAccessResponse);

        await iamApiService.revokeAccessVfs(
          granteeDid: IamApiServiceFixtures.testGranteeDid,
        );

        verify(() => mockAuthzApi.deleteAccessVfs(
              granteeDid: IamApiServiceFixtures.testGranteeDid,
            )).called(1);
      });
    });
  });
}
