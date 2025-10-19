import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:dcql/dcql.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

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
    proofGenerator: issuerSigner.signatureScheme == SignatureScheme.ed25519
        ? DataIntegrityEddsaJcsGenerator(
            signer: issuerSigner,
          )
        : DataIntegrityEcdsaJcsGenerator(
            signer: issuerSigner,
          ),
  );

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

ProblemReportMessage createProblemReportMessage({
  required PlainTextMessage message,
}) =>
    ProblemReportMessage(
      id: const Uuid().v4(),
      to: [message.from!],
      parentThreadId: message.threadId ?? message.id,
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

  if (didMethod == 'did:peer') {
    await didManager.addKeyAgreement(keyPair.id);
    await didManager.addAuthentication(keyPair.id);
    await didManager.addAssertionMethod(keyPair.id);
  }

  return didManager;
}
