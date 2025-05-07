import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';
import 'package:ssi/ssi.dart';
import 'package:ssi/src/wallet/key_store/in_memory_key_store.dart';

import 'environment.dart';

void main() {
  late final ConsumerAuthProvider providerWithClient;
  late final ConsumerAuthProvider providerWithoutClient;

  setUpAll(() async {
    final VaultEnvironment env = getVaultEnvironment();

    // Create DidSigner from seed
    final keyStore = InMemoryKeyStore();
    final wallet = await Bip32Wallet.fromSeed(env.seed, keyStore);
    final keyPair =
        await wallet.deriveKey(derivationPath: "m/44'/60'/0'/0'/0'");
    final didDoc = DidKey.generateDocument(keyPair.publicKey);
    final didSigner = DidSigner(
      didDocument: didDoc,
      didKeyId: didDoc.verificationMethod.first.id,
      keyPair: keyPair,
      signatureScheme: SignatureScheme.ecdsa_secp256k1_sha256,
    );

    providerWithClient = ConsumerAuthProvider(signer: didSigner, client: Dio());
    providerWithoutClient = ConsumerAuthProvider(signer: didSigner);
  });

  group('ConsumerAuthProvider Tests', () {
    test('with a Dio Client - obtains a consumer scoped token and caches it',
        () async {
      final consumerAuthToken1 = await providerWithClient.fetchConsumerToken();
      expect(consumerAuthToken1, isNotEmpty);

      final consumerAuthToken2 = await providerWithClient.fetchConsumerToken();
      expect(consumerAuthToken2, equals(consumerAuthToken1));
    });

    test('with a Dio Client - obtains a cis scoped token', () async {
      final cisAuthToken = await providerWithClient.fetchCisToken();
      expect(cisAuthToken, isNotEmpty);
    });

    test('without a Dio client - obtains a consumer scoped token and caches it',
        () async {
      final consumerAuthToken1 =
          await providerWithoutClient.fetchConsumerToken();
      expect(consumerAuthToken1, isNotEmpty);

      final consumerAuthToken2 =
          await providerWithoutClient.fetchConsumerToken();
      expect(consumerAuthToken2, equals(consumerAuthToken1));
    });

    test('without a Dio client - obtains a cis scoped token', () async {
      final cisAuthToken = await providerWithoutClient.fetchCisToken();
      expect(cisAuthToken, isNotEmpty);
    });
  });
}
