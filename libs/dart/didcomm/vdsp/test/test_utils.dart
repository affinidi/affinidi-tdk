// ignore_for_file: strict_top_level_inference, type_annotate_public_apis

import 'package:affinidi_tdk_didcomm_mediator_client/affinidi_tdk_didcomm_mediator_client.dart'
    hide CredentialFormat;
import 'package:affinidi_tdk_vdsp/affinidi_tdk_vdsp.dart';
import 'package:dcql/dcql.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

void emptyOnDataRequestCallback(
  VdspQueryDataMessage message,
) {}

void emptyOnDataResponseCallback({
  required credentialVerificationResults,
  required message,
  required presentationAndCredentialsAreValid,
  required presentationVerificationResult,
  verifiablePresentation,
}) {}

Future<LdVcDataModelV2> generateEmailLdVcV2({
  required String holderDid,
  required String holderEmail,
  required DidSigner issuerSigner,
}) async {
  final unsignedCredential = VcDataModelV2(
    context: JsonLdContext.fromJson([
      dmV2ContextUrl,
      'https://schema.affinidi.io/TEmailV1R0.jsonld',
    ]),
    credentialSchema: [
      CredentialSchema(
        id: Uri.parse('https://schema.affinidi.io/TEmailV1R0.json'),
        type: 'JsonSchemaValidator2018',
      ),
    ],
    id: Uri.parse(const Uuid().v4()),
    issuer: Issuer.uri(issuerSigner.did),
    type: {'VerifiableCredential', 'Email'},
    credentialSubject: [
      CredentialSubject.fromJson({
        'id': holderDid,
        'email': holderEmail,
      }),
    ],
  );

  final suite = LdVcDm2Suite();

  final issuedCredential = await suite.issue(
      unsignedData: unsignedCredential,
      proofGenerator: switch (issuerSigner.signatureScheme) {
        SignatureScheme.ecdsa_secp256k1_sha256 =>
          Secp256k1Signature2019Generator(
            signer: issuerSigner,
            proofPurpose: ProofPurpose.authentication,
          ) as EmbeddedProofGenerator,
        SignatureScheme.ecdsa_p256_sha256 => DataIntegrityEcdsaJcsGenerator(
            signer: issuerSigner,
            proofPurpose: ProofPurpose.authentication,
          ) as EmbeddedProofGenerator,
        SignatureScheme.ecdsa_p384_sha384 => DataIntegrityEcdsaJcsGenerator(
            signer: issuerSigner,
            proofPurpose: ProofPurpose.authentication,
          ),
        SignatureScheme.ecdsa_p521_sha512 => DataIntegrityEcdsaJcsGenerator(
            signer: issuerSigner,
            proofPurpose: ProofPurpose.authentication,
          ),
        SignatureScheme.ed25519 => DataIntegrityEddsaJcsGenerator(
            signer: issuerSigner,
            proofPurpose: ProofPurpose.authentication,
          ) as EmbeddedProofGenerator,
        SignatureScheme.rsa_pkcs1_sha256 =>
          throw UnimplementedError('RSA is not supported'),
      });

  return issuedCredential;
}

DcqlCredentialQuery createDataQuery({
  required CredentialFormat format,
  required List<String> path,
}) =>
    DcqlCredentialQuery(
      credentials: [
        DcqlCredential(
          id: const Uuid().v4(),
          format: format,
          claims: [
            DcqlClaim(
              path: path,
            ),
          ],
        ),
      ],
    );

Future<DidManager> createDidManager({
  required String didMethod,
  required KeyType keyType,
}) async {
  final wallet = PersistentWallet(InMemoryKeyStore());
  final keyPair = await wallet.generateKey(keyType: keyType);

  final didManager = didMethod == 'did:key'
      ? DidKeyManager(
          store: InMemoryDidStore(),
          wallet: wallet,
        )
      : DidPeerManager(
          store: InMemoryDidStore(),
          wallet: wallet,
        );

  await didManager.addVerificationMethod(keyPair.id);
  return didManager;
}

Future<EncryptedMessage> createdEncryptedDataResponseMessage({
  required DidManager verifierDidManager,
  required DidManager holderDidManager,
  String? from,
  Map<String, dynamic>? body,
}) async {
  final verifierDidDocument = await verifierDidManager.getDidDocument();
  final holderDidDocument = await holderDidManager.getDidDocument();

  final message = VdspDataResponseMessage(
    id: const Uuid().v4(),
    from: from,
    to: [verifierDidDocument.id],
    body: body,
  );

  return await DidcommMessage.packIntoEncryptedMessage(
    message,
    keyPair: await holderDidManager
        .getKeyPairByDidKeyId(holderDidDocument.keyAgreement.first.id),
    didKeyId: holderDidDocument.keyAgreement.first.id,
    encryptionAlgorithm: EncryptionAlgorithm.a256cbc,
    keyWrappingAlgorithm: KeyWrappingAlgorithm.ecdh1Pu,
    recipientDidDocuments: [verifierDidDocument],
  );
}

Future<EncryptedMessage> createdEncryptedProblemReportMessage({
  required DidManager senderDidManager,
  required DidManager receiverDidManager,
  required String parentThreadId,
}) async {
  final senderDidDocument = await senderDidManager.getDidDocument();
  final receiverDidDocument = await receiverDidManager.getDidDocument();

  final message = ProblemReportMessage(
    id: const Uuid().v4(),
    to: [receiverDidDocument.id],
    from: senderDidDocument.id,
    parentThreadId: parentThreadId,
    body: ProblemReportBody(
      code: ProblemCode(
        sorter: SorterType.error,
        scope: Scope(scope: ScopeType.message),
        descriptors: [
          'vdsp',
          'unit-test',
        ],
      ),
    ),
  );

  return await DidcommMessage.packIntoEncryptedMessage(
    message,
    keyPair: await senderDidManager.getKeyPairByDidKeyId(
      senderDidDocument.keyAgreement.first.id,
    ),
    didKeyId: senderDidDocument.keyAgreement.first.id,
    encryptionAlgorithm: EncryptionAlgorithm.a256cbc,
    keyWrappingAlgorithm: KeyWrappingAlgorithm.ecdh1Pu,
    recipientDidDocuments: [receiverDidDocument],
  );
}

Future<LdVpDataModelV1> createVerifiablePresentation({
  required DidManager didManager,
  required List<ParsedVerifiableCredential> verifiableCredentials,
}) async {
  final signer = await didManager.getSigner(
    didManager.authentication.first,
  );

  final suite = LdVpDm1Suite();

  final proofGenerator = DataIntegrityEcdsaJcsGenerator(
    signer: signer,
  );

  return await suite.issue(
    unsignedData: VpDataModelV1.fromMutable(
      MutableVpDataModelV1(
        context: MutableJsonLdContext.fromJson([
          dmV1ContextUrl,
        ]),
        id: Uri.parse(const Uuid().v4()),
        type: {'VerifiablePresentation'},
        holder: MutableHolder.uri(signer.did),
        verifiableCredential: verifiableCredentials,
      ),
    ),
    proofGenerator: proofGenerator,
  );
}
