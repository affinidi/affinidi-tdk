import 'dart:convert';

import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';
import 'package:dio/dio.dart';
import 'package:ssi/ssi.dart';

import 'api_service/oid4vci_claim_verifiable_credential_api_service.dart';
import 'dto/error_response.dart';
import 'exceptions/tdk_exception_type.dart';
import 'extensions/dio_exception_extension.dart';
import 'extensions/tdk_exception_extension.dart';
import 'models/oid4vci_claim_context.dart';
import 'models/oid4vci_credential_offer.dart';
import 'models/oid4vci_issuer_metadata.dart';
import 'oid4vci_claim_verifiable_credential_interface.dart';

/// Represents a service for claiming credentials by interacting with a Claim Verifiable Credential Issuance (OID4VCI) API.
///
/// The [OID4VCIClaimVerifiableCredentialService] handles loading credential offers from a given URI,
/// retrieving necessary issuer metadata, and ultimately claiming a verifiable credential.
/// It leverages a [OID4VCIClaimVerifiableCredentialApiServiceInterface] to perform API calls and a [ConsumerAuthProvider]
/// to manage authentication tokens.
///
/// Example:
/// ```dart
/// final service = OID4VCIClaimVerifiableCredentialService(
///   seed: someUint8ListSeed,
/// );
///
/// // Load the credential offer context
/// final claimContext = await service.loadCredentialOffer(
///   Uri.parse('https://example.com?credentialOfferUri=https://issuer.example.com/offers/123'),
/// );
///
/// // Claim the credential using the loaded context
/// final credential = await service.claimCredential(
///   claimContext: claimContext,
///   txCode: 'optionalTxCode',
/// );
/// Log.debug('Credential details: $credential', component: 'YourComponent');
/// ```
class OID4VCIClaimVerifiableCredentialService
    implements OID4VCIClaimVerifiableCredentialServiceInterface {
  final OID4VCIClaimVerifiableCredentialApiServiceInterface
      _claimVerifiableCredentialApiService;
  final ConsumerAuthProvider _consumerAuthProvider;
  final Logger _logger;
  static const _componentName = 'OID4VCIClaimService';

  /// Creates a [OID4VCIClaimVerifiableCredentialService] instance.
  ///
  /// [didSigner] - The seed used to initialize the consumer authentication provider.
  /// [claimVerifiableCredentialApiService] (optional) - A custom implementation of [OID4VCIClaimVerifiableCredentialApiServiceInterface].
  /// [consumerAuthProvider] (optional) - A custom implementation of [ConsumerAuthProvider].
  ///
  /// Example:
  /// ```dart
  /// final service = OID4VCIClaimVerifiableCredentialService(
  ///   seed: someUint8ListSeed,
  /// );
  /// ```
  OID4VCIClaimVerifiableCredentialService({
    required DidSigner didSigner,
    Dio? client,
    OID4VCIClaimVerifiableCredentialApiServiceInterface?
        claimVerifiableCredentialApiService,
    ConsumerAuthProvider? consumerAuthProvider,
    Logger? logger,
  })  : _claimVerifiableCredentialApiService =
            claimVerifiableCredentialApiService ??
                OID4VCIClaimVerifiableCredentialApiService(client: client),
        _consumerAuthProvider = consumerAuthProvider ??
            ConsumerAuthProvider(signer: didSigner, client: client),
        _logger = logger ?? Logger.instance;

  /// Loads a credential offer from the given [uri] and returns a [OID4VCIClaimContext]
  /// containing both the credential offer and the issuer metadata.
  ///
  /// [uri] - The URI containing query parameters for the credential offer.
  ///
  /// Returns a [OID4VCIClaimContext] with the loaded credential offer and issuer metadata.
  ///
  /// Throws:
  /// - [TdkException] if the credential offer URI is missing or if loading fails.
  ///   - server_error: when server is unable to process the claim for some unexpected reason.
  ///   - missing_uri: when the uri does not have a credential_offer query parameter.
  ///   - failed_to_load_credential_offer: when the credential offer specified in the uri parameter does not exist.
  ///   - credential_offer_expired: when the credential offer specified in the uri parameter has expired.
  ///
  /// Example:
  /// ```dart
  /// final claimContext = await service.loadCredentialOffer(
  ///  Uri.parse('https://example.com?credentialOfferUri=https://issuer.example.com/offers/123'),
  /// );
  /// Log.info('Loaded offer from: ${claimContext.credentialOffer}', component: 'YourComponent');
  /// ```
  @override
  Future<OID4VCIClaimContext> loadCredentialOffer(Uri uri) async {
    _logger.info('Started loading credential offer', component: _componentName);
    final offerPayload = uri.queryParameters;
    final credentialOfferUri =
        offerPayload[_OfferPayloadParams.credentialOfferUri];

    if (credentialOfferUri == null || credentialOfferUri.isEmpty) {
      _logger.error('Failed loading credential offer',
          component: _componentName);
      Error.throwWithStackTrace(
        TdkException(
            message: 'Credential offer uri is missing',
            code: TdkExceptionType.missingUri.code),
        StackTrace.current,
      );
    }

    try {
      final issuerMetadataResponse = await _claimVerifiableCredentialApiService
          .getIssuerMetadata(offerUri: credentialOfferUri);
      final issuerMetadata = OID4VCIIssuerMetadata.fromJson(
          issuerMetadataResponse.data as Map<String, dynamic>);

      final credentialOfferResponse =
          await _getCredentialsOfferResponse(credentialOfferUri);
      final credentialOffer = OID4VCICredentialOffer.fromJson(
          credentialOfferResponse.data as Map<String, dynamic>);

      _logger.info('Completed loading credential offer',
          component: _componentName);
      return OID4VCIClaimContext(
        issuerMetadata: issuerMetadata,
        credentialOffer: credentialOffer,
      );
    } catch (e, stackTrace) {
      _logger.error('Failed loading credential offer',
          component: _componentName, error: e, stackTrace: stackTrace);
      if (e is TdkException) {
        rethrow;
      }
      if (e is DioException) {
        final tdkException = e.asTdkException();
        if (tdkException != null) {
          Error.throwWithStackTrace(tdkException, stackTrace);
        }
      }
      Error.throwWithStackTrace(
        TdkException(
          message: 'Failed to load credential offer',
          originalMessage: e.toString(),
          code: TdkExceptionType.failedToLoadCredentialOffer.code,
        ),
        stackTrace,
      );
    }
  }

  Future<Response> _getCredentialsOfferResponse(
      String credentialOfferUri) async {
    final credentialOfferResponse = await _claimVerifiableCredentialApiService
        .getCredentialOffer(offerUri: credentialOfferUri);

    if (credentialOfferResponse.statusCode != 200) {
      _logger.error(
          'Failed loading credential offer - ${credentialOfferResponse.data}',
          component: _componentName);
      final errorResponse = ErrorResponse.fromJson(
          credentialOfferResponse.data as Map<String, dynamic>);
      Error.throwWithStackTrace(
          TdkExceptionExtension.fromErrorResponse(errorResponse),
          StackTrace.current);
    }

    return credentialOfferResponse;
  }

  /// Claims a credential using the provided [claimContext] and optional [txCode].
  ///
  /// This method retrieves an access token using the credential offer and then uses that token
  /// along with a JWT (fetched from the consumer auth provider) to claim the credential.
  ///
  /// [claimContext] - Contains the credential offer and issuer metadata necessary for claiming.
  /// [txCode] (optional) - A transaction code that may be required by the token endpoint.
  ///
  /// Returns a [VerifiableCredential] representing the claimed credential if successful.
  ///
  /// Throws:
  /// - [TdkException] if any step of the claim process fails.
  ///   - server_error: when server is unable to process the claim for some unexpected reason.
  ///   - unmatched_tx_code: when transaction code provided does not match the one issued with the credential.
  ///   - credential_offer_expired: when the credential offer has expired.
  ///   - credential_offer_claimed: when the credential has already been claimed.
  ///   - failedToClaimCredential: when an unknown error occurred.
  ///
  /// Example:
  /// ```dart
  /// final credential = await service.claimCredential(
  ///   claimContext: claimContext,
  ///   txCode: 'optionalTxCode',
  /// );
  /// Log.info('Claimed Credential: ${credential.toJson()}', component: 'YourComponent');
  /// ```
  @override
  Future<VerifiableCredential> claimCredential({
    required OID4VCIClaimContext claimContext,
    String? txCode,
  }) async {
    _logger.info('Started claiming credential', component: _componentName);
    try {
      final accessTokenResponse = await _claimVerifiableCredentialApiService
          .getClaimCredentialAccessToken(
        offer: claimContext.credentialOffer,
        tokenEndpoint: claimContext.issuerMetadata.tokenEndpoint,
        transactionCode: txCode,
      );

      if (accessTokenResponse.statusCode != 200) {
        _logger.error(
            'Failed loading credential offer - ${accessTokenResponse.data}',
            component: _componentName);
        Error.throwWithStackTrace(
          TdkExceptionExtension.fromError(
              accessTokenResponse.data as Map<String, dynamic>),
          StackTrace.current,
        );
      }

      final accessTokenResponseJson =
          accessTokenResponse.data as Map<String, dynamic>;

      final jwt = await _consumerAuthProvider.fetchCisToken();
      final credentialResponse =
          await _claimVerifiableCredentialApiService.claimCredential(
        accessToken: accessTokenResponseJson['access_token'] as String,
        offer: claimContext.credentialOffer,
        credentialEndpoint: claimContext.issuerMetadata.credentialEndpoint,
        jwt: jwt,
      );

      if (credentialResponse.statusCode != 200) {
        _logger.error(
            'Failed claiming credential offer - ${credentialResponse.data}',
            component: _componentName);
        Error.throwWithStackTrace(
          TdkExceptionExtension.fromError(
              credentialResponse.data as Map<String, dynamic>),
          StackTrace.current,
        );
      }

      final credentialResponseJson =
          credentialResponse.data as Map<String, dynamic>;
      final credentialJson =
          credentialResponseJson['credential'] as Map<String, dynamic>;
      final signedCredential =
          credentialJson['signedCredential'] as Map<String, dynamic>;
      final vc = UniversalParser.parse(jsonEncode(signedCredential));

      _logger.info('Completed claiming credential', component: _componentName);

      return vc;
    } catch (e, stackTrace) {
      _logger.error('Failed claiming credential offer',
          component: _componentName, error: e, stackTrace: stackTrace);
      if (e is TdkException) {
        rethrow;
      }
      if (e is DioException) {
        final tdkException = e.asTdkException();
        if (tdkException != null) {
          Error.throwWithStackTrace(tdkException, stackTrace);
        }
      }
      Error.throwWithStackTrace(
        TdkException(
          message: 'Failed to claim credential',
          originalMessage: e.toString(),
          code: TdkExceptionType.failedToClaimCredential.code,
        ),
        stackTrace,
      );
    }
  }
}

class _OfferPayloadParams {
  static const String credentialOfferUri = 'credential_offer_uri';
}
