import 'package:base_codecs/base_codecs.dart';
import 'package:ssi/src/wallet/stores/in_memory_key_store.dart';
import 'package:ssi/ssi.dart';

class DidSignerFixture {
  /// Returns a DidSigner constructed from the seed using ecdsa_secp256k1_sha256
  static Future<DidSigner> withSeed(String seed) => _didSignerFromSeed(
        seed: seed,
        signatureScheme: SignatureScheme.ecdsa_secp256k1_sha256,
      );

  /// Returns a DidSigner constructed from the seed using ed25519_sha256 which does not have an alg
  static Future<DidSigner> withInvalidAlgorithm(String seed) =>
      _didSignerFromSeed(
        seed: seed,
        signatureScheme: SignatureScheme.ed25519_sha256,
      );

  static Future<DidSigner> _didSignerFromSeed({
    required String seed,
    required SignatureScheme signatureScheme,
  }) async {
    final keyStore = InMemoryKeyStore();
    final wallet = await Bip32Wallet.fromSeed(hexDecode(seed), keyStore);
    final keyPair =
        await wallet.deriveKey(derivationPath: "m/44'/60'/0'/0'/0'");

    final didDoc = DidKey.generateDocument(keyPair.publicKey);
    return DidSigner(
      didDocument: didDoc,
      didKeyId: didDoc.verificationMethod.first.id,
      keyPair: keyPair,
      signatureScheme: signatureScheme,
    );
  }
}
