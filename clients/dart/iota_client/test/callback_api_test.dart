import 'package:test/test.dart';
import 'package:affinidi_tdk_iota_client/affinidi_tdk_iota_client.dart';


/// tests for CallbackApi
void main() {
  final instance = AffinidiTdkIotaClient().getCallbackApi();

  group(CallbackApi, () {
    // It handles the client's (e.g., Affinidi Vault) callback about the result of the data-sharing request. It may contain the data shared by the user, including the presentation submission, verification token, and state. Using the MQTT protocol, it communicates the completion of the request or if any error occurred. 
    //
    //Future<CallbackResponseOK> iotOIDC4VPCallback(CallbackInput callbackInput) async
    test('test iotOIDC4VPCallback', () async {
      // TODO
    });

  });
}
