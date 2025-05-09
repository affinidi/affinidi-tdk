import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';

import '../exceptions/tdk_exception_type.dart';

/// Represents metadata about a credential issuer.
///
/// This class contains endpoints and configuration information
/// required for interacting with a credential issuer, including endpoints
/// for token acquisition and credential issuance.
///
/// Example:
/// ```dart
/// final metadata = OID4VCIIssuerMetadata(
///   tokenEndpoint: 'https://issuer.example.com/token',
///   credentialEndpoint: 'https://issuer.example.com/credential',
///   returnUris: ['https://myapp.com/callback'],
/// );
/// ```

class OID4VCIIssuerMetadata {
  /// The endpoint used to obtain access tokens for credential claims.
  final String tokenEndpoint;

  /// The endpoint used to claim credentials.
  final String credentialEndpoint;

  /// The URIs where the issuer can return responses.
  final List<String> returnUris;

  /// Creates a new [OID4VCIIssuerMetadata] instance.
  ///
  /// [tokenEndpoint] - The URL endpoint for obtaining access tokens.
  /// [credentialEndpoint] - The URL endpoint for claiming credentials.
  /// [returnUris] - List of authorized URIs that can be used as return URLs that are supported by the issuer.
  const OID4VCIIssuerMetadata({
    required this.tokenEndpoint,
    required this.credentialEndpoint,
    required this.returnUris,
  });

  /// Creates an [OID4VCIIssuerMetadata] instance from a JSON map.
  ///
  /// [json] - The JSON map containing the issuer metadata.
  factory OID4VCIIssuerMetadata.fromJson(Map<String, dynamic> json) {
    final tokenEndpoint =
        json[_IssuerMetadataKey.tokenEndpoint.value] as String?;
    final credentialEndpoint =
        json[_IssuerMetadataKey.credentialEndpoint.value] as String?;

    if (tokenEndpoint == null) {
      Error.throwWithStackTrace(
        TdkException(
            message:
                'Failed to parse issuer metadata, missing required tokenEndpoint',
            code: TdkExceptionType.failedToLoadIssuerMetadata.code),
        StackTrace.current,
      );
    }

    if (credentialEndpoint == null) {
      Error.throwWithStackTrace(
        TdkException(
            message:
                'Failed to parse issuer metadata, missing required credentialEndpoint',
            code: TdkExceptionType.failedToLoadIssuerMetadata.code),
        StackTrace.current,
      );
    }

    return OID4VCIIssuerMetadata(
      tokenEndpoint: tokenEndpoint,
      credentialEndpoint: credentialEndpoint,
      returnUris: json[_IssuerMetadataKey.returnUris.value] != null
          ? List<String>.from(json[_IssuerMetadataKey.returnUris.value] as List)
          : [],
    );
  }
}

enum _IssuerMetadataKey {
  tokenEndpoint('token_endpoint'),
  credentialEndpoint('credential_endpoint'),
  returnUris('return_uris'),
  ;

  const _IssuerMetadataKey(this.value);

  final String value;
}
