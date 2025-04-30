import 'package:built_value/json_object.dart';
import 'package:dio/dio.dart';
import 'package:one_of/one_of.dart';
import 'package:test/test.dart';
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_auth_provider/affinidi_tdk_auth_provider.dart';
import 'package:affinidi_tdk_credential_verification_client/affinidi_tdk_credential_verification_client.dart';

import 'environment.dart';

void main() {
  group('Credential Verification Client Integration Tests', () {
    late DefaultApi verificationApi;

    setUp(() async {
      final env = getProjectEnvironment();
      final authProvider = AuthProvider(
        projectId: env.projectId,
        tokenId: env.tokenId,
        privateKey: env.privateKey,
        keyId: env.keyId,
        passphrase: env.passphrase,
      );
      final apiClient = AffinidiTdkCredentialVerificationClient(
          dio: Dio(BaseOptions(
        baseUrl: AffinidiTdkCredentialVerificationClient.basePath,
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 5),
      )), authTokenHook: authProvider.fetchProjectScopedToken);
      verificationApi = apiClient.getDefaultApi();
    });

    test('Verify VC', () async {
      final contextValue = JsonObject('https://schema.affinidi.com/TestEmployeeCredentialPersonNestedV1-2.jsonld');
      final contextMap = BuiltMap<String, JsonObject?>({
        '@context': contextValue,
      });

      final credentialBuilder = W3cCredentialBuilder()
        ..atContext.replace(contextMap)
        ..id = 'claimId:6f4532f45933189d'
        ..type = ListBuilder(['VerifiableCredential', 'TestEmployeeCredentialPersonNested'])
        ..holder = (W3cCredentialHolderBuilder()
          ..oneOf = OneOf2<JsonObject, String>(
              value: JsonObject({
                'id':
                    'did:elem:EiC9C2LaJrhrgrmXHyamViL15bcAT7P4wBfWefTfGfPoEA'
              }),
              typeIndex: 0))

        ..credentialSubject = (W3cCredentialCredentialSubjectBuilder()
          ..oneOf = OneOf2<BuiltList<String>, JsonObject>(
              value:
                  JsonObject({
                    'data': {
                      'name': 'Jon Snow',
                      'dateOfJoining': '2021-01-01',
                      'otherDetails': {
                        'githubLink': 'https://github.com/jon-snow'
                      }
                    }
                  }),
              typeIndex: 1))
        ..issuanceDate = '2021-10-21T20:58:21.217Z'
        ..issuer = 'did:elem:EiD78M2fskp7WgStA915l6xdynkm2PGIn4XtJLF3HFitLw;elem:initial-state=eyJwcm90ZWN0ZWQiOiJleUp2Y0dWeVlYUnBiMjRpT2lKamNtVmhkR1VpTENKcmFXUWlPaUlqY0hKcGJXRnllU0lzSW1Gc1p5STZJa1ZUTWpVMlN5SjkiLCJwYXlsb2FkIjoiZXlKQVkyOXVkR1Y0ZENJNkltaDBkSEJ6T2k4dmR6TnBaQzV2Y21jdmMyVmpkWEpwZEhrdmRqSWlMQ0p3ZFdKc2FXTkxaWGtpT2x0N0ltbGtJam9pSTNCeWFXMWhjbmtpTENKMWMyRm5aU0k2SW5OcFoyNXBibWNpTENKMGVYQmxJam9pVTJWamNESTFObXN4Vm1WeWFXWnBZMkYwYVc5dVMyVjVNakF4T0NJc0luQjFZbXhwWTB0bGVVaGxlQ0k2SWpBeU5tVmlaV0l3TTJFME56WmlPREJpWlRBd09EaGpaakUwTXpjMk9UTTVOR1l3TlRrNFpqZzNOVFEyT0dWbU1UUXdOakExTWpJMllURmxabUk1TkRaa01pSjlMSHNpYVdRaU9pSWpjbVZqYjNabGNua2lMQ0oxYzJGblpTSTZJbkpsWTI5MlpYSjVJaXdpZEhsd1pTSTZJbE5sWTNBeU5UWnJNVlpsY21sbWFXTmhkR2x2Ymt0bGVUSXdNVGdpTENKd2RXSnNhV05MWlhsSVpYZ2lPaUl3TXpKa1pESXlZekJqWTJZMFlUQmtOalV5TldFellUYzBaREUwT1dNeVl6TTNaalF6T1RrelpEUTVaV0ppTmpObU1qSmlObVUxWTJSa1lqSmhNREEwTURFaWZWMHNJbUYxZEdobGJuUnBZMkYwYVc5dUlqcGJJaU53Y21sdFlYSjVJbDBzSW1GemMyVnlkR2x2YmsxbGRHaHZaQ0k2V3lJamNISnBiV0Z5ZVNKZGZRIiwic2lnbmF0dXJlIjoiTHJoRDZhUzZMZHM4MnkwcWZmWjlSX1laUXhzSFNuQWxIWFpwUUVGaGoteEhsRExPb2pvM1piR2dBMDJ3b0hRVkdTUVhxdmtMTVVveTJjMmFjMWo3c1EifQ'
        ..proof = (W3cProofBuilder()
          ..type = 'EcdsaSecp256k1Signature2019'
          ..created = '2021-10-21T20:59:04Z'
          ..verificationMethod =
              'did:elem:EiD78M2fskp7WgStA915l6xdynkm2PGIn4XtJLF3HFitLw#primary'
          ..proofPurpose = 'assertionMethod'
          ..jws =
              'eyJhbGciOiJFUzI1NksiLCJiNjQiOmZhbHNlLCJjcml0IjpbImI2NCJdfQ..u6Cp6BLlSyVMVshDpiLzzcgeAAz7pSLJnFQaMSiBzlcbj93_zKZ3sermaHnlH_5qKwOsmMnRtx5VMDLqe8fSJw');
      final credential = credentialBuilder.build();

      final verifyCredentialInputBuilder = VerifyCredentialInputBuilder()
        ..verifiableCredentials = ListBuilder([credential]);
      final verificationResponse = (await verificationApi.verifyCredentials(
              verifyCredentialInput: verifyCredentialInputBuilder.build()))
          .data;
      expect(verificationResponse, isNotNull);
      expect(verificationResponse!.isValid, isTrue);
      expect(verificationResponse.errors, isEmpty);
    });

    test('Verify VC with multiple context values', () async {
      final contextValue = JsonObject([
        "https://www.w3.org/2018/credentials/v1",
        "https://schema.affinidi.com/EmailV1-0.jsonld"
      ]);

      final contextMap = BuiltMap<String, JsonObject?>({
        '@context': contextValue,
      });

      final credentialBuilder = W3cCredentialBuilder()
        ..atContext.replace(contextMap)
        ..id = 'claimId:63b5d11c0d1b5566'
        ..type = ListBuilder(['VerifiableCredential', 'Email'])
        ..holder = (W3cCredentialHolderBuilder()
          ..oneOf = OneOf2<JsonObject, String>(
              value: JsonObject({
                'id':
                    'did:key:zQ3shiEH16wHAfbQSSuYB1Lc3KSQC31W4gkaXKa8PgCSz83du'
              }),
              typeIndex: 0))
        ..credentialSubject = (W3cCredentialCredentialSubjectBuilder()
          ..oneOf = OneOf2<BuiltList<String>, JsonObject>(
              value:
                  JsonObject({'email': 'non-existant-email@non-existant.com'}),
              typeIndex: 1))
        ..credentialSchema = (W3cCredentialCredentialSchemaBuilder()
          ..id = 'https://schema.affinidi.com/EmailV1-0.json'
          ..type = 'JsonSchemaValidator2018')
        ..issuanceDate = '2024-05-30T19:14:31.964Z'
        ..expirationDate = '2025-05-30T19:14:31.964Z'
        ..issuer = 'did:key:zQ3shiEH16wHAfbQSSuYB1Lc3KSQC31W4gkaXKa8PgCSz83du'
        ..proof = (W3cProofBuilder()
          ..type = 'EcdsaSecp256k1Signature2019'
          ..created = '2024-05-30T19:14:31Z'
          ..verificationMethod =
              'did:key:zQ3shiEH16wHAfbQSSuYB1Lc3KSQC31W4gkaXKa8PgCSz83du#zQ3shiEH16wHAfbQSSuYB1Lc3KSQC31W4gkaXKa8PgCSz83du'
          ..proofPurpose = 'assertionMethod'
          ..jws =
              'eyJhbGciOiJFUzI1NksiLCJiNjQiOmZhbHNlLCJjcml0IjpbImI2NCJdfQ..FEqEKSPZCHKY9XuCywtOSBzhn1EHRFEle67bfJt-3wUFvMnk9pGmQO52EOCB65WcgXSesCgKasgXZKZOJXbF5A');

      final credential = credentialBuilder.build();
      final verifyCredentialInputBuilder = VerifyCredentialInputBuilder()
        ..verifiableCredentials = ListBuilder([credential]);
      final verificationResponse = (await verificationApi.verifyCredentials(
              verifyCredentialInput: verifyCredentialInputBuilder.build()))
          .data;
      expect(verificationResponse, isNotNull);
      expect(verificationResponse!.isValid, isTrue);
      expect(verificationResponse.errors, isEmpty);
    });
  });
}
