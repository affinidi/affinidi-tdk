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
      final w3Context = W3cCredentialContextInnerBuilder()
        ..oneOf = OneOf2<BuiltMap<String, JsonObject>, String>(
            value: 'https://www.w3.org/2018/credentials/v1', typeIndex: 1);
      final schemaContext = W3cCredentialContextInnerBuilder()
        ..oneOf = OneOf2<BuiltMap<String, JsonObject>, String>(
            value: 'https://schema.affinidi.com/EmailV1-0.jsonld',
            typeIndex: 1);
      final credentialBuilder = W3cCredentialBuilder()
        ..atContext = ListBuilder([w3Context.build(), schemaContext.build()])
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
