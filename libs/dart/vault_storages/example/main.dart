import 'dart:typed_data';

import 'package:affinidi_tdk_vault_storages/affinidi_tdk_vault_storages.dart';
import 'package:ssi/src/wallet/key_store/in_memory_key_store.dart';
import 'package:ssi/ssi.dart';

// To start work with the storage make sure you have updated those values:
//
// [seed] - secret value that serves as the foundation for generating encryption keys.
final seed = Uint8List.fromList(List<int>.generate(32, (index) => index));

void main() async {
  // To create a folder in vault storage you first need to create VaultDataManagerService
  // A VaultDataManagerService handling files will need to be initialized from a profile specific KeyPair.
  // Construct a keyId containing the accountIndex and then use the Wallet to retrieve a KeyPair.
  final keyStore = InMemoryKeyStore();
  final wallet = await Bip32Wallet.fromSeed(seed, keyStore);

  // Create a DidSigner
  final keyPair = await wallet.deriveKey(derivationPath: "m/44'/60'/0'/0'/0'");
  final didDoc = DidKey.generateDocument(keyPair.publicKey);

  final didSigner = DidSigner(
    didDocument: didDoc,
    didKeyId: didDoc.verificationMethod.first.id,
    keyPair: keyPair,
    signatureScheme: SignatureScheme.ecdsa_secp256k1_sha256,
  );

  // Initialize the VaultDataManagerService
  final vaultDataManagerService = await VaultDataManagerService.create(
      didSigner: didSigner, encryptionKey: Uint8List(2));

  // once you have the service you need to:
  // 1. create your first profile using [profiles/create_profile.dart] example
  // 2. create StorageService with [profileId] created on the first step
  final storageService = StorageService(
      vaultDataManagerService: vaultDataManagerService,
      profileId: 'your_profile_id');

  // once you have storage service you can create folder under you profile using:
  await storageService.createFolder(folderName: 'your_folder_name');
}
