import 'dart:typed_data';

import 'package:affinidi_tdk_claim_verifiable_credential/oid4vci_claim_verifiable_credential.dart';
import 'package:ssi/ssi.dart';

/// This example shows how to claim a credential that doesn't require
/// additional verification.
///
/// This is suitable for:
/// - Pre-verified scenarios
/// - Development and testing
Future<void> main() async {
  try {
    // WARNING: Don't use this seed in production! Generate a secure one instead.
    final seed = Uint8List.fromList(List<int>.generate(32, (index) => index));
    final wallet = Bip32Wallet.fromSeed(seed);

    final keyId = "m/44'/60'/0'/0/1";
    final keyPair = await wallet.generateKey(keyId: keyId);

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
      'https://example.com/callback?credential_offer_uri=https://issuer.example.com/offer/123',
    );

    print('Loading credential offer...');
    final context =
        await claimVerifiableCredentialService.loadCredentialOffer(uri);

    if (context.credentialOffer.isTxCodeRequired) {
      print(
          'This credential requires a transaction code. Use claimCredentialWithTxCode instead.');
      return;
    }

    final credential = await claimVerifiableCredentialService.claimCredential(
      claimContext: context,
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
  } catch (e) {
    print('Error claiming credential: $e');
  }
}
