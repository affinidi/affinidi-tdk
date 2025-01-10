import 'package:affinidi_common/affinidi_common.dart';
import 'package:basic_token_provider/basic_token_provider.dart';

class ConsumerAuthProvider {
  ConsumerAuthProvider();

  // TODO: delete ConsumerTokenProvider and use AffinidiSDK
  ConsumerTokenProvider tokenProvider = ConsumerTokenProvider();

  Future<String> fetchConsumerToken({
    required String walletSeed,
    required String walletPassword,
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
      final token = await apiService.post(
        endpoint: aud,
        data: payload,
      );

      return token;
    */

      // DEMO purpose only
      final token = await tokenProvider.getToken();
      return token;
    } catch (e) {
      print('Failed to fetch consumer token: $e');
      throw Exception('Failed to fetch consumer token');
    }
  }
}
