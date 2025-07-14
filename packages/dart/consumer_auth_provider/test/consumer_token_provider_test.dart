import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';
import 'package:affinidi_tdk_consumer_auth_provider/src/exceptions/tdk_exception_type.dart';
import 'package:affinidi_tdk_test_utilities/affinidi_tdk_test_utilities.dart';
import 'package:test/test.dart';

import 'fixtures/did_signer_fixture.dart';

void main() {
  final client = DioFixtures.client;
  late DioAdapter dioAdapter;
  const seed =
      'a1772b144344781f2a55fc4d5e49f3767bb0967205ad08454a09c76d96fd2ccd';

  setUp(() {
    dioAdapter = DioAdapterFixtures.adapter(client);
  });

  tearDown(() {
    dioAdapter.reset();
  });

  group('When retrieving a consumer auth access token', () {
    group('and uses a DidSigner with an invalid algorithm', () {
      test('it throws an exception with code unableToGetSignatureScheme',
          () async {
        final didSigner = await DidSignerFixture.withInvalidAlgorithm(
            'a1772b144344781f2a55fc4d5e49f3767bb0967205ad08454a09c76d96fd2ccd');

        final provider = ConsumerAuthProvider(signer: didSigner);

        await expectLater(
            provider.fetchConsumerToken(),
            throwsA(isA<TdkException>().having((error) => error.code, 'code',
                TdkExceptionType.failedToFetchConsumerToken.code)));
      });
    });

    group('and the token was issued for a different user DID', () {
      test('it throws an exception with code consumerTokenDidMismatch',
          () async {
        final didSigner = await DidSignerFixture.withSeed(seed);
        final provider =
            ConsumerAuthProvider(signer: didSigner, client: client);

        final didNotMatchingAccessToken =
            'eyJhbGciOiJFUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiYWRtaW4iOnRydWUsImlhdCI6MTc0NzEzOTUxMH0.X6H9s4aBB_LNdra0XSL1poQsBlcwB6DgJq7U5r_aIzOlc8zhsNi5FY8knQeDZ2v8Cj9DFSoXTAoiXV73qDpx0A';
        dioAdapter.mockRequestWithReply(
          url: 'https://apse1.api.affinidi.io/iam/v1/consumer/oauth2/token',
          httpMethod: HttpMethod.post,
          statusCode: 200,
          data: {
            'access_token': didNotMatchingAccessToken,
          },
        );

        await expectLater(
            provider.fetchConsumerToken(),
            throwsA(isA<TdkException>().having((error) => error.code, 'code',
                TdkExceptionType.consumerTokenDidMismatch.code)));
      });
    });

    group('and the token was issued for the correct user DID', () {
      test('it does not throw an exception', () async {
        final didSigner = await DidSignerFixture.withSeed(seed);
        final provider =
            ConsumerAuthProvider(signer: didSigner, client: client);

        final didMatchingAccessToken =
            'eyJ0eXAiOiJKV1QiLCJhbGciOiJFUzI1NiIsImtpZCI6ImQyMjdiMDI4LTlkNjQtNGNlOS05N2UwLWEyODcyM2UyN2IxOCJ9.eyJzdWIiOiJkaWQ6a2V5OnpRM3NoYTU2amdMMzM3NXV0dnVtVGFmQ0ZlTE1NQ1JtdnNnZ3k2TFlkYVlzejFRSjEiLCJhdWQiOiJodHRwczovL2Fwc2UxLmFwaS5hZmZpbmlkaS5pbyIsImlzcyI6Imh0dHBzOi8vYXBzZTEuYXBpLmFmZmluaWRpLmlvL2lhbSIsImlhdCI6MTc0NzA1MjkxNCwiZXhwIjoxNzQ3MDU2NTE0LCJqdGkiOiIwODUyZjM1Ni0yMjBhLTQwZWEtYjg0Mi1lMzUyZDM0ZTdlMWQifQ.t4s-UUzwsPyU8oVO1B7MU0v-yxLQi_Un246qMdtLco8dHP7mpOuEvQ9f82W6egXbXDAg6z4H1WlMk9G0xA5mww';
        dioAdapter.mockRequestWithReply(
          url: 'https://apse1.api.affinidi.io/iam/v1/consumer/oauth2/token',
          httpMethod: HttpMethod.post,
          statusCode: 200,
          data: {'access_token': didMatchingAccessToken},
        );

        final token = await provider.fetchConsumerToken();
        expect(token, isNotEmpty);
      });
    });
  });
}
