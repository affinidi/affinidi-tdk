import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';
import 'package:test/test.dart';
import 'package:ssi/ssi.dart';
import 'package:ssi/src/wallet/key_store/in_memory_key_store.dart';
import 'package:base_codecs/base_codecs.dart';

void main() {
  group('Cryptography Unit Tests', () {
    test('Test ConsumerAuthProvider', () async {
      final seed = hexDecode(
        'a1772b144344781f2a55fc4d5e49f3767bb0967205ad08454a09c76d96fd2ccd',
      );

      final mockDid =
          'did:key:zQ3sha56jgL3375utvumTafCFeLMMCRmvsggy6LYdaYsz1QJ1';
      final mockAudience = 'https://apse1.api.affinidi.io/cis';
      final validTimeInSeconds = 5 * 60;

      final keyStore = InMemoryKeyStore();
      final wallet = await Bip32Wallet.fromSeed(seed, keyStore);
      final keyPair =
          await wallet.deriveKey(derivationPath: "m/44'/60'/0'/0'/0'");

      print('Public Key: ${keyPair.publicKey}');

      final didDoc = DidKey.generateDocument(keyPair.publicKey);
      print('Generated DID: ${didDoc.id}');
      print('Expected DID: $mockDid');
      print('Verification Method: ${didDoc.verificationMethod.first.id}');

      final didSigner = DidSigner(
        didDocument: didDoc,
        didKeyId: didDoc.verificationMethod.first.id,
        keyPair: keyPair,
        signatureScheme: SignatureScheme.ecdsa_secp256k1_sha256,
      );

      final provider = ConsumerAuthProvider(signer: didSigner);

      final currentTime = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      final cisToken = await provider.fetchCisToken();
      expect(cisToken, isNotNull);

      bool isTokenExpired = JwtDecoder.isExpired(cisToken);
      expect(isTokenExpired, isFalse);

      Map<String, dynamic> decodedToken = JwtDecoder.decode(cisToken);
      expect(decodedToken['iss'], mockDid);
      expect(decodedToken['sub'], mockDid);
      expect(decodedToken['aud'], mockAudience);
      expect(decodedToken['jti'], isNotEmpty);
      expect(decodedToken['iat'], isPositive);
      expect(decodedToken['iat'] - currentTime <= 2, isTrue);
      expect(decodedToken['exp'], decodedToken['iat'] + validTimeInSeconds);
    });
  });
}
