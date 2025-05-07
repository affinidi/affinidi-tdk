import 'package:affinidi_tdk_test_utilities/affinidi_tdk_test_utilities.dart';
import 'package:affinidi_tdk_vault_data_manager/affinidi_tdk_vault_data_manager.dart';
import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';
import 'package:test/test.dart';

import 'fixtures/api_service/file_response_fixtures.dart';
import 'fixtures/api_service/node_response_fixtures.dart';

void main() {
  late VaultDataManagerApiServiceInterface vaultDataManagerApiService;
  final client = DioFixtures.client;
  late DioAdapter dioAdapter;

  setUpAll(() {
    vaultDataManagerApiService = VaultDataManagerApiService(
      apiClient: AffinidiTdkVaultDataManagerClient(
        dio: client,
      ),
    );
  });

  setUp(() {
    dioAdapter = DioAdapterFixtures.adapter(client);
  });

  tearDown(() {
    dioAdapter.reset();
  });

  group('When retrieving list of profiles', () {
    group('and there are profiles available', () {
      test('it finds a list of profiles', () async {
        dioAdapter.mockRequestWithReply(
            url: '/v1/nodes',
            statusCode: 200,
            data: NodeResponseFixtures.profileList);
        final profilesResponse =
            await vaultDataManagerApiService.getListOfProfiles();
        expect(profilesResponse.data?.nodes?.toList().first.name, 'My profile');
      });
    });
    group('and there are no profiles available', () {
      test('it returns empty list', () async {
        dioAdapter.mockRequestWithReply(
          url: '/v1/nodes',
          statusCode: 200,
          data: NodeResponseFixtures.emptyList,
        );
        final profilesResponse =
            await vaultDataManagerApiService.getListOfProfiles();
        expect(profilesResponse.data?.nodes, isEmpty);
      });
    });
  });

  group('When retrieving the profile details data', () {
    group('and there is data available', () {
      test('it returns the searched profile', () async {
        dioAdapter.mockRequestWithReply(
          url: '/v1/nodes/NzY3ZjYjV2dFR2U=',
          statusCode: 200,
          data: NodeResponseFixtures.profile,
        );

        final nodeInfoResponse = await vaultDataManagerApiService.getNodeInfo(
            nodeId: 'NzY3ZjYjV2dFR2U=');
        expect(nodeInfoResponse.data?.nodeId, equals('NzY3ZjYjV2dFR2U='));
      });
    });
  });

  group('When deleting a profile', () {
    group('and profile was deleted', () {
      test('it returns success message', () async {
        dioAdapter.mockRequestWithReply(
          url: '/v1/nodes/NzY3ZjYjV2dFR2U=',
          statusCode: 202,
          data: {},
          httpMethod: HttpMethod.delete,
        );

        final nodeInfoResponse = await vaultDataManagerApiService
            .deleteNodeById(nodeId: 'NzY3ZjYjV2dFR2U=');
        expect(nodeInfoResponse.statusCode, equals(202));
      });
    });

    group('and profile was not deleted', () {
      test('it throws an exception', () async {
        final url = '/v1/nodes/NzY3ZjYjV2dFR2U=';
        dioAdapter.mockRequestWithException(
          url: url,
          statusCode: 409,
          data: NodeResponseFixtures.unableToHardDelete,
        );

        expect(
            () => vaultDataManagerApiService.deleteNodeById(
                nodeId: 'NzY3ZjYjV2dFR2U='),
            throwsException);
      });
    });
  });

  group('When scanning a file', () {
    group('and scan job was initiated', () {
      test('it returns the job id', () async {
        dioAdapter.mockRequestWithReply(
          url: '/v1/nodes/NzY3ZjYjV2dFR2UjMGxVV1U=/file/scan',
          statusCode: 200,
          data: FileResponseFixtures.scanJobStarted,
          httpMethod: HttpMethod.post,
        );

        final scanFileResponse = await vaultDataManagerApiService.startFileScan(
            nodeId: 'NzY3ZjYjV2dFR2UjMGxVV1U=',
            dekEncryptedByVfsPublicKey: List.generate(32, (index) => 1));
        expect(
            scanFileResponse.data?.jobId,
            equals(
                'ff61913ffb889000a8fd8bfcb7a94c3f1fdef272c9f5aff93c4aeabda4e7c038'));
        expect(scanFileResponse.data?.status.toString(), equals('STARTED'));
      });
    });

    group('and scan job was not initiated', () {
      test('it throws an exception', () async {
        dioAdapter.mockRequestWithException(
          url: '/v1/nodes/NzY3ZjYjV2dFR2UjMGxVV1U=/file/scan',
          statusCode: 500,
        );

        expect(
            () => vaultDataManagerApiService.startFileScan(
                nodeId: 'NzY3ZjYjV2dFR2UjMGxVV1U=',
                dekEncryptedByVfsPublicKey: List.generate(32, (index) => 1)),
            throwsException);
      });
    });
  });

  group('When retrieving the list of scanned files', () {
    group('and files do exist', () {
      test('it returns list of scanned files', () async {
        dioAdapter.mockRequestWithReply(
          url: '/v1/scanned-files/',
          statusCode: 200,
          data: FileResponseFixtures.scannedFilesList,
        );

        final scannedFilesResponse =
            await vaultDataManagerApiService.getAllScannedFiles();
        expect(scannedFilesResponse.data?.scannedFiles.first.status,
            equals('COMPLETED'));
      });
    });

    group('and files do not exist', () {
      test('it returns empty list of scanned files', () async {
        dioAdapter.mockRequestWithReply(
          url: '/v1/scanned-files/',
          statusCode: 200,
          data: FileResponseFixtures.emptyScannedFilesList,
        );

        final scannedFilesResponse =
            await vaultDataManagerApiService.getAllScannedFiles();
        expect(scannedFilesResponse.data?.scannedFiles, isEmpty);
      });
    });
  });
}
