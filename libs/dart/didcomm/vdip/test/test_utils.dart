// ignore_for_file: strict_top_level_inference, type_annotate_public_apis

import 'package:affinidi_tdk_mediator_didcomm_client/affinidi_tdk_mediator_didcomm_client.dart'
    hide CredentialFormat;
import 'package:affinidi_tdk_vdip/affinidi_tdk_vdip.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

void emptyOnRequestIssuanceCallback({
  required message,
  isAssertionValid,
  holderDidFromAssertion,
}) {}

Future<LdVcDataModelV1> generateEmailLdVcV1({
  required String holderDid,
  required String holderEmail,
  required DidSigner issuerSigner,
}) async {
  final unsignedCredential = VcDataModelV1(
    context: [dmV1ContextUrl, 'https://schema.affinidi.io/TEmailV1R0.jsonld'],
    credentialSchema: [
      CredentialSchema(
        id: Uri.parse('https://schema.affinidi.io/TEmailV1R0.json'),
        type: 'JsonSchemaValidator2018',
      ),
    ],
    id: Uri.parse(const Uuid().v4()),
    issuer: Issuer.uri(issuerSigner.did),
    type: {'VerifiableCredential', 'Email'},
    issuanceDate: DateTime.now().toUtc(),
    credentialSubject: [
      CredentialSubject.fromJson({
        'id': holderDid,
        'email': holderEmail,
      }),
    ],
  );

  final suite = LdVcDm1Suite();

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

Future<EncryptedMessage> createdEncryptedIssuedCredentialMessage({
  required DidManager issuerDidManager,
  required DidManager holderDidManager,
  String? from,
  Map<String, dynamic>? body,
}) async {
  final issuerDidDocument = await issuerDidManager.getDidDocument();
  final holderDidDocument = await holderDidManager.getDidDocument();

  final message = VdipIssuedCredentialMessage(
    id: const Uuid().v4(),
    from: from,
    to: [holderDidDocument.id],
    body: body,
  );

  return await DidcommMessage.packIntoEncryptedMessage(
    message,
    keyPair: await issuerDidManager
        .getKeyPairByDidKeyId(issuerDidDocument.keyAgreement.first.id),
    didKeyId: issuerDidDocument.keyAgreement.first.id,
    encryptionAlgorithm: EncryptionAlgorithm.a256cbc,
    keyWrappingAlgorithm: KeyWrappingAlgorithm.ecdh1Pu,
    recipientDidDocuments: [holderDidDocument],
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
          'vdip',
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
