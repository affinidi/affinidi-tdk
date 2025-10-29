import 'dart:async';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:dcql/dcql.dart';
import 'package:selective_disclosure_jwt/selective_disclosure_jwt.dart'
    show SdJwtHandlerV1;
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../../vdsp_didcomm_client.dart';

/// Implements the VDSP protocol for a holder, supporting feature discovery, credential filtering, and data sharing.
class VdspHolderClient {
  /// The mediator client used for DIDComm communication.
  final DidcommMediatorClient mediatorClient;

  /// The DID manager for handling DIDs and keys.
  final DidManager didManager;

  /// The list of feature disclosures supported by this holder in the VDSP protocol.
  final List<Disclosure> featureDisclosures;

  /// Constructs a [VdspHolderClient] for the VDSP protocol with the given [didManager], [mediatorClient], and [featureDisclosures].
  VdspHolderClient({
    required this.didManager,
    required this.mediatorClient,
    required this.featureDisclosures,
  });

  /// Initializes a [VdspHolderClient] for the VDSP protocol asynchronously with the provided mediator DID document, DID manager, and feature disclosures.
  static Future<VdspHolderClient> init({
    required DidDocument mediatorDidDocument,
    required DidManager didManager,
    required List<Disclosure> featureDisclosures,
    AuthorizationProvider? authorizationProvider,
    ClientOptions clientOptions = const ClientOptions(),
  }) async =>
      VdspHolderClient(
        didManager: didManager,
        featureDisclosures: featureDisclosures,
        mediatorClient: await DidcommMediatorClient.init(
          didManager: didManager,
          mediatorDidDocument: mediatorDidDocument,
          authorizationProvider: authorizationProvider,
          clientOptions: clientOptions,
        ),
      );

  /// Returns the supported feature disclosures for a given [queryMessage].
  List<Disclosure> getDisclosures({
    required QueryMessage queryMessage,
  }) {
    final rawBody = queryMessage.body;

    if (rawBody == null) {
      throw ArgumentError.notNull('queryMessage.body');
    }

    final queryBody = QueryBody.fromJson(
      Map<String, dynamic>.from(rawBody),
    );

    return FeatureDiscoveryHelper.getSupportedFeatures(
      featureDisclosures,
      queryBody.queries,
    );
  }

  /// Creates and sends a [DiscloseMessage] in response to a feature query.
  Future<DiscloseMessage> disclose({
    required QueryMessage queryMessage,
    required List<Disclosure> disclosures,
  }) async {
    final verifierDid = queryMessage.from;

    if (verifierDid == null) {
      throw ArgumentError.notNull('queryMessage.from');
    }

    final message = DiscloseMessage(
      id: const Uuid().v4(),
      to: [verifierDid],
      threadId: queryMessage.threadId ?? queryMessage.id,
      body: DiscloseBody(
        disclosures: disclosures,
      ),
    );

    await mediatorClient.packAndSendMessage(message);
    return message;
  }

  /// Filters the provided [verifiableCredentials] using the query in [requestMessage].
  Future<DataQueryResult> filterVerifiableCredentials({
    required VdspQueryDataMessage requestMessage,
    DataQueryLanguage dataQueryLanguage = DataQueryLanguage.dcql,
    required List<ParsedVerifiableCredential> verifiableCredentials,
  }) async {
    if (requestMessage.body == null) {
      throw ArgumentError.notNull('requestMessage.body');
    }

    final requestBody = VdspQueryDataBody.fromJson(requestMessage.body!);

    return _runDataQuery(
      dataQueryLanguage: dataQueryLanguage,
      requestBody: requestBody,
      verifiableCredentials: verifiableCredentials,
    );
  }

  /// Shares filtered verifiable credentials as a verifiable presentation in response to a data query.
  Future<VdspDataResponseMessage> shareData({
    required VdspQueryDataMessage requestMessage,
    DataQueryLanguage dataQueryLanguage = DataQueryLanguage.dcql,
    VerifiableCredentialsDataModel verifiablePresentationDataModel =
        VerifiableCredentialsDataModel.v2,
    required List<ParsedVerifiableCredential> verifiableCredentials,
    required DidSigner verifiablePresentationSigner,
    required DataIntegrityProofSuite verifiablePresentationProofSuite,
    String? operation,
    String? comment,
  }) async {
    if (requestMessage.from == null) {
      throw ArgumentError.notNull('requestMessage.from');
    }

    if (requestMessage.body == null) {
      throw ArgumentError.notNull('requestMessage.body');
    }

    final verifierDid = requestMessage.from!;
    final requestBody = VdspQueryDataBody.fromJson(requestMessage.body!);

    final verifiablePresentation = await _createVerifiablePresentation(
      verifiablePresentationDataModel: verifiablePresentationDataModel,
      verifiableCredentials: verifiableCredentials,
      verifiablePresentationSigner: verifiablePresentationSigner,
      verifiablePresentationProofSuite: verifiablePresentationProofSuite,
      proofContext: requestBody.proofContext,
    );

    final responseMessage = VdspDataResponseMessage(
      id: const Uuid().v4(),
      to: [verifierDid],
      threadId: requestMessage.threadId,
      body: VdspDataResponseBody(
        operation: operation,
        dataQueryLanguage: dataQueryLanguage,
        responseFormat: requestBody.responseFormat,
        dataResponse: verifiablePresentation,
        comment: comment,
      ).toJson(),
    );

    await mediatorClient.packAndSendMessage(responseMessage);
    return responseMessage;
  }

