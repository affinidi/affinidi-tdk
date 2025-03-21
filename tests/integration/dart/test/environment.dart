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

  ProjectEnvironment({
    required this.projectId,
    required this.tokenId,
    required this.privateKey,
    this.keyId,
    this.passphrase,
    required this.did,
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
  final String redirectUri;
  final String presentationSubmission;
  final String vpToken;

  IotaEnvironment({
    required this.configurationId,
    required this.queryId,
    required this.did,
    required this.redirectUri,
    required this.presentationSubmission,
    required this.vpToken,
  });
}

IotaEnvironment getIotaEnvironment() {
  final env = DotEnv()..load(['../../.env']);

  if (!env.isEveryDefined(['IOTA_CONFIG_ID', 'QUERY_ID', 'REDIRECT_URI', 'DID', 'PRESENTATION_SUBMISSION', 'VP_TOKEN'])) {
    throw Exception(
      'Missing environment variables. Please provide IOTA_CONFIG_ID, QUERY_ID, REDIRECT_URI, DID, PRESENTATION_SUBMISSION, VP_TOKEN',
    );
  }

  final configurationId = env['IOTA_CONFIG_ID']!;
  final queryId = env['QUERY_ID']!;
  final did = env['DID']!;
  final redirectUri = env['REDIRECT_URI']!;
  final presentationSubmission = env['PRESENTATION_SUBMISSION']!;
  final vpToken = env['VP_TOKEN']!;

  return IotaEnvironment(
    configurationId: configurationId,
    queryId: queryId,
    did: did,
    redirectUri: redirectUri,
    presentationSubmission: presentationSubmission,
    vpToken: vpToken,
  );
}

ProjectEnvironment getProjectEnvironment() {
  final env = DotEnv()..load(['../../.env']);

  if (!env.isEveryDefined(['PROJECT_ID', 'TOKEN_ID', 'PRIVATE_KEY', 'DID'])) {
    throw Exception(
      'Missing environment variables. Please provide PROJECT_ID, TOKEN_ID, PRIVATE_KEY, DID',
    );
  }

  // Workaround for dotenv multiline limitations
  final privateKey = env['PRIVATE_KEY']!.replaceAll('\\n', '\n');
  final token = env['TOKEN_ID']!;
  final projectId = env['PROJECT_ID']!;
  final keyId = env['KEY_ID'] ?? '';
  final passphrase = env['PASSPHRASE'] ?? '';
  final did = env['DID']!;

  return ProjectEnvironment(
    projectId: projectId,
    tokenId: token,
    privateKey: privateKey,
    keyId: keyId,
    passphrase: passphrase,
    did: did,
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
