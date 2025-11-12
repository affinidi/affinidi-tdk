import 'package:selective_disclosure_jwt/selective_disclosure_jwt.dart';
import 'package:ssi/ssi.dart';

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

  /// Decodes and verifies a JWT using the holder's DID document.
  static SdJwt decodeAndVerify({
    required String serializedJwt,
    required DidDocument holderDidDocument,
  }) {
    final assertionMethod = holderDidDocument.assertionMethod.first;
    final jwk = assertionMethod.asJwk();

    // Second argument of [SdPublicKey] is not taken into account if key is constructed from JWK,
    // so we can put any algorithm as the second argument.
    // TODO: fix SdPublicKey in affinidi-sd-jwt
    final publicKey = SdPublicKey(jwk.doc, SdJwtSignAlgorithm.es256);

    final verifier = SDKeyVerifier(publicKey);

    final decodedToken = SdJwtHandlerV1().decodeAndVerify(
      /// TODO (KS): update sd-jwt to support JWT wout disclosures
      sdJwtToken: '$serializedJwt~',
      verifier: verifier,
    );

    return decodedToken;
  }
}