  /// Listens for incoming DIDComm messages and dispatches them to the appropriate handlers as defined by the VDSP protocol.
  ///
  /// [onFeatureQuery] is called for VDSP feature query messages. Optional.
  /// [onDataRequest] is called for VDSP data request messages.
  /// [onDataProcessingResult] is called for VDSP data processing result messages. Optional.
  /// [onProblemReport] is called for VDSP problem report messages. Optional.
  /// [onError], [onDone], and [cancelOnError] control the stream behavior. Optional.
  StreamSubscription listenForIncomingMessages({
    void Function(QueryMessage)? onFeatureQuery,
    required void Function(VdspQueryDataMessage) onDataRequest,
    void Function(VdspDataProcessingResultMessage)? onDataProcessingResult,
    void Function(ProblemReportMessage)? onProblemReport,
    Function? onError,
    void Function({int? closeCode, String? closeReason})? onDone,
    bool? cancelOnError,
  }) {
    return mediatorClient.listenForIncomingMessages(
      (message) async {
        final unpacked = await DidcommMessage.unpackToPlainTextMessage(
          message: message,
          recipientDidManager: didManager,
          expectedMessageWrappingTypes: [
            MessageWrappingType.authcryptPlaintext,
            MessageWrappingType.anoncryptSignPlaintext,
            MessageWrappingType.authcryptSignPlaintext,
            MessageWrappingType.anoncryptAuthcryptPlaintext,
          ],
        );

        final plainTextJson = unpacked.toJson();

        if (onFeatureQuery != null &&
            unpacked.type == QueryMessage.messageType) {
          onFeatureQuery(
            QueryMessage.fromJson(plainTextJson),
          );

          return;
        }

        if (unpacked.type == VdspQueryDataMessage.messageType) {
          onDataRequest(
            VdspQueryDataMessage(
              id: unpacked.id,
              from: unpacked.from,
              to: unpacked.to,
              createdTime: unpacked.createdTime,
              expiresTime: unpacked.expiresTime,
              body: unpacked.body,
              threadId: unpacked.threadId,
            ),
          );

          return;
        }

        if (onDataProcessingResult != null &&
            unpacked.type == VdspDataProcessingResultMessage.messageType) {
          onDataProcessingResult(
            VdspDataProcessingResultMessage(
              id: unpacked.id,
              from: unpacked.from,
              to: unpacked.to,
              createdTime: unpacked.createdTime,
              expiresTime: unpacked.expiresTime,
              body: unpacked.body,
              threadId: unpacked.threadId,
            ),
          );

          return;
        }

        if (onProblemReport != null &&
            unpacked.type == ProblemReportMessage.messageType) {
          onProblemReport(
            ProblemReportMessage.fromJson(plainTextJson),
          );

          return;
        }
      },
      onError: onError,
      onDone: onDone,
      cancelOnError: cancelOnError,
    );
  }

