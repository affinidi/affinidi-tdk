import 'dart:typed_data';

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
  final Uint8List seedBytes;

  VaultEnvironment({
    required this.seedBytes,
  });
}

ProjectEnvironment getProjectEnvironment() {
  final env = DotEnv()..load(['../../.env']);

  if (!env.isEveryDefined(['PROJECT_ID', 'TOKEN_ID', 'PRIVATE_KEY'])) {
    throw Exception(
        'Missing environment variables. Please provide PROJECT_ID, TOKEN_ID and PRIVATE_KEY');
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

  if (!env.isEveryDefined(['VAULT_SEED_BYTES'])) {
    throw Exception(
        'Missing environment variables. Please provide VAULT_SEED_BYTES.');
  }

  final encryptedSeedStringified = env['VAULT_SEED_BYTES']!;
  final List<int> encryptedSeedBytes =
      encryptedSeedStringified.split(',').map((e) => int.parse(e)).toList();

  return VaultEnvironment(
    seedBytes: Uint8List.fromList(encryptedSeedBytes),
  );
}
