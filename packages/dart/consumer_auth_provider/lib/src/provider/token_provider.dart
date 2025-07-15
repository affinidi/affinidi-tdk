import 'dart:convert';
import 'dart:typed_data';

import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../exceptions/tdk_exception_type.dart';

/// An abstract class that defines the contract for a token provider.
abstract class TokenProvider {
  /// Gets a signed JWT token using the provided [signer].
  Future<String> getJwtToken({
    required DidSigner signer,
    required int expiration,
    required String audience,
    String? subject,
  }) async {
    final signatureScheme = signer.signatureScheme;

    if (signatureScheme.alg == null) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Signer must define signature scheme.',
          code: TdkExceptionType.unableToGetSignatureScheme.code,
        ),
        StackTrace.current,
      );
    }

    final alg = signatureScheme.alg!;
    final did = signer.did;
    final kid = signer.keyId;

    final header = getHeader(
      alg: alg,
      kid: kid,
    );
    try {
      final jwt = await _getSignedJwtToken(
        signer: signer,
        did: did,
        header: header,
        tokenEndpoint: audience,
        signatureScheme: signatureScheme,
        expiration: expiration,
        subject: subject,
      );
      return jwt;
    } on SsiException catch (e, st) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Signer must define signature scheme.',
          code: TdkExceptionType.unableToGetSignatureScheme.code,
        ),
        st,
      );
    }
  }

  /// Retrieves the header as a map of key-value pairs.
  ///
  /// Returns `Map<String, dynamic>` representing the header.
  Map<String, dynamic> getHeader({
    required String alg,
    required String kid,
  }) {
    return {'alg': alg, 'kid': kid};
  }

  Future<String> _getSignedJwtToken({
    required DidSigner signer,
    required String did,
    required Map<String, dynamic> header,
    required String tokenEndpoint,
    required SignatureScheme signatureScheme,
    required int expiration,
    String? subject,
  }) async {
    final jsonHeader = json.encode(header);
    final payload = json.encode(
      getPayload(
        iss: did,
        sub: subject ?? did,
        aud: tokenEndpoint,
        exp: expiration,
      ),
    );
    final b64header =
        _getBase64Unpadded(base64UrlEncode(utf8.encode(jsonHeader)));
    final b64payload =
        _getBase64Unpadded(base64UrlEncode(utf8.encode(payload)));
    final msgHashHex = utf8.encode('$b64header.$b64payload');

    final signedDigest = await signer.sign(Uint8List.fromList(msgHashHex));

    return '$b64header.$b64payload.${_getBase64Unpadded(
      base64UrlEncode(Uint8List.fromList(signedDigest)),
    )}';
  }

  /// Retrieves the payload from a token.
  ///
  /// Returns [Map<String, dynamic>] representing the payload of the token.
  Map<String, dynamic> getPayload({
    required String iss,
    required String sub,
    required String aud,
    required int exp,
  }) {
    final issueTimeS =
        (DateTime.timestamp().millisecondsSinceEpoch / 1000).floor();
    final payload = {
      'iss': iss,
      'sub': sub,
      'aud': aud,
      'jti': const Uuid().v4(),
      'exp': issueTimeS + exp,
      'iat': issueTimeS,
    };
    return payload;
  }

  String _getBase64Unpadded(String value) {
    if (value.endsWith('==')) return value.substring(0, value.length - 2);
    if (value.endsWith('=')) return value.substring(0, value.length - 1);
    return value;
  }
}
