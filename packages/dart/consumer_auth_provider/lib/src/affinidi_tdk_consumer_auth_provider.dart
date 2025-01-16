import 'package:affinidi_cryptography_service/affinidi_cryptography_service.dart';
import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:basic_token_provider/basic_token_provider.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class ConsumerAuthProvider {
  final List<int> _encryptedSeed;
  final List<int> _encryptionKey;

  String? _consumerToken;

  ConsumerAuthProvider({
    required List<int> encryptedSeed,
    required List<int> encryptionKey,
  })  : _encryptedSeed = encryptedSeed,
        _encryptionKey = encryptionKey;

  Future<String> fetchConsumerToken() async {
    if (_consumerToken != null && !_isTokenExpired(_consumerToken!)) {
      return _consumerToken!;
    }

    try {
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
    */

      _consumerToken = await _getToken('temporary_assertion');
      return _consumerToken!;
    } catch (e) {
      print('Failed to fetch consumer token: $e');
      rethrow;
    }
  }

  bool _isTokenExpired(String token) {
    return JwtDecoder.isExpired(token);
  }

  Future<String> _getToken(String assertion) async {
    final aud = Environment.fetchConsumerAudienceUrl();
    /*
      final payload = jsonDecode(assertion);
      final token = await http.post(
        endpoint: aud,
        data: payload,
      );
      return token;
     */

    /* DEMO purposes only */
    // decrypt encryptedSeed using encryptionKey to get walletSeed, use AES256 symmetric encryption
    final cryptographyService = CryptographyService();
    final seedBytes = await cryptographyService.Aes256Decrypt(
      encryptedData: _encryptedSeed,
      key: _encryptionKey,
    );
    if (seedBytes == null) {
      throw Exception('Failed to decrypt seed');
    }

    // TODO: delete ConsumerTokenProvider and use AffinidiSDK
    ConsumerTokenProvider tokenProvider = ConsumerTokenProvider();
    final token = await tokenProvider.getToken(seedBytes);
    return token;
  }
}
