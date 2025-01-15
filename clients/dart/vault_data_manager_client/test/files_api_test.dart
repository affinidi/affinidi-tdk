import 'package:test/test.dart';
import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';


/// tests for FilesApi
void main() {
  final instance = AffinidiTdkVaultDataManagerClient().getFilesApi();

  group(FilesApi, () {
    // Get the details of a scanned file using the textract jobId
    //
    //Future<GetScannedFileInfoOK> getScannedFileInfo(String scannedFileJobId, { String exclusiveStartKey }) async
    test('test getScannedFileInfo', () async {
      // TODO
    });

    // List all the the scanned files with all the details, e.g. status and jobId
    //
    //Future<ListScannedFilesOK> listScannedFiles() async
    test('test listScannedFiles', () async {
      // TODO
    });

    // Start a scan of the file under this node and provide a textract job
    //
    //Future<StartFileScanOK> startFileScan(String nodeId, StartFileScanInput startFileScanInput) async
    test('test startFileScan', () async {
      // TODO
    });

  });
}
