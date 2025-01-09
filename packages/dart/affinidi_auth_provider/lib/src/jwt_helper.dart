import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:uuid/uuid.dart';

class JWTHelper {
  static String signPayload({
    required String audience,
    required String tokenId,
    required String privateKey,
    String? keyId,
    String? passphrase, // TODO: Implement passphrase
    dynamic additionalPayload,
  }) {
    final issueTimeInSeconds = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    final algorithm = JWTAlgorithm.RS256;

    final jwt = JWT(
      {
        'iss': tokenId,
        'sub': tokenId,
        'aud': audience,
        'jti': Uuid().v4(),
        'exp': issueTimeInSeconds + 5 * 60,
        'iat': issueTimeInSeconds,
        if (additionalPayload != null)
          ...additionalPayload, // Spread additional payload if provided
      },
      header: {
        'alg': algorithm.name,
        if (keyId != null) 'kid': keyId,
      },
    );

    final token = jwt.sign(
      RSAPrivateKey(privateKey),
      algorithm: algorithm,
    );

    return token;
  }
}
