import 'dart:typed_data';

import 'package:convert/convert.dart';
import 'package:dotenv/dotenv.dart';

class ProjectEnvironment {
  final String projectId;
  final String tokenId;
  final String privateKey;
  final String? keyId;
  final String? passphrase;
  final String did;
  final String walletId;

  ProjectEnvironment({
    required this.projectId,
    required this.tokenId,
    required this.privateKey,
    this.keyId,
    this.passphrase,
    required this.did,
    required this.walletId,
  });
}

class VaultEnvironment {
  final Uint8List seed;
  // NOTE: returning Hex encoded string since VaultDataManager client
  //       does not support plain seed yet
  final String seedHexEncoded;

  VaultEnvironment({required this.seed, required this.seedHexEncoded});
}

class IotaEnvironment {
  final String configurationId;
  final String queryId;
  final String did;
  final String walletAri;
  final String redirectUri;
  final String presentationSubmission;
  final String vpToken;
  final String vpDefinition;

  IotaEnvironment({
    required this.configurationId,
    required this.queryId,
    required this.did,
    required this.walletAri,
    required this.redirectUri,
    required this.presentationSubmission,
    required this.vpToken,
    required this.vpDefinition,
  });
}

class CredentialIssuanceEnvironment {
  final String credentialIssuanceData;

  CredentialIssuanceEnvironment({
    required this.credentialIssuanceData,
  });
}

IotaEnvironment getIotaEnvironment() {
  final env = DotEnv()..load(['../../.env']);

  if (!env.isEveryDefined([
    'IOTA_CONFIG_ID',
    'QUERY_ID',
    'REDIRECT_URI',
    'DID',
    'PRESENTATION_SUBMISSION',
    'VP_TOKEN',
    'WALLET_ARI',
    'VP_DEFINITION'
  ])) {
    throw Exception(
      'Missing environment variables. Please provide IOTA_CONFIG_ID, QUERY_ID, REDIRECT_URI, DID, PRESENTATION_SUBMISSION, VP_TOKEN, WALLET_ARI, VP_DEFINITION',
    );
  }

  final configurationId = env['IOTA_CONFIG_ID']!;
  final queryId = env['QUERY_ID']!;
  final did = env['DID']!;
  final redirectUri = env['REDIRECT_URI']!;
  final presentationSubmission = env['PRESENTATION_SUBMISSION']!;
  final vpToken = env['VP_TOKEN']!;
  final walletAri = env['WALLET_ARI']!;
  final vpDefinition = env['VP_DEFINITION']!;

  return IotaEnvironment(
    configurationId: configurationId,
    queryId: queryId,
    did: did,
    redirectUri: redirectUri,
    presentationSubmission: presentationSubmission,
    vpToken: vpToken,
    walletAri: walletAri,
    vpDefinition: vpDefinition,
  );
}

ProjectEnvironment getProjectEnvironment() {
  final env = DotEnv()..load(['../../.env']);

  if (!env.isEveryDefined(
      ['PROJECT_ID', 'TOKEN_ID', 'PRIVATE_KEY', 'DID', 'WALLET_ID'])) {
    throw Exception(
      'Missing environment variables. Please provide PROJECT_ID, TOKEN_ID, PRIVATE_KEY, DID, WALLET_ID',
    );
  }

  // Workaround for dotenv multiline limitations
  final privateKey = env['PRIVATE_KEY']!.replaceAll('\\n', '\n');
  final token = env['TOKEN_ID']!;
  final projectId = env['PROJECT_ID']!;
  final keyId = env['KEY_ID'] ?? '';
  final passphrase = env['PASSPHRASE'] ?? '';
  final did = env['DID']!;
  final walletId = env['WALLET_ID']!;

  return ProjectEnvironment(
    projectId: projectId,
    tokenId: token,
    privateKey: privateKey,
    keyId: keyId,
    passphrase: passphrase,
    did: did,
    walletId: walletId,
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
