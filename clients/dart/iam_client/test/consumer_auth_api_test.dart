import 'package:test/test.dart';
import 'package:affinidi_tdk_iam_client/affinidi_tdk_iam_client.dart';


/// tests for ConsumerAuthApi
void main() {
  final instance = AffinidiTdkIamClient().getConsumerAuthApi();

  group(ConsumerAuthApi, () {
    // The Consumer OAuth 2.0 Token Endpoint
    //
    // Use open source libraries to perform OAuth 2.0 and OpenID Connect available for any programming language. You can find a list of libraries here https://oauth.net/code/  The Ory SDK is not yet able to this endpoint properly.
    //
    //Future<ConsumerAuthTokenEndpointOutput> consumerAuthTokenEndpoint(ConsumerAuthTokenEndpointInput consumerAuthTokenEndpointInput) async
    test('test consumerAuthTokenEndpoint', () async {
      // TODO
    });

  });
}
