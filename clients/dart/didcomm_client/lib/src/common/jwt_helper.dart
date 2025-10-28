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

  static Future<SdJwt> decodeAndVerify(
      String serializedJwt, String holderDid) async {
    final resolvedHolderDidDocument =
        await UniversalDIDResolver.defaultResolver.resolveDid(holderDid);
    final assertionMethod = resolvedHolderDidDocument.assertionMethod.first;
    final jwk = assertionMethod.asJwk();
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
