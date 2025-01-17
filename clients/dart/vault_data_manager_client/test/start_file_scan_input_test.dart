import 'package:test/test.dart';
import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';

// tests for StartFileScanInput
void main() {
  final instance = StartFileScanInputBuilder();
  // TODO add properties to the builder and call build()

  group(StartFileScanInput, () {
    // A base64 encoded data encryption key, encrypted using VFS public key. This is important as this is used when starting document scan and also while uploading the file to s3
    // String dek
    test('to test the property `dek`', () async {
      // TODO
    });

  });
}