  Future<Map<String, dynamic>> _createVerifiablePresentation({
    required VerifiableCredentialsDataModel verifiablePresentationDataModel,
    required List<ParsedVerifiableCredential<dynamic>> verifiableCredentials,
    required DidSigner verifiablePresentationSigner,
    required DataIntegrityProofSuite verifiablePresentationProofSuite,
    VdspQueryDataProofContext? proofContext,
  }) async {
    final proofGenerator = switch (verifiablePresentationProofSuite) {
      DataIntegrityProofSuite.secp256k1_signature_2019 =>
        Secp256k1Signature2019Generator(
          signer: verifiablePresentationSigner,
          challenge: proofContext?.challenge,
          domain: proofContext != null ? [proofContext.domain] : null,
          proofPurpose: ProofPurpose.authentication,
        ) as EmbeddedProofGenerator,
      DataIntegrityProofSuite.ecdsa_jcs_2019 => DataIntegrityEcdsaJcsGenerator(
          signer: verifiablePresentationSigner,
          challenge: proofContext?.challenge,
          domain: proofContext != null ? [proofContext.domain] : null,
          proofPurpose: ProofPurpose.authentication,
        ) as EmbeddedProofGenerator,
      DataIntegrityProofSuite.eddsa_jcs_2022 => DataIntegrityEddsaJcsGenerator(
          signer: verifiablePresentationSigner,
          challenge: proofContext?.challenge,
          domain: proofContext != null ? [proofContext.domain] : null,
          proofPurpose: ProofPurpose.authentication,
        ) as EmbeddedProofGenerator,
      DataIntegrityProofSuite.ecdsa_rdfc_2019 =>
        DataIntegrityEcdsaRdfcGenerator(
          signer: verifiablePresentationSigner,
          challenge: proofContext?.challenge,
          domain: proofContext != null ? [proofContext.domain] : null,
          proofPurpose: ProofPurpose.authentication,
        ) as EmbeddedProofGenerator,
      DataIntegrityProofSuite.eddsa_rdfc_2022 =>
        DataIntegrityEddsaRdfcGenerator(
          signer: verifiablePresentationSigner,
          challenge: proofContext?.challenge,
          domain: proofContext != null ? [proofContext.domain] : null,
          proofPurpose: ProofPurpose.authentication,
        ) as EmbeddedProofGenerator,
    };

    switch (verifiablePresentationDataModel) {
      case VerifiableCredentialsDataModel.v1:
        {
          final unsignedVerifiablePresentation = MutableVpDataModelV1(
            context: [dmV1ContextUrl],
            id: Uri.parse(const Uuid().v4()),
            type: {'VerifiablePresentation'},
            holder: MutableHolder.uri(verifiablePresentationSigner.did),
            verifiableCredential: verifiableCredentials,
          );

          final suite = LdVpDm1Suite();

          final verifiablePresentation = await suite.issue(
            unsignedData: VpDataModelV1.fromMutable(
              unsignedVerifiablePresentation,
            ),
            proofGenerator: proofGenerator,
          );

          return verifiablePresentation.toJson();
        }

      case VerifiableCredentialsDataModel.v2:
        {
          final unsignedVerifiablePresentation = MutableVpDataModelV2(
            context: [dmV2ContextUrl],
            id: Uri.parse(const Uuid().v4()),
            type: {'VerifiablePresentation'},
            holder: MutableHolder.uri(verifiablePresentationSigner.did),
            verifiableCredential: verifiableCredentials,
          );

          final suite = LdVpDm2Suite();

          final verifiablePresentation = await suite.issue(
            unsignedData: VpDataModelV2.fromMutable(
              unsignedVerifiablePresentation,
            ),
            proofGenerator: proofGenerator,
          );

          return verifiablePresentation.toJson();
        }
    }
  }

  DataQueryResult _runDataQuery({
    required DataQueryLanguage dataQueryLanguage,
    required VdspQueryDataBody requestBody,
    required List<ParsedVerifiableCredential> verifiableCredentials,
  }) {
    switch (dataQueryLanguage) {
      case DataQueryLanguage.dcql:
        final dcqlQuery = DcqlCredentialQuery.fromJson(
          Map<String, dynamic>.from(requestBody.query),
        );

        final digitalCredentials = _convertToDcqlCredentials(
          verifiableCredentials,
        );

        final result = dcqlQuery.query(
          digitalCredentials,
        );

        final filteredVcIds = result.verifiableCredentials.values
            .expand((list) => list.map(
                (credential) => credential.getValueByPath(['id']) as String))
            .toSet();

        return DataQueryResult(
          dcqlResult: result,
          verifiableCredentials: verifiableCredentials
              .where(
                (credential) => filteredVcIds.contains(
                  credential.id.toString(),
                ),
              )
              .toList(),
        );
      // case DataQueryLanguage.per:
      // case DataQueryLanguage.sql:
    }
  }

  List<W3CDigitalCredential> _convertToDcqlCredentials(
    List<ParsedVerifiableCredential<dynamic>> verifiableCredentials,
  ) {
    final unsupportedError = UnsupportedError(
      'Unsupported credential format. Only LDP VC v1.0, LDP VC v2.0 and SD-JWT are supported.',
    );

    return verifiableCredentials.map(
      (vc) {
        if (vc.context.contains(dmV1ContextUrl)) {
          return W3CDigitalCredential.fromLdVcDataModelV1(
            vc.toJson(),
          );
        }

        if (vc.context.contains(dmV2ContextUrl)) {
          return W3CDigitalCredential.fromLdVcDataModelV2(
            vc.toJson(),
          );
        }

        final sdJwtHandler = SdJwtHandlerV1();

        if (vc.serialized is String) {
          // TODO: find a better way to check if it's SD-JWT
          try {
            final sdJwt = sdJwtHandler.unverifiedDecode(
              sdJwtToken: vc.serialized as String,
            );

            return W3CDigitalCredential.fromSdJwt(sdJwt);
          } catch (_) {
            throw unsupportedError;
          }
        }

        throw unsupportedError;
      },
    ).toList();
  }
}
