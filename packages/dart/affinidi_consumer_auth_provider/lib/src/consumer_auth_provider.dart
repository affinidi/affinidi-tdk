import 'package:affinidi_common/affinidi_common.dart';
import 'package:affinidi_cryptography_service/affinidi_cryptography_service.dart';
import 'package:basic_token_provider/basic_token_provider.dart';

class ConsumerAuthProvider {
  ConsumerAuthProvider();

  Future<String> fetchConsumerToken({
    required List<int> encryptedSeed,
    required List<int> encryptionKey,
  }) async {
    try {
      final aud = Environment.fetchConsumerAudienceUrl();

      // Psuedo code:
      /*
      final sdk = AffinidiSDK();
      final wallet = sdk.openWallet(walletSeed, walletPassword)
      final did = wallet.getDid()
      final assertion = sdk.getSignedAssertionObject(
        await getEncryptedSeed(),
        await getPassword(),
        await getDid(),
        aud,
      );

      final payload = jsonDecode(assertion);
      final token = await http.post(
        endpoint: aud,
        data: payload,
      );

      return token;
    */

      /* DEMO purpose only */

      // decrypt encryptedSeed using encryptionKey to get walletSeed, use AES256 symmetric encryption
      final cryptographyService = CryptographyService();
      final seedBytes = await cryptographyService.Aes256Decrypt(
        key: encryptionKey,
        encryptedData: encryptedSeed,
      );
      if (seedBytes == null) {
        throw Exception('Failed to decrypt seed');
      }

      // TODO: delete ConsumerTokenProvider and use AffinidiSDK
      ConsumerTokenProvider tokenProvider = ConsumerTokenProvider();
      final token = await tokenProvider.getToken(seedBytes);
      return token;
    } catch (e) {
      print('Failed to fetch consumer token: $e');
      throw Exception('Failed to fetch consumer token');
    }
  }
}
