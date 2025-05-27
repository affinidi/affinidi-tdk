import 'package:affinidi_tdk_claim_verifiable_credential/oid4vci_claim_verifiable_credential.dart';
import 'package:affinidi_tdk_claim_verifiable_credential/src/exceptions/tdk_exception_type.dart';
import 'package:affinidi_tdk_test_utilities/affinidi_tdk_test_utilities.dart';
import 'package:dio/dio.dart';
import 'package:ssi/ssi.dart';
import 'package:test/test.dart';

import 'fixtures/credential_claim_context_fixtures.dart';
import 'fixtures/environment_fixtures.dart';
import 'fixtures/response_fixtures.dart';

// Global Constants
const testTokenEndpoint = 'https://issuer.com/token';
const testCredentialEndpoint = 'https://issuer.com/credential';
const testOfferUrl = 'https://issuer.com/offer';
String makeOfferUrl({String? credentialOfferUrl}) {
  final uri = 'https://test.com/offer';
  if (credentialOfferUrl != null) {
    return '$uri?credential_offer_uri=$credentialOfferUrl';
  }
  return uri;
}

final validCredentialOfferUrl = makeOfferUrl(credentialOfferUrl: testOfferUrl);

void main() async {
  final credentialClaimContext = OID4VCIClaimContextFixtures.general(
    tokenEndpoint: testTokenEndpoint,
    credentialEndpoint: testCredentialEndpoint,
  );
  final client = Dio(BaseOptions(
    validateStatus: (status) => true,
    contentType: 'application/json',
    responseType: ResponseType.json,
  ));
  final seed = EnvironmentFixtures.testEnvironment.seed;

  // WARNING: Don't use this seed in production! Generate a secure one instead.
  final wallet = Bip32Wallet.fromSeed(seed);
  final keyId = "m/44'/0'/0'/0/0";
  final keyPair = await wallet.generateKey(keyId: keyId);

  final didDocument = DidKey.generateDocument(keyPair.publicKey);
  final signer = DidSigner(
    didDocument: didDocument,
    didKeyId: didDocument.verificationMethod.first.id,
    keyPair: keyPair,
    signatureScheme: SignatureScheme.ecdsa_secp256k1_sha256,
  );

  // Create a new instance of ClaimVerifiableCredentialService
  final claimVerifiableCredentialService =
      OID4VCIClaimVerifiableCredentialService(
    didSigner: signer,
    client: client,
  );

  late DioAdapter dioAdapter;

  setUp(() {
    dioAdapter = DioAdapterFixtures.adapter(client);
  });

  tearDown(() {
    dioAdapter.reset();
  });

  group('When loading a credential offer', () {
    group('and the credential offer url is missing', () {
      test('it throws an exception with code missing_uri', () async {
        final nullCredentialOfferUrl = makeOfferUrl(credentialOfferUrl: null);
        final uri = Uri.parse(nullCredentialOfferUrl);

        expect(
            () => claimVerifiableCredentialService.loadCredentialOffer(uri),
            throwsA(isA<TdkException>().having((error) => error.code, 'code',
                TdkExceptionType.missingUri.code)));
      });
    });

    group('and the credential offer url is empty', () {
      test('it throws an exception with code missing_uri', () async {
        final emptyCredentialOfferUrl = makeOfferUrl(credentialOfferUrl: '');
        final uri = Uri.parse(emptyCredentialOfferUrl);

        expect(
            () => claimVerifiableCredentialService.loadCredentialOffer(uri),
            throwsA(isA<TdkException>().having((error) => error.code, 'code',
                TdkExceptionType.missingUri.code)));
      });
    });

    group('and metadata is invalid', () {
      test('it throws an exception with code failed_to_load_issuer_metadata',
          () async {
        dioAdapter.mockRequestWithReply(
          url:
              '${Uri.parse(testOfferUrl).origin}/.well-known/openid-credential-issuer',
          statusCode: 200,
          data: {'id1': 'one', 'id2': 'two'},
          httpMethod: HttpMethod.get,
        );

        dioAdapter.mockRequestWithReply(
          url: testOfferUrl,
          statusCode: 200,
          data: ResponseFixtures.credentialOffer,
          httpMethod: HttpMethod.get,
        );

        final uri = Uri.parse(validCredentialOfferUrl);
        expect(
            () => claimVerifiableCredentialService.loadCredentialOffer(uri),
            throwsA(isA<TdkException>().having((error) => error.code, 'code',
                TdkExceptionType.failedToLoadIssuerMetadata.code)));
      });
    });

    group('and metadata is valid', () {
      setUp(() {
        dioAdapter.mockRequestWithReply(
          url:
              '${Uri.parse(testOfferUrl).origin}/.well-known/openid-credential-issuer',
          statusCode: 200,
          data: ResponseFixtures.issuerMetaData(
            tokenEndpoint: testTokenEndpoint,
            credentialEndpoint: testCredentialEndpoint,
          ),
          httpMethod: HttpMethod.get,
        );
      });

      group('and offer exists', () {
        test('it retrieves the credential offer successfully', () async {
          dioAdapter.mockRequestWithReply(
            url: testOfferUrl,
            statusCode: 200,
            data: ResponseFixtures.credentialOffer,
            httpMethod: HttpMethod.get,
          );

          final uri = Uri.parse(validCredentialOfferUrl);
          final result =
              await claimVerifiableCredentialService.loadCredentialOffer(uri);

          expect(result, isA<OID4VCIClaimContext>());
          expect(result.issuerMetadata.tokenEndpoint, testTokenEndpoint);
          expect(
              result.issuerMetadata.credentialEndpoint, testCredentialEndpoint);
          expect(result.issuerMetadata.returnUris, isEmpty);
          expect(result.credentialOffer.credentialIdentifier,
              'test_credential_id');
          expect(result.credentialOffer.preAuthCode, 'test_pre_auth_code');
          expect(result.credentialOffer.isTxCodeRequired, true);
        });
      });

      group('and offer does not exists', () {
        test('it throws an exception with code failed_to_load_credential_offer',
            () async {
          dioAdapter.mockRequestWithReply(
            url: testOfferUrl,
            statusCode: 400,
            data: ResponseFixtures.invalidIssuanceId,
          );

          final uri = Uri.parse(validCredentialOfferUrl);
          expect(
              () => claimVerifiableCredentialService.loadCredentialOffer(uri),
              throwsA(isA<TdkException>().having((error) => error.code, 'code',
                  TdkExceptionType.failedToLoadCredentialOffer.code)));
        });
      });

      group('and there is a server error', () {
        test('it throws an exception with code server_error', () async {
          dioAdapter.mockRequestWithReply(
            url: testOfferUrl,
            statusCode: 500,
            data: ResponseFixtures.error(message: 'Server error'),
            httpMethod: HttpMethod.get,
          );

          final uri = Uri.parse(validCredentialOfferUrl);
          expect(
            () => claimVerifiableCredentialService.loadCredentialOffer(uri),
            throwsA(isA<TdkException>().having((error) => error.code, 'code',
                TdkExceptionType.serverError.code)),
          );
        });
      });

      group('and there are network connectivity issues', () {
        test('it throws an exception with code network_error', () async {
          dioAdapter.mockRequestWithException(
            url: testOfferUrl,
            exception: DioExceptionFixtures.socketException,
            httpMethod: HttpMethod.get,
          );

          final uri = Uri.parse(validCredentialOfferUrl);
          expect(
            () => claimVerifiableCredentialService.loadCredentialOffer(uri),
            throwsA(isA<TdkException>().having((error) => error.code, 'code',
                TdkExceptionType.networkError.code)),
          );
        });
      });

      group('and there are unknown errors', () {
        test('it throws an exception with code failed_to_load_credential_offer',
            () async {
          dioAdapter.mockRequestWithException(
            url: testOfferUrl,
            exception: DioExceptionFixtures.httpExceptionWithMessage(
                message: 'unkwnon'),
          );

          final uri = Uri.parse(validCredentialOfferUrl);
          expect(
            () => claimVerifiableCredentialService.loadCredentialOffer(uri),
            throwsA(isA<TdkException>().having(
              (error) => error.code,
              'code',
              TdkExceptionType.failedToLoadCredentialOffer.code,
            )),
          );
        });
      });

      group('and the reponse has an empty body', () {
        test('it throws an exception with code failed_to_load_credential_offer',
            () async {
          dioAdapter.mockRequestWithReply(
            url: testOfferUrl,
            statusCode: 200,
            data: ResponseFixtures.empty,
          );

          final uri = Uri.parse(validCredentialOfferUrl);
          expect(
              () => claimVerifiableCredentialService.loadCredentialOffer(uri),
              throwsA(isA<TdkException>().having((error) => error.code, 'code',
                  TdkExceptionType.failedToLoadCredentialOffer.code)));
        });
      });

      group('and the credential offer has expired', () {
        test('it throws an exception with code credential_offer_expired',
            () async {
          dioAdapter.mockRequestWithReply(
            url:
                '${Uri.parse(testOfferUrl).origin}/.well-known/openid-credential-issuer',
            statusCode: 200,
            data: ResponseFixtures.issuerMetaData(
              tokenEndpoint: testTokenEndpoint,
              credentialEndpoint: testCredentialEndpoint,
            ),
            httpMethod: HttpMethod.get,
          );

          dioAdapter.mockRequestWithReply(
            url: testOfferUrl,
            statusCode: 400,
            data: ResponseFixtures.loadExpiredCredentialOffer,
            httpMethod: HttpMethod.get,
          );

          final uri = Uri.parse(validCredentialOfferUrl);
          expect(
            () => claimVerifiableCredentialService.loadCredentialOffer(uri),
            throwsA(isA<TdkException>().having((error) => error.code, 'code',
                TdkExceptionType.credentialOfferExpired.code)),
          );
        });
      });
    });
  });

  group('When claiming a credential', () {
    group('and there is a server error', () {
      test('it throws an exception with code server_error', () async {
        dioAdapter.mockRequestWithReply(
          url: testTokenEndpoint,
          statusCode: 500,
          data: ResponseFixtures.claimError(message: 'Server error'),
          httpMethod: HttpMethod.post,
        );

        expect(
          () => claimVerifiableCredentialService.claimCredential(
              claimContext: credentialClaimContext),
          throwsA(isA<TdkException>().having((error) => error.code, 'code',
              TdkExceptionType.serverError.code)),
        );
      });
    });

    group('and there are network connectivity issues', () {
      test('it throws an exception with code network_error', () async {
        dioAdapter.mockRequestWithException(
          url: testTokenEndpoint,
          exception: DioExceptionFixtures.socketException,
          httpMethod: HttpMethod.post,
        );

        expect(
          () => claimVerifiableCredentialService.claimCredential(
              claimContext: credentialClaimContext),
          throwsA(isA<TdkException>().having((error) => error.code, 'code',
              TdkExceptionType.networkError.code)),
        );
      });
    });

    group('and there are unknown errors', () {
      test('it throws an exception with code failed_to_load_credential_offer',
          () async {
        dioAdapter.mockRequestWithException(
          url: testOfferUrl,
          exception:
              DioExceptionFixtures.httpExceptionWithMessage(message: 'unkwnon'),
        );

        expect(
          () => claimVerifiableCredentialService.claimCredential(
              claimContext: credentialClaimContext),
          throwsA(isA<TdkException>().having(
            (error) => error.code,
            'code',
            TdkExceptionType.failedToClaimCredential.code,
          )),
        );
      });
    });

    group('and its missing the access token', () {
      test('it throws an exception with code failed_to_load_credential_offer',
          () async {
        dioAdapter.mockRequestWithReply(
          url: makeOfferUrl(credentialOfferUrl: testOfferUrl),
          statusCode: 200,
          data: ResponseFixtures.empty,
        );

        expect(
            () => claimVerifiableCredentialService.claimCredential(
                claimContext: credentialClaimContext),
            throwsA(isA<TdkException>().having((error) => error.code, 'code',
                TdkExceptionType.failedToClaimCredential.code)));
      });
    });

    group('and providing the wrong transaction code', () {
      const wrongTxCode = '999999';

      test('it throws an exception with unmatched_tx_code', () async {
        dioAdapter.mockRequestWithReply(
          url: testTokenEndpoint,
          statusCode: 400,
          data: ResponseFixtures.claimCredentialOfferUnmatchedTxCodeError,
          httpMethod: HttpMethod.post,
        );

        expect(
          () => claimVerifiableCredentialService.claimCredential(
              claimContext: credentialClaimContext, txCode: wrongTxCode),
          throwsA(isA<TdkException>().having((error) => error.code, 'code',
              TdkExceptionType.unmatchedTxCode.code)),
        );
      });
    });

    group('and the credential offer has expired', () {
      test('it throws an exception with credential_offer_expired', () async {
        dioAdapter.mockRequestWithReply(
          url: testTokenEndpoint,
          statusCode: 200,
          data: ResponseFixtures.accessToken,
          httpMethod: HttpMethod.post,
        );
        dioAdapter.mockRequestWithReply(
          url: testCredentialEndpoint,
          statusCode: 400,
          data: ResponseFixtures.claimExpiredCredentialOffer,
          httpMethod: HttpMethod.post,
        );

        expect(
          () => claimVerifiableCredentialService.claimCredential(
              claimContext: credentialClaimContext),
          throwsA(isA<TdkException>().having((error) => error.code, 'code',
              TdkExceptionType.credentialOfferExpired.code)),
        );
      });
    });

    group('and the credential offer response has an unknown error', () {
      test('it throws an exception with code other', () async {
        dioAdapter.mockRequestWithReply(
          url: testTokenEndpoint,
          statusCode: 200,
          data: ResponseFixtures.accessToken,
          httpMethod: HttpMethod.post,
        );
        dioAdapter.mockRequestWithReply(
          url: testCredentialEndpoint,
          statusCode: 400,
          data: ResponseFixtures.claimCredentialOfferUnknownError,
          httpMethod: HttpMethod.post,
        );

        expect(
          () => claimVerifiableCredentialService.claimCredential(
              claimContext: credentialClaimContext),
          throwsA(isA<TdkException>().having(
              (error) => error.code, 'code', TdkExceptionType.other.code)),
        );
      });
    });

    group('and the credential has already been claimed', () {
      test('it throws an exception with credential_offer_claimed', () async {
        dioAdapter.mockRequestWithReply(
          url: testTokenEndpoint,
          statusCode: 400,
          data: ResponseFixtures.claimCredentialOfferAlreadyClaimedError,
          httpMethod: HttpMethod.post,
        );

        expect(
          () => claimVerifiableCredentialService.claimCredential(
              claimContext: credentialClaimContext),
          throwsA(isA<TdkException>().having((error) => error.code, 'code',
              TdkExceptionType.credentialOfferClaimed.code)),
        );
      });
    });

    group('and successfully claims a credential', () {
      test('it returns a valid VerifiableCredential', () async {
        dioAdapter.mockRequestWithReply(
          url: testTokenEndpoint,
          statusCode: 200,
          data: ResponseFixtures.accessToken,
          httpMethod: HttpMethod.post,
        );
        dioAdapter.mockRequestWithReply(
          url: testCredentialEndpoint,
          statusCode: 200,
          data: ResponseFixtures.validVerifiableCredential,
          httpMethod: HttpMethod.post,
        );

        final result = await claimVerifiableCredentialService.claimCredential(
            claimContext: credentialClaimContext);

        expect(result, isA<VerifiableCredential>());
        expect(result.id.toString(), equals('claimid:02-aaaaaa-aaaaaaaaaaa'));
        expect(result.type, contains('VerifiableCredential'));
        expect(
            result.issuer.id.toString(),
            equals(
                'did:key:aaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaa'));
      });
    });

    group('and the access token request fails', () {
      test('it throws an exception with invalid_proof when proof is invalid',
          () async {
        dioAdapter.mockRequestWithReply(
          url: testTokenEndpoint,
          statusCode: 400,
          data: {
            'error': 'invalid_proof',
            'error_description':
                'The proof in the Credential Request is invalid'
          },
          httpMethod: HttpMethod.post,
        );

        expect(
          () => claimVerifiableCredentialService.claimCredential(
              claimContext: credentialClaimContext),
          throwsA(isA<TdkException>().having((error) => error.code, 'code',
              TdkExceptionType.invalidCredentialProof.code)),
        );
      });

      test('it throws an exception with expired_token when token is expired',
          () async {
        dioAdapter.mockRequestWithReply(
          url: testTokenEndpoint,
          statusCode: 400,
          data: {
            'error': 'expired_token',
            'error_description': 'The access token has expired'
          },
          httpMethod: HttpMethod.post,
        );

        expect(
          () => claimVerifiableCredentialService.claimCredential(
              claimContext: credentialClaimContext),
          throwsA(isA<TdkException>().having((error) => error.code, 'code',
              TdkExceptionType.expiredToken.code)),
        );
      });

      test('it throws an exception with serverError when server error occurs',
          () async {
        dioAdapter.mockRequestWithReply(
          url: testTokenEndpoint,
          statusCode: 400,
          data: {
            'error': 'serverError',
            'error_description': 'Internal server error'
          },
          httpMethod: HttpMethod.post,
        );

        expect(
          () => claimVerifiableCredentialService.claimCredential(
              claimContext: credentialClaimContext),
          throwsA(isA<TdkException>().having((error) => error.code, 'code',
              TdkExceptionType.serverError.code)),
        );
      });

      test('it throws an exception with other when unknown error occurs',
          () async {
        dioAdapter.mockRequestWithReply(
          url: testTokenEndpoint,
          statusCode: 400,
          data: {
            'error': 'unknown_error',
            'error_description': 'An unknown error occurred'
          },
          httpMethod: HttpMethod.post,
        );

        expect(
          () => claimVerifiableCredentialService.claimCredential(
              claimContext: credentialClaimContext),
          throwsA(isA<TdkException>().having(
              (error) => error.code, 'code', TdkExceptionType.other.code)),
        );
      });
    });
  });
}
