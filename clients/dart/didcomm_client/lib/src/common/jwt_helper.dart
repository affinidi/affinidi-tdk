import 'package:selective_disclosure_jwt/selective_disclosure_jwt.dart';

/// JWT signer for creating, signing and verifying JWTs.

class JwtHelper {
  final SdJwtHandlerV1 _handler = SdJwtHandlerV1();

  /// Creates a new JWT.
  Future<String> createAndSignJwt(
    Map<String, dynamic> claims,
    Signer signer,
  ) async {
    final sdJwt = await _handler
        .sign(claims: claims, signer: signer, disclosureFrame: {});

    return _getJwtStringWithoutDisclosure(sdJwt);
  }

  String _getJwtStringWithoutDisclosure(SdJwt sdJwt) {
    const separator = '~';
    final serializedSdJwt = sdJwt.serialized;
    final parts = serializedSdJwt.split(separator);
    return parts.length > 1 ? parts[0] : serializedSdJwt;
  }
}
