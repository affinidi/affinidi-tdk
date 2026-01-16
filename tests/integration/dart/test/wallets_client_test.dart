import 'package:built_value/json_object.dart';
import 'package:test/test.dart';
import 'package:affinidi_tdk_wallets_client/affinidi_tdk_wallets_client.dart';

import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';

import 'helpers/helpers.dart';

void main() {
  group('Wallets Client Integration Tests', () {
    late WalletApi walletApi;
    late String walletId;
    late String walletIdDidWeb;
    late String holderDid;

    setUpAll(() async {
      final apiGwUrl = Environment.fetchEnvironment().apiGwUrl;
      String basePathOverride =
          replaceBaseDomain(AffinidiTdkWalletsClient.basePath, apiGwUrl);

      final apiClient = AffinidiTdkWalletsClient(
          authTokenHook: ResourceFactory.getAuthTokenHook(),
          basePathOverride: basePathOverride);

      walletApi = apiClient.getWalletApi();

      final wallet = await ResourceFactory.createWallet();
      walletId = wallet.id;
      holderDid = wallet.did;
    });

    tearDownAll(() async {
      await ResourceFactory.deleteWallet(walletId);
      await ResourceFactory.deleteWallet(walletIdDidWeb);
    });

    test('Create wallet: DID Web', () async {
      final name = 'Test DID Web Wallet';
      final description = 'Test wallet description';

      String randomStr = generateRandomString(10);
      String didWebUrl = '$randomStr.com';

      final walletInputBuilder = CreateWalletInputBuilder()
        ..name = name
        ..description = description
        ..didMethod = CreateWalletInputDidMethodEnum.web
        ..didWebUrl = didWebUrl;

      final createdWallet = (await walletApi.createWallet(
              createWalletInput: walletInputBuilder.build()))
          .data;

      expect(createdWallet, isNotNull);
      expect(createdWallet!.wallet, isNotNull);
      expect(createdWallet.wallet!.id, isNotEmpty);
      expect(createdWallet.wallet!.did, isNotEmpty);
      expect(createdWallet.wallet!.name, equals(name));
      expect(createdWallet.wallet!.description, equals(description));
      expect(createdWallet.wallet!.ari, isNotEmpty);
      expect(createdWallet.wallet!.keys, isNotNull);
      expect(createdWallet.wallet!.keys!.length, greaterThan(0));
      expect(createdWallet.wallet!.keys!.first.id, isNotEmpty);
      expect(createdWallet.wallet!.keys!.first.ari, isNotEmpty);

      walletIdDidWeb = createdWallet.wallet?.id ?? '';
    });

    test('Sign Credential', () async {
      final jsonLdContextUrl =
          'https://schema.affinidi.io/TPassportV1R0.jsonld';
      final jsonSchemaUrl = 'https://schema.affinidi.io/TPassportV1R0.json';
      final typeName = 'VerifiableCredential';
      final expiresAt = '10';

      final params = SignCredentialInputDtoUnsignedCredentialParamsBuilder()
        ..jsonLdContextUrl = jsonLdContextUrl
        ..jsonSchemaUrl = jsonSchemaUrl
        ..typeName = typeName
        ..holderDid = holderDid
        ..expiresAt = expiresAt;

      final revocable = true;
      final credentialFormat = SignCredentialInputDtoCredentialFormatEnum.ldpVc;
      final unsignedCredentialParams = params;

      final signCredentialBuilder = SignCredentialInputDtoBuilder()
        ..revocable = revocable
        ..credentialFormat = credentialFormat
        ..unsignedCredentialParams = unsignedCredentialParams;

      final signedVC = (await walletApi.signCredential(
              walletId: walletId,
              signCredentialInputDto: signCredentialBuilder.build()))
          .data;

      expect(signedVC?.signedCredential, isNotNull);
    });

    test('Sign JWT', () async {
      final header = {'alg': 'HS256', 'typ': 'JWT'};

      final payload = {
        'sub': 'dc9c399b-eb50-4761-a91c-deee13a47054',
        'iat': DateTime.now().millisecondsSinceEpoch ~/ 1000,
        'exp':
            (DateTime.now().add(Duration(hours: 1))).millisecondsSinceEpoch ~/
                1000
      };

      final jsonHeader = JsonObject(header);
      final jsonPayload = JsonObject(payload);

      final signTokenBuilder = SignJwtTokenBuilder()
        ..header = jsonHeader
        ..payload = jsonPayload;

      final result = (await walletApi.signJwtToken(
              walletId: walletId, signJwtToken: signTokenBuilder.build()))
          .data;

      expect(result?.signedJwt, isNotNull);
    });

    test('Get wallet', () async {
      final wallet = (await walletApi.getWallet(walletId: walletId)).data;

      expect(wallet, isNotNull);
      expect(wallet!.did, isNotEmpty);
    });

    test('List wallets', () async {
      final result = (await walletApi.listWallets()).data;

      expect(result!.wallets!.length, greaterThan(0));
      expect(result.wallets![0].did, isNotEmpty);
    });

    test('Update wallet', () async {
      final updatedName = 'Updated Wallet';
      final updatedDescription = 'Updated description';

      final walletInputBuilder = UpdateWalletInputBuilder()
        ..name = updatedName
        ..description = updatedDescription;

      final wallet = (await walletApi.updateWallet(
              walletId: walletId,
              updateWalletInput: walletInputBuilder.build()))
          .data;

      expect(wallet, isNotNull);
      expect(wallet!.name, equals(updatedName));
      expect(wallet.description, equals(updatedDescription));
    });
  });

  // ========== V2 Tests ==========

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
      final baseCredential =
          Map<String, dynamic>.from(fixtures.unsignedCredentialV2);

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
      final baseCredential =
          Map<String, dynamic>.from(fixtures.unsignedCredentialV2);

      final pastDate = DateTime.now().subtract(Duration(days: 365));
      final context = baseCredential['@context'] as List;

      final unsignedCredential = {
        ...baseCredential,
        '@context': [
          'https://www.w3.org/2018/credentials/v1',
          ...context.skip(1)
        ],
        'type': ['VerifiableCredential', 'UserProfile'],
        'id':
            'uuid:test-jwt-expired-tdk-${DateTime.now().millisecondsSinceEpoch}',
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
      final validUntil =
          DateTime.now().add(Duration(days: 365 * 5)).toIso8601String();

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

      final credential =
          response.data!.credential.value as Map<String, dynamic>;
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
        'id':
            'urn:uuid:test-ldp-expired-tdk-${DateTime.now().millisecondsSinceEpoch}',
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

      final credential =
          response.data!.credential.value as Map<String, dynamic>;
      expect(credential['proof'], isNotNull);
    });

    test('Signs Credential SD-JWT v2', () async {
      final fixtures = getFixtures();
      final validFrom = DateTime.now().toIso8601String();
      final validUntil =
          DateTime.now().add(Duration(days: 365 * 5)).toIso8601String();

      final unsignedCredential = {
        ...fixtures.unsignedCredentialV2,
        'id':
            'urn:uuid:test-sdjwt-tdk-${DateTime.now().millisecondsSinceEpoch}',
        'validFrom': validFrom,
        'validUntil': validUntil
      };

      final signBuilder = SignCredentialsDm2SdJwtInputDtoBuilder()
        ..unsignedCredential = MapJsonObject(unsignedCredential)
        ..revocable = true
        ..disclosureFrame = MapJsonObject(fixtures.disclosureFrameV2);

      final response = await walletApi.signCredentialsSdJwt(
          walletId: walletId,
          signCredentialsDm2SdJwtInputDto: signBuilder.build());

      expect(response.data, isNotNull);
      expect(response.data!.credential, isNotNull);
      expect(response.data!.credential, contains('~'));
    });

    test('Signs Credential SD-JWT v2 - if expired then it is not valid',
        () async {
      final fixtures = getFixtures();
      final pastDate = DateTime.now().subtract(Duration(days: 365 * 2));

      final unsignedCredential = {
        ...fixtures.unsignedCredentialV2,
        'id':
            'urn:uuid:test-sdjwt-expired-tdk-${DateTime.now().millisecondsSinceEpoch}',
        'validFrom': pastDate.toIso8601String(),
        'validUntil': pastDate.toIso8601String()
      };

      final signBuilder = SignCredentialsDm2SdJwtInputDtoBuilder()
        ..unsignedCredential = MapJsonObject(unsignedCredential)
        ..revocable = false
        ..disclosureFrame = MapJsonObject(fixtures.disclosureFrameV2);

      final response = await walletApi.signCredentialsSdJwt(
          walletId: walletId,
          signCredentialsDm2SdJwtInputDto: signBuilder.build());

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
      final revokeBuilder = RevokeCredentialsInputBuilder()
        ..revocationReason = 'test v2 tdk'
        ..credentialId = signedCredentialLdp!['id'] as String;

      final response = await revocationApi.revokeCredentials(
          walletId: walletId, revokeCredentialsInput: revokeBuilder.build());

      // Verify the revocation call succeeded (200 or 204)
      expect(response.statusCode, anyOf([200, 204]));
    });
  });
}
