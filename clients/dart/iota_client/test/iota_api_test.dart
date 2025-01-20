import 'package:test/test.dart';
import 'package:affinidi_tdk_iota_client/affinidi_tdk_iota_client.dart';


/// tests for IotaApi
void main() {
  final instance = AffinidiTdkIotaClient().getIotaApi();

  group(IotaApi, () {
    // Exchange a limited-scoped token into a Cognito credential to generate the identity credential. The identity credential initiates the secure WebSocket connection from the client. This method is used only in WebSocket data-sharing mode.
    //
    //Future<AwsExchangeCredentialsOK> awsExchangeCredentials(AwsExchangeCredentials awsExchangeCredentials) async
    test('test awsExchangeCredentials', () async {
      // TODO
    });

    // Exchange a Project Scoped Token into an identity credential directly to initiate a secure WebSocket connection. This method is used only in WebSocket data-sharing mode.
    //
    //Future<IotaExchangeCredentialsOK> awsExchangeCredentialsProjectToken(AwsExchangeCredentialsProjectToken awsExchangeCredentialsProjectToken) async
    test('test awsExchangeCredentialsProjectToken', () async {
      // TODO
    });

    // Fetches the client's callback that contains the user's shared data in a Verifiable Presentation format after a successful data-sharing flow.
    //
    //Future<FetchIOTAVPResponseOK> fetchIotaVpResponse(FetchIOTAVPResponseInput fetchIOTAVPResponseInput) async
    test('test fetchIotaVpResponse', () async {
      // TODO
    });

    // Generates the request token for the Redirect mode to initiate the data-sharing flow.
    //
    //Future<InitiateDataSharingRequestOK> initiateDataSharingRequest(InitiateDataSharingRequestInput initiateDataSharingRequestInput) async
    test('test initiateDataSharingRequest', () async {
      // TODO
    });

    // Exchange a limited-scoped token into an identity credential directly to initiate a secure WebSocket connection. This method is used only in WebSocket data-sharing mode.
    //
    //Future<IotaExchangeCredentialsOK> iotaExchangeCredentials(IotaExchangeCredentials iotaExchangeCredentials) async
    test('test iotaExchangeCredentials', () async {
      // TODO
    });

  });
}
