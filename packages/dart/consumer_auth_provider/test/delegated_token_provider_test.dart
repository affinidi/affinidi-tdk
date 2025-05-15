import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';
import 'package:affinidi_tdk_consumer_auth_provider/src/exceptions/tdk_exception_type.dart';
import 'package:affinidi_tdk_test_utilities/affinidi_tdk_test_utilities.dart';
import 'package:test/test.dart';

import 'fixtures/did_signer_fixture.dart';

void main() {
  final client = DioFixtures.client;
  late DioAdapter dioAdapter;

  setUp(() {
    dioAdapter = DioAdapterFixtures.adapter(client);
  });

  tearDown(() {
    dioAdapter.reset();
  });

  group('When retrieving a delegated auth access token', () {
    final validDid =
        'did:key:zQ3sha56jgL3375utvumTafCFeLMMCRmvsggy6LYdaYsz1QJ1';
    final invalidDid =
        'did:key:zQ3sha56jgL3375utvumTafCFeLMMCRmvsggy6LYdaYsz1QJ2';

    group('and uses a DidSigner with an invalid algorithm', () {
      test('it throws an exception with code unableToGetSignatureScheme',
          () async {
        final didSigner = await DidSignerFixture.withInvalidAlgorithm(
            'a1772b144344781f2a55fc4d5e49f3767bb0967205ad08454a09c76d96fd2ccd');

        final provider = ConsumerAuthProvider(signer: didSigner);

        await expectLater(
            provider.fetchDelegatedToken(profileDid: validDid),
            throwsA(isA<TdkException>().having((error) => error.code, 'code',
                TdkExceptionType.unableToGetSignatureScheme.code)));
      });
    });

    group('and the token was issued for a different user did', () {
      test('it throws an exception with code delegatedTokenDidMismatch',
          () async {
        final didSigner = await DidSignerFixture.withSeed(
            'a1772b144344781f2a55fc4d5e49f3767bb0967205ad08454a09c76d96fd2ccd');
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
            provider.fetchDelegatedToken(profileDid: invalidDid),
            throwsA(isA<TdkException>().having((error) => error.code, 'code',
                TdkExceptionType.delegatedTokenDidMismatch.code)));
      });
    });

    group('and the token was issued for the correct user DID', () {
      group('and the token was issued without a grantee DID', () {
        test(
            'it throws an exception with code delegatedTokenGranteeDidMismatch',
            () async {
          final didSigner = await DidSignerFixture.withSeed(
              'a1772b144344781f2a55fc4d5e49f3767bb0967205ad08454a09c76d96fd2ccd');
          final provider =
              ConsumerAuthProvider(signer: didSigner, client: client);

          final didMatchingGranteeMissingAccessToken =
              'eyJ0eXAiOiJKV1QiLCJhbGciOiJFUzI1NiIsImtpZCI6ImQyMjdiMDI4LTlkNjQtNGNlOS05N2UwLWEyODcyM2UyN2IxOCJ9.eyJzdWIiOiJkaWQ6a2V5OnpRM3NoYTU2amdMMzM3NXV0dnVtVGFmQ0ZlTE1NQ1JtdnNnZ3k2TFlkYVlzejFRSjEiLCJhdWQiOiJodHRwczovL2Fwc2UxLmFwaS5hZmZpbmlkaS5pbyIsImlzcyI6Imh0dHBzOi8vYXBzZTEuYXBpLmFmZmluaWRpLmlvL2lhbSIsImlhdCI6MTc0NzA1MjkxNCwiZXhwIjoxNzQ3MDU2NTE0LCJqdGkiOiIwODUyZjM1Ni0yMjBhLTQwZWEtYjg0Mi1lMzUyZDM0ZTdlMWQifQ.Upwax9ZIs4wO6yvvwz4rWk-yPXbCKYUGnHkOh2Hkg7AJuEFo13gRdSIgLrfC08bAeiPUTKvGO-Eilnnq84k6BA';
          dioAdapter.mockRequestWithReply(
            url: 'https://apse1.api.affinidi.io/iam/v1/consumer/oauth2/token',
            httpMethod: HttpMethod.post,
            statusCode: 200,
            data: {
              'access_token': didMatchingGranteeMissingAccessToken,
            },
          );

          await expectLater(
              provider.fetchDelegatedToken(profileDid: validDid),
              throwsA(isA<TdkException>().having((error) => error.code, 'code',
                  TdkExceptionType.delegatedTokenGranteeDidMismatch.code)));
        });
      });

      group('and the token was issued for the wrong grantee DID', () {
        test(
            'it throws an exception with code delegatedTokenGranteeDidMismatch',
            () async {
          final didSigner = await DidSignerFixture.withSeed(
              'a1772b144344781f2a55fc4d5e49f3767bb0967205ad08454a09c76d96fd2ccd');
          final provider =
              ConsumerAuthProvider(signer: didSigner, client: client);

          final didMatchingGranteeNotMatchingAccessToken =
              'eyJ0eXAiOiJKV1QiLCJhbGciOiJFUzI1NiIsImtpZCI6ImQyMjdiMDI4LTlkNjQtNGNlOS05N2UwLWEyODcyM2UyN2IxOCJ9.eyJzdWIiOiJkaWQ6a2V5OnpRM3NoYTU2amdMMzM3NXV0dnVtVGFmQ0ZlTE1NQ1JtdnNnZ3k2TFlkYVlzejFRSjEiLCJhY3QiOnsic3ViIjoiZGlkOmtleTp6UTNzaGE1NmpnTDMzNzV1dHZ1bVRhZkNGZUxNTUNSbXZzZ2d5NkxZZGFZc3oxUUoyIn0sImF1ZCI6Imh0dHBzOi8vYXBzZTEuYXBpLmFmZmluaWRpLmlvIiwiaXNzIjoiaHR0cHM6Ly9hcHNlMS5hcGkuYWZmaW5pZGkuaW8vaWFtIiwiaWF0IjoxNzQ3MDUyOTE0LCJleHAiOjE3NDcwNTY1MTQsImp0aSI6IjA4NTJmMzU2LTIyMGEtNDBlYS1iODQyLWUzNTJkMzRlN2UxZCJ9.6FpjQvU00FkW7061cG48mqGfmN5cX3nIjjAd47jhoJl9lyyLNxKf7Qqp9A3E60ywIT1w2-QnlRLEN_QV0giOwA';
          dioAdapter.mockRequestWithReply(
            url: 'https://apse1.api.affinidi.io/iam/v1/consumer/oauth2/token',
            httpMethod: HttpMethod.post,
            statusCode: 200,
            data: {
              'access_token': didMatchingGranteeNotMatchingAccessToken,
            },
          );

          await expectLater(
              provider.fetchDelegatedToken(profileDid: validDid),
              throwsA(isA<TdkException>().having((error) => error.code, 'code',
                  TdkExceptionType.delegatedTokenGranteeDidMismatch.code)));
        });
      });

      group('and the token was issued for the correct grantee DID', () {
        test('it does not throw an exception', () async {
          final didSigner = await DidSignerFixture.withSeed(
              'a1772b144344781f2a55fc4d5e49f3767bb0967205ad08454a09c76d96fd2ccd');
          final provider =
              ConsumerAuthProvider(signer: didSigner, client: client);

          final bothDidAndGranteeMatchingAccessToken =
              'eyJ0eXAiOiJKV1QiLCJhbGciOiJFUzI1NiIsImtpZCI6ImQyMjdiMDI4LTlkNjQtNGNlOS05N2UwLWEyODcyM2UyN2IxOCJ9.eyJzdWIiOiJkaWQ6a2V5OnpRM3NoYTU2amdMMzM3NXV0dnVtVGFmQ0ZlTE1NQ1JtdnNnZ3k2TFlkYVlzejFRSjEiLCJhY3QiOnsic3ViIjoiZGlkOmtleTp6UTNzaGE1NmpnTDMzNzV1dHZ1bVRhZkNGZUxNTUNSbXZzZ2d5NkxZZGFZc3oxUUoxIn0sImF1ZCI6Imh0dHBzOi8vYXBzZTEuYXBpLmFmZmluaWRpLmlvIiwiaXNzIjoiaHR0cHM6Ly9hcHNlMS5hcGkuYWZmaW5pZGkuaW8vaWFtIiwiaWF0IjoxNzQ3MDUyOTE0LCJleHAiOjE3NDcwNTY1MTQsImp0aSI6IjA4NTJmMzU2LTIyMGEtNDBlYS1iODQyLWUzNTJkMzRlN2UxZCJ9.q2nl2q4WvGBBXKaZS8ZVGmRDamcA-dAMcbu3yYiBAFIpn0ISUPBZ0fDwdURZJ1EboNGDcYy5R89kDtYiTLfz7g';
          dioAdapter.mockRequestWithReply(
            url: 'https://apse1.api.affinidi.io/iam/v1/consumer/oauth2/token',
            httpMethod: HttpMethod.post,
            statusCode: 200,
            data: {
              'access_token': bothDidAndGranteeMatchingAccessToken,
            },
          );

          final token =
              await provider.fetchDelegatedToken(profileDid: validDid);
          expect(token, isNotEmpty);
        });
      });
    });
  });
}
