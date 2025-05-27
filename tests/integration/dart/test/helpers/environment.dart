import 'dart:typed_data';

import 'package:convert/convert.dart';
import 'package:dotenv/dotenv.dart';

class ProjectEnvironment {
  final String projectId;
  final String tokenId;
  final String privateKey;
  final String? keyId;
  final String? passphrase;

  ProjectEnvironment({
    required this.projectId,
    required this.tokenId,
    required this.privateKey,
    this.keyId,
    this.passphrase,
  });
}

class VaultEnvironment {
  final Uint8List seed;
  // NOTE: returning Hex encoded string since VaultDataManager client
  //       does not support plain seed yet
  final String seedHexEncoded;

  VaultEnvironment({required this.seed, required this.seedHexEncoded});
}

class CredentialIssuanceEnvironment {
  final String credentialIssuanceData;

  CredentialIssuanceEnvironment({
    required this.credentialIssuanceData,
  });
}

ProjectEnvironment getProjectEnvironment() {
  final env = DotEnv()..load(['../../.env']);

  if (!env.isEveryDefined(['PROJECT_ID', 'TOKEN_ID', 'PRIVATE_KEY'])) {
    throw Exception(
      'Missing environment variables. Please provide PROJECT_ID, TOKEN_ID, PRIVATE_KEY',
    );
  }

  // Workaround for dotenv multiline limitations
  final privateKey = env['PRIVATE_KEY']!.replaceAll('\\n', '\n');
  final token = env['TOKEN_ID']!;
  final projectId = env['PROJECT_ID']!;
  final keyId = env['KEY_ID'] ?? '';
  final passphrase = env['PASSPHRASE'] ?? '';

  return ProjectEnvironment(
    projectId: projectId,
    tokenId: token,
    privateKey: privateKey,
    keyId: keyId,
    passphrase: passphrase,
  );
}

VaultEnvironment getVaultEnvironment() {
  final env = DotEnv()..load(['../../.env']);

  if (!env.isEveryDefined(['VAULT_SEED_BYTES_HEX_ENCODED'])) {
    throw Exception(
      'Missing environment variables. Please provide VAULT_SEED_BYTES_HEX_ENCODED.',
    );
  }

  final seedHexEncoded = env['VAULT_SEED_BYTES_HEX_ENCODED']!;
  final Uint8List seed = Uint8List.fromList(hex.decode(seedHexEncoded));

  return VaultEnvironment(seed: seed, seedHexEncoded: seedHexEncoded);
}

CredentialIssuanceEnvironment getCredentialIssuanceEnvironment() {
  final env = DotEnv()..load(['../../.env']);

  if (!env.isEveryDefined(['CREDENTIAL_ISSUANCE_DATA'])) {
    throw Exception(
      'Missing environment variables. Please provide CREDENTIAL_ISSUANCE_DATA.',
    );
  }

  final credentialIssuanceData = env['CREDENTIAL_ISSUANCE_DATA']!;

  return CredentialIssuanceEnvironment(
    credentialIssuanceData: credentialIssuanceData,
  );
}
