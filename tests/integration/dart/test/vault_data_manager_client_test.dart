import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';
import 'package:test/test.dart';
import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';
import 'environment.dart';

void main() {
  group('Vault Data Manager Client Integration Tests', () {
    // late ConfigApi configApi;
    // late FilesApi filesApi;
    late NodesApi nodesApi;
    // late ProfileDataApi profileDataApi;

    setUp(() async {
      final env = getVaultEnvironment();
      final consumerAuthProvider = ConsumerAuthProvider(seed: env.seed);
      final apiClient = AffinidiTdkVaultDataManagerClient(
        authTokenHook: consumerAuthProvider.fetchConsumerToken,
      );

      // configApi = apiClient.getConfigApi();
      // filesApi = apiClient.getFilesApi();
      nodesApi = apiClient.getNodesApi();
      // profileDataApi = apiClient.getProfileDataApi();
    });

    test('list root node children', () async {
      final children = (await nodesApi.listRootNodeChildren()).data;
      print(children);
    });
  });
}
