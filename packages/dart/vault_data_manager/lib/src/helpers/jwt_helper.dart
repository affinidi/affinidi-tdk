import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';
import 'package:ssi/ssi.dart';

/// A helper class for generating JWT tokens using a DID signer.
class JwtHelper extends TokenProvider {
  /// The DID signer used for token generation.
  final DidSigner _signer;

  /// Creates a new instance of [JwtHelper].
  ///
  /// The [_signer] parameter is used to sign the JWT tokens.
  JwtHelper(this._signer);

  /// Generates a JWT token with the specified audience and expiration.
  ///
  /// [audience] - specifies the intended recipient of the token.
  /// [expiration] - specifies the token's validity period in seconds.
  ///
  /// Returns a signed JWT token as a string.
  Future<String> getJwt({
    required String audience,
    required int expiration,
  }) async {
    return super.getJwtToken(
      signer: _signer,
      expiration: expiration,
      audience: audience,
    );
  }
}
