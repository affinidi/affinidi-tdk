import 'dart:typed_data';

import 'package:selective_disclosure_jwt/selective_disclosure_jwt.dart';
import 'package:ssi/ssi.dart';

/// Adapter to wrap the DidSigner for SD-JWT signing operations.
///
/// This adapter uses the synchronous signing method from DidSigner
/// to implement the Signer interface required by SD-JWT library.
class DidSignerAdapter implements Signer {
  /// The wrapped DID signer.
  final DidSigner _didSigner;

  /// Creates a new adapter for the given DID signer.
  ///
  /// [_didSigner] - The DID signer to adapt.
  DidSignerAdapter(this._didSigner);

  /// Gets the IANA algorithm name for the signature scheme.
  ///
  /// Returns the JWT algorithm name from the signature scheme,
  /// defaulting to ES256K if not available.
  @override
  String get algIanaName => _didSigner.signatureScheme.alg != null
      ? _didSigner.signatureScheme.alg!
      : 'ES256K'; // Default to ES256K if no JWT name is available

  /// Gets the key ID for the signing key.
  ///
  /// Returns the key ID from the wrapped DID signer.
  @override
  String? get keyId => _didSigner.keyId;

  /// Signs the input data using the synchronous sign method.
  ///
  /// [input] - The data to sign.
  ///
  /// Returns the signature as a byte array.
  @override
  Future<Uint8List> sign(Uint8List input) {
    return _didSigner.sign(input);
  }
}
