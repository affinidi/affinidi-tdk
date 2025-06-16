import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:dio/dio.dart';
import '../models/oid4vci_credential_offer.dart';

/// Interface for OID4VCI claim varifiable credential API service.
abstract class OID4VCIClaimVerifiableCredentialApiServiceInterface {
  /// Gets credential offer (new version)
  ///
  /// - [offerUri] (required) - URI of the credential offer
  Future<Response<dynamic>> getCredentialOffer({
    required String offerUri,
  });

  /// Retrieves metadata for a credential issuer.
  ///
  /// - [offerUri] (required) - URI of the credential offer
  Future<Response<dynamic>> getIssuerMetadata({
    required String offerUri,
  });

  /// Retrieves an access token to claim a credential.
  ///
  /// - [offer] (required) - [OID4VCICredentialOffer] object containing the credential offer details
  /// - [tokenEndpoint] (required) - endpoint to retrieve the access token
  /// - [transactionCode] (optional) - transaction code for the request
  Future<Response<dynamic>> getClaimCredentialAccessToken({
    required OID4VCICredentialOffer offer,
    required String tokenEndpoint,
    String? transactionCode,
  });

  /// Claims a credential.
  ///
  /// - [offer] (required) - [OID4VCICredentialOffer] object containing the credential offer details
  /// - [jwt] (required) - JSON Web Token (JWT) to be used for the claim
  /// - [credentialEndpoint] (required) - endpoint to claim the credential
  /// - [accessToken] (required) - access token for authorization
  Future<Response<dynamic>> claimCredential({
    required OID4VCICredentialOffer offer,
    required String jwt,
    required String credentialEndpoint,
    required String accessToken,
  });
}

/// Implementation of [OID4VCIClaimVerifiableCredentialApiServiceInterface ] that handles OID4VCI claim
/// verifiable credential API calls.
class OID4VCIClaimVerifiableCredentialApiService
    implements OID4VCIClaimVerifiableCredentialApiServiceInterface {
  static final int? _apiTimeOutInMilliseconds =
      Environment.apiTimeOutInMilliseconds;

  /// Constructor to create an instance of [OID4VCIClaimVerifiableCredentialApiService].
  OID4VCIClaimVerifiableCredentialApiService({
    Dio? client,
  }) : _client = client ?? _createDioClient();

  final Dio _client;

  static Dio _createDioClient() {
    final timeoutDuration = _apiTimeOutInMilliseconds == null
        ? const Duration(milliseconds: 15000)
        : Duration(milliseconds: _apiTimeOutInMilliseconds!);
    return Dio(
      BaseOptions(
        connectTimeout: timeoutDuration,
        receiveTimeout: timeoutDuration,
        headers: {'Accept': 'application/json'},
      ),
    );
  }

  @override
  Future<Response<dynamic>> getCredentialOffer({required String offerUri}) {
    return _client.get(offerUri);
  }

  @override
  Future<Response<dynamic>> getIssuerMetadata({required String offerUri}) {
    final wellKnownUrl =
        '${Uri.parse(offerUri).origin}/.well-known/openid-credential-issuer';
    return _client.get(wellKnownUrl);
  }

  @override
  Future<Response<dynamic>> getClaimCredentialAccessToken({
    required OID4VCICredentialOffer offer,
    required String tokenEndpoint,
    String? transactionCode,
  }) {
    return _client.post(
      tokenEndpoint,
      options: Options(
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
      ),
      data: {
        'grant_type': 'urn:ietf:params:oauth:grant-type:pre-authorized_code',
        'pre-authorized_code': offer.preAuthCode,
        if (transactionCode != null) 'tx_code': transactionCode,
      },
    );
  }

  @override
  Future<Response<dynamic>> claimCredential({
    required OID4VCICredentialOffer offer,
    required String jwt,
    required String credentialEndpoint,
    required String accessToken,
  }) {
    return _client.post(
      credentialEndpoint,
      options: Options(
        headers: {'Authorization': 'Bearer $accessToken'},
      ),
      data: {
        'credential_identifier': offer.credentialIdentifier,
        'proof': {'proof_type': 'jwt', 'jwt': jwt},
      },
    );
  }

  /// Disposes of any resources used by the service.
  void dispose() {
    _client.close();
  }
}
