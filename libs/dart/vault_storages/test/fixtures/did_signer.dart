import 'dart:typed_data';

import 'package:ssi/ssi.dart';

final seed = Uint8List.fromList([
  161,
  119,
  43,
  20,
  67,
  68,
  120,
  31,
  42,
  85,
  252,
  77,
  94,
  73,
  243,
  118,
  123,
  176,
  150,
  114,
  5,
  173,
  8,
  69,
  74,
  9,
  199,
  109,
  150,
  253,
  44,
  205
]);
const _rootAccountDerivationPath = "m/44'/60'/0'/0'/0'";

Future<KeyPair> getRootKeyPair() async {
  final wallet = Bip32Wallet.fromSeed(seed);
  return await wallet.generateKey(keyId: _rootAccountDerivationPath);
}

Future<DidSigner> getDidSigner() async {
  final keyPair = await getRootKeyPair();
  final accountDidDocument = DidKey.generateDocument(keyPair.publicKey);

  return DidSigner(
    didDocument: accountDidDocument,
    didKeyId: accountDidDocument.verificationMethod.first.id,
    keyPair: keyPair,
    signatureScheme: SignatureScheme.ecdsa_secp256k1_sha256,
  );
}
