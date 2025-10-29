import 'dart:io';

import 'package:didcomm/didcomm.dart';
import 'package:path/path.dart' as path;
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

// Run commands below in your terminal to generate keys for Alice and Bob:
// openssl ecparam -name prime256v1 -genkey -noout -out example/keys/alice_private_key.pem
// openssl ecparam -name prime256v1 -genkey -noout -out example/keys/bob_private_key.pem
// OR
// set environment variables TEST_MEDIATOR_DID, TEST_MEDIATOR_WITH_ACL_DID, TEST_ALICE_PRIVATE_KEY_PEM, and TEST_BOB_PRIVATE_KEY_PEM

// Create and run a DIDComm mediator, for instance with https://portal.affinidi.com.
// Copy its DID Document URL into example/mediator/mediator_did.txt.
// For TEST_MEDIATOR_WITH_ACL_DID use a mediator with ACL explicit allow.

class TestConfig {
  final String packagePath;
  final String mediatorDidPath;
  final String alicePrivateKeyPath;
  final String bobPrivateKeyPath;

  TestConfig._({
    required this.packagePath,
    required this.mediatorDidPath,
    required this.alicePrivateKeyPath,
    required this.bobPrivateKeyPath,
  });

  static Future<TestConfig> configureTestFiles({
    required String packageDirectoryName,
  }) async {
    final packagePath = _getPackagePath(
      packageDirectoryName: packageDirectoryName,
    );

    final [
      mediatorDidPath,
      alicePrivateKeyPath,
      bobPrivateKeyPath,
    ] = [
      'example/mediator/mediator_did.txt',
      'example/keys/alice_private_key.pem',
      'example/keys/bob_private_key.pem',
    ]
        .map(
          (fileName) => _getFilePath(
            packagePath: packagePath,
            fileName: fileName,
          ),
        )
        .toList();

    await writeEnvironmentVariableToFileIfNeeded(
      'TEST_MEDIATOR_DID',
      mediatorDidPath,
    );

    await writeEnvironmentVariableToFileIfNeeded(
      'TEST_ALICE_PRIVATE_KEY_PEM',
      _getFilePath(
        packagePath: packagePath,
        fileName: alicePrivateKeyPath,
      ),
      decodeBase64: true,
    );

    await writeEnvironmentVariableToFileIfNeeded(
      'TEST_BOB_PRIVATE_KEY_PEM',
      _getFilePath(
        packagePath: packagePath,
        fileName: bobPrivateKeyPath,
      ),
      decodeBase64: true,
    );

    return TestConfig._(
      packagePath: packagePath,
      mediatorDidPath: mediatorDidPath,
      alicePrivateKeyPath: alicePrivateKeyPath,
      bobPrivateKeyPath: bobPrivateKeyPath,
    );
  }

  static String _getFilePath({
    required String packagePath,
    required String fileName,
  }) {
    return path.normalize(path.join(
      packagePath,
      fileName,
    ));
  }

  static String _getPackagePath({
    required String packageDirectoryName,
  }) {
    return path.normalize(path.join(
      Directory.current.path,
      '../../../clients/dart/didcomm',
      packageDirectoryName,
    ));
  }

  Future<void> configureAcl({
    required DidDocument mediatorDidDocument,
    required DidManager didManager,
    required List<String> theirDids,
    DateTime? expiresTime,
  }) async {
    final ownDidDocument = await didManager.getDidDocument();

    final mediatorClient = await MediatorClient.init(
      mediatorDidDocument: mediatorDidDocument,
      didManager: didManager,
      authorizationProvider: await AffinidiAuthorizationProvider.init(
        mediatorDidDocument: mediatorDidDocument,
        didManager: didManager,
      ),
      forwardMessageOptions: ForwardMessageOptions(
        encryptionAlgorithm: EncryptionAlgorithm.a256cbc,
        keyWrappingAlgorithm: KeyWrappingAlgorithm.ecdh1Pu,
        shouldSign: true,
      ),
    );

    final accessListAddMessage = AccessListAddMessage(
      id: const Uuid().v4(),
      from: ownDidDocument.id,
      to: [mediatorClient.mediatorDidDocument.id],
      theirDids: theirDids,
      expiresTime: expiresTime,
    );

    await mediatorClient.sendAclManagementMessage(
      accessListAddMessage,
    );
  }

  Future<String> getDidKeyForPrivateKeyPath(String privateKeyPath) async {
    final keyStore = InMemoryKeyStore();
    final wallet = PersistentWallet(keyStore);

    final didManager = DidKeyManager(
      wallet: wallet,
      store: InMemoryDidStore(),
    );

    final keyId = 'key-1';

    final privateKeyBytes = await extractPrivateKeyBytes(
      bobPrivateKeyPath,
    );

    await keyStore.set(
      keyId,
      StoredKey(
        keyType: KeyType.p256,
        privateKeyBytes: privateKeyBytes,
      ),
    );

    await didManager.addVerificationMethod(keyId);
    final receiverDidDocument = await didManager.getDidDocument();

    return receiverDidDocument.id;
  }
}
