import 'dart:typed_data';

import 'package:affinidi_tdk_claim_verifiable_credential/oid4vci_claim_verifiable_credential.dart';
import 'package:ssi/src/wallet/key_store/in_memory_key_store.dart';
import 'package:ssi/ssi.dart';

/// This example demonstrates how to load and inspect a credential offer from a URL.
Future<void> main() async {
  try {
    // WARNING: Don't use this seed in production! Generate a secure one instead.
    final seed = Uint8List.fromList(List<int>.generate(32, (index) => index));
    final keyStore = InMemoryKeyStore();
    final wallet = await Bip32Wallet.fromSeed(seed, keyStore);

    final keyDerivationPath = "m/44'/60'/0'/0/0";
    final keyPair = await wallet.generateKey(keyId: keyDerivationPath);

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
    );

    // The credential offer URL typically comes from:
    // - A QR code scan
    // - A deep link
    // - An API response
    final uri = Uri.parse(
      'https://example.com/callback?credential_offer_uri=https://issuer.example.com/offer/123',
    );

    final context =
        await claimVerifiableCredentialService.loadCredentialOffer(uri);

    // The credential is now ready to be stored or used
    print('Credential Details:');
    print('Identifier: ${context.credentialOffer.credentialIdentifier}');
    print(
        'Requires Transaction Code: ${context.credentialOffer.isTxCodeRequired}');
    print('Issuer Details:');
    print('Token Endpoint: ${context.issuerMetadata.tokenEndpoint}');
    print('Credential Endpoint: ${context.issuerMetadata.credentialEndpoint}');
  } on TdkException catch (e) {
    print('Error finding credential offer:');
    print('Error code: ${e.code}');
    print('Error message: ${e.message}');
    if (e.originalMessage != null) {
      print('Original error: ${e.originalMessage}');
    }
  } catch (e) {
    print('Error finding credential offer: $e');
  }
}
