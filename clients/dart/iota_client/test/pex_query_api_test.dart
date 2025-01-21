import 'package:test/test.dart';
import 'package:affinidi_tdk_iota_client/affinidi_tdk_iota_client.dart';


/// tests for PexQueryApi
void main() {
  final instance = AffinidiTdkIotaClient().getPexQueryApi();

  group(PexQueryApi, () {
    // Creates a new Presentation Definition in the configuration to query data.
    //
    //Future<PexQueryDto> createPexQuery(String configurationId, CreatePexQueryInput createPexQueryInput) async
    test('test createPexQuery', () async {
      // TODO
    });

    // Deletes all Presentation Definition queries of a configuration.
    //
    //Future<JsonObject> deletePexQueries(String configurationId, DeletePexQueriesInput deletePexQueriesInput) async
    test('test deletePexQueries', () async {
      // TODO
    });

    // Deletes a Presentation Definition in the configuration by ID.
    //
    //Future deletePexQueryById(String configurationId, String queryId) async
    test('test deletePexQueryById', () async {
      // TODO
    });

    // Retrieves a Presentation Definition in the configuration by ID.
    //
    //Future<PexQueryDto> getPexQueryById(String configurationId, String queryId) async
    test('test getPexQueryById', () async {
      // TODO
    });

    // Lists all Presentation Definitions in the configuration.
    //
    //Future<ListPexQueriesOK> listPexQueries(String configurationId, { int limit, String exclusiveStartKey }) async
    test('test listPexQueries', () async {
      // TODO
    });

    // Saves all Presentation Definition queries of a configuration.
    //
    //Future<JsonObject> savePexQueries(String configurationId, SavePexQueriesUpdateInput savePexQueriesUpdateInput) async
    test('test savePexQueries', () async {
      // TODO
    });

    // Updates the Presentation Definition in the configuration by ID.
    //
    //Future<PexQueryDto> updatePexQueryById(String configurationId, String queryId, UpdatePexQueryInput updatePexQueryInput) async
    test('test updatePexQueryById', () async {
      // TODO
    });

  });
}
