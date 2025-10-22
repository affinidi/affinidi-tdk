import 'package:selective_disclosure_jwt/selective_disclosure_jwt.dart';

/// JWT signer for creating, signing and verifying JWTs.

class JwtHelper {
  static final SdJwtHandlerV1 _handler = SdJwtHandlerV1();

  /// Creates a new JWT.
  static Future<String> createAndSignJwt(
    Map<String, dynamic> claims,
    Signer signer,
  ) async {
    final sdJwt = await _handler
        .sign(claims: claims, signer: signer, disclosureFrame: {});

    return _getJwtStringWithoutDisclosure(sdJwt);
  }

  static String _getJwtStringWithoutDisclosure(SdJwt sdJwt) {
    const separator = '~';
    final serializedSdJwt = sdJwt.serialized;
    if (serializedSdJwt.endsWith(separator)) {
      return serializedSdJwt.substring(0, serializedSdJwt.length - 1);
    }
    return serializedSdJwt;
  }
}
