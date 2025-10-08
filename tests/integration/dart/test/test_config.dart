import 'dart:io';

import 'package:didcomm/didcomm.dart';
import 'package:path/path.dart' as path;

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
  final String mediatorWithAclDidPath;
  final String alicePrivateKeyPath;
  final String bobPrivateKeyPath;

  TestConfig._({
    required this.packagePath,
    required this.mediatorDidPath,
    required this.mediatorWithAclDidPath,
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
      mediatorWithAclDidPath,
      alicePrivateKeyPath,
      bobPrivateKeyPath
    ] = [
      'example/mediator/mediator_did.txt',
      'example/mediator/mediator_with_acl_did.txt',
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
      'TEST_MEDIATOR_WITH_ACL_DID',
      _getFilePath(
        packagePath: packagePath,
        fileName: mediatorWithAclDidPath,
      ),
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
      mediatorWithAclDidPath: mediatorWithAclDidPath,
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
      '../../../clients/dart',
      packageDirectoryName,
    ));
  }
}
