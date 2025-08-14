import 'dart:typed_data';

import 'package:convert/convert.dart';
import 'package:dotenv/dotenv.dart';

import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';

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

  final environmentName = Environment.fetchEnvironment().environmentName;
  final isProd = environmentName == EnvironmentType.prod.value;

  if (!env.isEveryDefined(['PROJECT_ID', 'TOKEN_ID', 'PRIVATE_KEY'])) {
    throw Exception(
      'Missing environment variables. Please provide PROJECT_ID, TOKEN_ID, PRIVATE_KEY',
    );
  }

  if (!isProd &&
      !env.isEveryDefined(
          ['DEV_PROJECT_ID', 'DEV_TOKEN_ID', 'DEV_PRIVATE_KEY'])) {
    throw Exception(
      'Missing environment variables. Please provide DEV_PROJECT_ID, DEV_TOKEN_ID, DEV_PRIVATE_KEY',
    );
  }

  late final String privateKey;
  late final String token;
  late final String projectId;
  late final String keyId;
  late final String passphrase;

  if (isProd) {
    // Workaround for dotenv multiline limitations
    privateKey = env['PRIVATE_KEY']!.replaceAll('\\n', '\n');
    token = env['TOKEN_ID']!;
    projectId = env['PROJECT_ID']!;
    keyId = env['KEY_ID'] ?? '';
    passphrase = env['PASSPHRASE'] ?? '';
  } else {
    privateKey = env['DEV_PRIVATE_KEY']!.replaceAll('\\n', '\n');
    token = env['DEV_TOKEN_ID']!;
    projectId = env['DEV_PROJECT_ID']!;
    keyId = env['DEV_KEY_ID'] ?? '';
    passphrase = env['DEV_PASSPHRASE'] ?? '';
  }

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
