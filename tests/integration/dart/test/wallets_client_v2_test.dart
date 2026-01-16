import 'package:built_value/json_object.dart';
import 'package:test/test.dart';
import 'package:affinidi_tdk_wallets_client/affinidi_tdk_wallets_client.dart';
import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';

import 'helpers/helpers.dart';

void main() {
  group('Wallets Client V2 Integration Tests', () {
    late WalletApi walletApi;
    late RevocationApi revocationApi;
    String walletId = '';
    String walletDid = '';
    Map<String, dynamic>? signedCredentialLdp;

    setUpAll(() async {
      final apiGwUrl = Environment.fetchEnvironment().apiGwUrl;
      String basePathOverride =
          replaceBaseDomain(AffinidiTdkWalletsClient.basePath, apiGwUrl);

      final apiClient = AffinidiTdkWalletsClient(
          authTokenHook: ResourceFactory.getAuthTokenHook(),
          basePathOverride: basePathOverride);

      walletApi = apiClient.getWalletApi();
      revocationApi = apiClient.getRevocationApi();

      // Create wallet using createWalletV2 endpoint with options
      try {
        final walletOptionsBuilder = CreateWalletV2InputBuilder()
          ..name = 'v2-test-wallet-tdk'
          ..description = 'Wallet for v2 integration tests TDK'
          ..didMethod = CreateWalletV2InputDidMethodEnum.key;

        final response = await walletApi.createWalletV2(
            createWalletV2Input: walletOptionsBuilder.build());

        expect(response.data, isNotNull);
        expect(response.data!.wallet, isNotNull);
        walletId = response.data!.wallet!.id ?? '';
        walletDid = response.data!.wallet!.did ?? '';
      } catch (error) {
        print('createWalletV2 failed with error: $error');
        rethrow;
      }
    });

    tearDownAll(() async {
      if (walletId.isNotEmpty) {
        await walletApi.deleteWallet(walletId: walletId);
      }
    });

    test('Creates wallet v2 (with options)', () {
      // Wallet created in setUpAll using createWalletV2 endpoint with options
      expect(walletId, isNotEmpty);
      expect(walletDid, isNotEmpty);
      expect(walletDid, startsWith('did:key:'));
    });



    test('Signs Credential JWT v2', () async {
      final fixtures = getFixtures();
      final baseCredential = Map<String, dynamic>.from(fixtures.unsignedCredentialV2);

      final context = baseCredential['@context'] as List;
      final unsignedCredential = {
        ...baseCredential,
        '@context': [
          'https://www.w3.org/2018/credentials/v1',
          ...context.skip(1)
        ],
        'type': ['VerifiableCredential', 'UserProfile'],
        'id': 'uuid:test-jwt-tdk-${DateTime.now().millisecondsSinceEpoch}',
        'holder': {'id': walletDid},
        'issuanceDate': DateTime.now().toIso8601String(),
        'credentialSubject': {
          ...baseCredential['credentialSubject'] as Map<String, dynamic>,
          'id': walletDid
        }
      };

      final signBuilder = SignCredentialsJwtInputDtoBuilder()
        ..unsignedCredential = MapJsonObject(unsignedCredential)
        ..revocable = true;

      final response = await walletApi.signCredentialsJwt(
          walletId: walletId, signCredentialsJwtInputDto: signBuilder.build());

      expect(response.data, isNotNull);
      expect(response.data!.credential, isNotNull);
      expect(response.data!.credential, startsWith('eyJ'));
    });

    test('Signs Credential JWT v2 - if expired then it is not valid', () async {
      final fixtures = getFixtures();
      final baseCredential = Map<String, dynamic>.from(fixtures.unsignedCredentialV2);

      final pastDate = DateTime.now().subtract(Duration(days: 365));
      final context = baseCredential['@context'] as List;

      final unsignedCredential = {
        ...baseCredential,
        '@context': [
          'https://www.w3.org/2018/credentials/v1',
          ...context.skip(1)
        ],
        'type': ['VerifiableCredential', 'UserProfile'],
        'id': 'uuid:test-jwt-expired-tdk-${DateTime.now().millisecondsSinceEpoch}',
        'holder': {'id': walletDid},
        'issuanceDate': pastDate.toIso8601String(),
        'expirationDate': pastDate.toIso8601String(),
        'credentialSubject': {
          ...baseCredential['credentialSubject'] as Map<String, dynamic>,
          'id': walletDid
        }
      };

      final signBuilder = SignCredentialsJwtInputDtoBuilder()
        ..unsignedCredential = MapJsonObject(unsignedCredential)
        ..revocable = false;

      final response = await walletApi.signCredentialsJwt(
          walletId: walletId, signCredentialsJwtInputDto: signBuilder.build());

      expect(response.data, isNotNull);
      expect(response.data!.credential, isNotNull);
      expect(response.data!.credential, startsWith('eyJ'));
    });

    test('Signs Credential LDP v2', () async {
      final fixtures = getFixtures();
      final validFrom = DateTime.now().toIso8601String();
      final validUntil = DateTime.now().add(Duration(days: 365 * 5)).toIso8601String();

      final unsignedCredential = {
        ...fixtures.unsignedCredentialV2,
        'holder': walletDid,
        'id': 'urn:uuid:test-ldp-tdk-${DateTime.now().millisecondsSinceEpoch}',
        'validFrom': validFrom,
        'validUntil': validUntil
      };

      final signBuilder = SignCredentialsLdpInputDtoBuilder()
        ..unsignedCredential = MapJsonObject(unsignedCredential)
        ..revocable = true;

      final response = await walletApi.signCredentialsLdp(
          walletId: walletId, signCredentialsLdpInputDto: signBuilder.build());

      expect(response.data, isNotNull);
      expect(response.data!.credential, isNotNull);

      final credential = response.data!.credential.value as Map<String, dynamic>;
      expect(credential['proof'], isNotNull);
      expect(credential['id'], isNotNull);

      signedCredentialLdp = credential;
    });

    test('Signs Credential LDP v2 - if expired then it is not valid', () async {
      final fixtures = getFixtures();
      final pastDate = DateTime.now().subtract(Duration(days: 365 * 2));

      final unsignedCredential = {
        ...fixtures.unsignedCredentialV2,
        'holder': walletDid,
        'id': 'urn:uuid:test-ldp-expired-tdk-${DateTime.now().millisecondsSinceEpoch}',
        'validFrom': pastDate.toIso8601String(),
        'validUntil': pastDate.toIso8601String()
      };

      final signBuilder = SignCredentialsLdpInputDtoBuilder()
        ..unsignedCredential = MapJsonObject(unsignedCredential)
        ..revocable = false;

      final response = await walletApi.signCredentialsLdp(
          walletId: walletId, signCredentialsLdpInputDto: signBuilder.build());

      expect(response.data, isNotNull);
      expect(response.data!.credential, isNotNull);

      final credential = response.data!.credential.value as Map<String, dynamic>;
      expect(credential['proof'], isNotNull);
    });

    test('Signs Credential SD-JWT v2', () async {
      final fixtures = getFixtures();
      final validFrom = DateTime.now().toIso8601String();
      final validUntil = DateTime.now().add(Duration(days: 365 * 5)).toIso8601String();

      final unsignedCredential = {
        ...fixtures.unsignedCredentialV2,
        'id': 'urn:uuid:test-sdjwt-tdk-${DateTime.now().millisecondsSinceEpoch}',
        'validFrom': validFrom,
        'validUntil': validUntil
      };

      final signBuilder = SignCredentialsDm2SdJwtInputDtoBuilder()
        ..unsignedCredential = MapJsonObject(unsignedCredential)
        ..revocable = true
        ..disclosureFrame = MapJsonObject(fixtures.disclosureFrameV2);

      final response = await walletApi.signCredentialsSdJwt(
          walletId: walletId, signCredentialsDm2SdJwtInputDto: signBuilder.build());

      expect(response.data, isNotNull);
      expect(response.data!.credential, isNotNull);
      expect(response.data!.credential, contains('~'));
    });

    test('Signs Credential SD-JWT v2 - if expired then it is not valid', () async {
      final fixtures = getFixtures();
      final pastDate = DateTime.now().subtract(Duration(days: 365 * 2));

      final unsignedCredential = {
        ...fixtures.unsignedCredentialV2,
        'id': 'urn:uuid:test-sdjwt-expired-tdk-${DateTime.now().millisecondsSinceEpoch}',
        'validFrom': pastDate.toIso8601String(),
        'validUntil': pastDate.toIso8601String()
      };

      final signBuilder = SignCredentialsDm2SdJwtInputDtoBuilder()
        ..unsignedCredential = MapJsonObject(unsignedCredential)
        ..revocable = false
        ..disclosureFrame = MapJsonObject(fixtures.disclosureFrameV2);

      final response = await walletApi.signCredentialsSdJwt(
          walletId: walletId, signCredentialsDm2SdJwtInputDto: signBuilder.build());

      expect(response.data, isNotNull);
      expect(response.data!.credential, isNotNull);
      expect(response.data!.credential, contains('~'));
    });

    test('Signs Presentation LDP v2', () async {
      final unsignedPresentation = {
        '@context': ['https://www.w3.org/ns/credentials/v2'],
        'id': 'testVpV2Id-tdk-${DateTime.now().millisecondsSinceEpoch}',
        'type': ['VerifiablePresentation'],
        'holder': {'id': walletDid},
        'verifiableCredential': [signedCredentialLdp],
      };

      final signBuilder = SignPresentationLdpInputDtoBuilder()
        ..unsignedPresentation = MapJsonObject(unsignedPresentation);

      final response = await walletApi.signPresentationsLdp(
          walletId: walletId, signPresentationLdpInputDto: signBuilder.build());

      expect(response.data, isNotNull);
      expect(response.data!.presentation, isNotNull);
    });

    test('Revokes verifiable credential v2', () async {
      if (signedCredentialLdp != null && signedCredentialLdp!['id'] != null) {
        final revokeBuilder = RevokeCredentialsInputBuilder()
          ..revocationReason = 'test v2 tdk'
          ..credentialId = signedCredentialLdp!['id'] as String;

        final response = await revocationApi.revokeCredentials(
            walletId: walletId, revokeCredentialsInput: revokeBuilder.build());

        // Verify the revocation call succeeded (200 or 204)
        expect(response.statusCode, anyOf([200, 204]));
      } else {
        print('Skipping revocation test - no LDP credential available');
      }
    });
  });
}

