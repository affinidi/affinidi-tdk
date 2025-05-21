import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';
import 'package:base_codecs/base_codecs.dart';
import 'package:ssi/ssi.dart';

void main() async {
  final seed = hexDecode(
    'a1772b144344781f2a55fc4d5e49f3767bb0967205ad08454a09c76d96fd2ccd',
  );

  final wallet = Bip32Wallet.fromSeed(seed);
  final keyPair = await wallet.generateKey(keyId: "m/44'/60'/0'/0'/0'");
  final didDoc = DidKey.generateDocument(keyPair.publicKey);

  final didSigner = DidSigner(
    didDocument: didDoc,
    didKeyId: didDoc.verificationMethod.first.id,
    keyPair: keyPair,
    signatureScheme: SignatureScheme.ecdsa_secp256k1_sha256,
  );

  final consumerAuthProvider = ConsumerAuthProvider(signer: didSigner);
  final token = await consumerAuthProvider.fetchConsumerToken();
  print('token: $token');
}
