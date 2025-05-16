import 'dart:typed_data';

import 'package:affinidi_tdk_claim_verifiable_credential/oid4vci_claim_verifiable_credential.dart';
import 'package:ssi/src/wallet/key_store/in_memory_key_store.dart';
import 'package:ssi/ssi.dart';

/// This example demonstrates how to claim a credential that requires
/// additional security via a transaction code.
///
/// This is suitable for:
/// - High-value credentials
/// - Regulated use cases
/// - Scenarios requiring 2-factor authentication
Future<void> main() async {
  try {
    // WARNING: Don't use this seed in production! Generate a secure one instead.
    final seed = Uint8List.fromList(List<int>.generate(32, (index) => index));
    final keyStore = InMemoryKeyStore();
    final wallet = await Bip32Wallet.fromSeed(seed, keyStore);

    final derivationPath = "m/44'/60'/0'/0/0";
    final keyPair = await wallet.deriveKey(
      derivationPath: derivationPath,
    );

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

    final uri = Uri.parse(
      'https://example.com/callback?credential_offer_uri=https://issuer.example.com/offer/456',
    );

    print('Loading credential offer...');
    final context =
        await claimVerifiableCredentialService.loadCredentialOffer(uri);

    if (!context.credentialOffer.isTxCodeRequired) {
      print('This credential does not require a transaction code.');
      return;
    }

    // In a real application this code would come from a secure source
    const txCode = '123456'; // Example code, don't use this code in production
    print('Using transaction code: $txCode');

    print('Claiming credential...');
    final credential = await claimVerifiableCredentialService.claimCredential(
      claimContext: context,
      txCode: txCode,
    );

    print('Credential claimed successfully:');
    print('ID: ${credential.id}');
    print('Type: ${credential.type.join(', ')}');
    print('Issuer: ${credential.issuer}');
    print('Issued On: ${credential.validFrom}');
  } on TdkException catch (e) {
    print('Error claiming credential:');
    print('Error code: ${e.code}');
    print('Error message: ${e.message}');
    if (e.originalMessage != null) {
      print('Original error: ${e.originalMessage}');
    }
    if (e.code == 'unmatched_tx_code') {
      print('The transaction code was incorrect. Please try again.');
    } else if (e.code == 'credential_offer_expired') {
      print('The credential offer has expired. Please request a new one.');
    }
  } catch (e) {
    print('Error claiming credential: $e');
  }
}
