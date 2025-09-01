import 'package:affinidi_tdk_mediator_client/mediator_client.dart';

// Run commands below in your terminal to generate keys for Alice and Bob:
// openssl ecparam -name prime256v1 -genkey -noout -out example/keys/alice_private_key.pem
// openssl ecparam -name prime256v1 -genkey -noout -out example/keys/bob_private_key.pem
// OR
// set environment variables TEST_MEDIATOR_DID, TEST_MEDIATOR_WITH_ACL_DID, TEST_ALICE_PRIVATE_KEY_PEM, and TEST_BOB_PRIVATE_KEY_PEM
//
// For TEST_MEDIATOR_WITH_ACL_DID use a mediator with ACL explicit_deny mode
// (blocks messages by default, allows only after adding to ACL).
// You can create your own at https://portal.affinidi.com

const mediatorDidPath = './example/mediator/mediator_did.txt';
const mediatorWithAclDidPath = './example/mediator/mediator_with_acl_did.txt';
const alicePrivateKeyPath = './example/keys/alice_private_key.pem';
const bobPrivateKeyPath = './example/keys/bob_private_key.pem';

/// Configures files based on ENV vars.
Future<void> configureTestFiles() async {
  await writeEnvironmentVariableToFileIfNeeded(
    'TEST_MEDIATOR_DID',
    mediatorDidPath,
  );

  await writeEnvironmentVariableToFileIfNeeded(
    'TEST_MEDIATOR_WITH_ACL_DID',
    mediatorWithAclDidPath,
  );

  await writeEnvironmentVariableToFileIfNeeded(
    'TEST_ALICE_PRIVATE_KEY_PEM',
    alicePrivateKeyPath,
    decodeBase64: true,
  );

  await writeEnvironmentVariableToFileIfNeeded(
    'TEST_BOB_PRIVATE_KEY_PEM',
    bobPrivateKeyPath,
    decodeBase64: true,
  );
}
