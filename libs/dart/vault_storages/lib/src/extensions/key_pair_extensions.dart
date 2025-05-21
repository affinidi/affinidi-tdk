import 'package:ssi/ssi.dart';

/// Extension methods for helping generating a DidSigner from a KeyPair.
extension KeyPairDidSigner on KeyPair {
  /// Returns a DidSigner constructed using the KeyPair
  DidSigner get didSigner {
    final didDocument = DidKey.generateDocument(publicKey);
    return DidSigner(
      didDocument: didDocument,
      didKeyId: didDocument.verificationMethod.first.id,
      keyPair: this,
      signatureScheme: SignatureScheme.ecdsa_secp256k1_sha256,
    );
  }
}
