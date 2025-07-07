import 'dart:convert';
import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';

/// This example demonstrates basic encryption and decryption using
/// the Vault Edge Provider's encryption service.
Future<void> main() async {
  final cipherKey = Uint8List.fromList(List.generate(32, (i) => i % 256));
  final vaultStore = InMemoryVaultStore();
  await vaultStore.setContentKey(cipherKey);
  print('Cipher key created');

  final encryptionService = EdgeEncryptionService(vaultStore: vaultStore);

  final originalText = 'Hello';
  final originalData = utf8.encode(originalText);

  final encryptedData =
      await encryptionService.encryptData(Uint8List.fromList(originalData));

  final decryptedData = await encryptionService.decryptData(encryptedData);
  final decryptedText = utf8.decode(decryptedData);
  print('Decrypted: "$decryptedText"');

  if (originalText == decryptedText) {
    print('Data integrity verified!');
  }

  print('Testing different data types:');

  final jsonData = {'name': 'Alice', 'age': 30, 'city': 'New York'};
  final jsonBytes = utf8.encode(jsonEncode(jsonData));
  final encryptedJson =
      await encryptionService.encryptData(Uint8List.fromList(jsonBytes));
  final decryptedJson = await encryptionService.decryptData(encryptedJson);
  final decryptedJsonData = jsonDecode(utf8.decode(decryptedJson));
  print('JSON data encrypted/decrypted successfully');
  print('Original: $jsonData');
  print('Decrypted: $decryptedJsonData');

  final binaryData = Uint8List.fromList([0x01, 0x02, 0x03, 0x04, 0x05]);
  final encryptedBinary = await encryptionService.encryptData(binaryData);
  final decryptedBinary = await encryptionService.decryptData(encryptedBinary);
  print('Binary data encrypted/decrypted successfully');
  print('Original: ${binaryData.toList()}');
  print('Decrypted: ${decryptedBinary.toList()}');
}
