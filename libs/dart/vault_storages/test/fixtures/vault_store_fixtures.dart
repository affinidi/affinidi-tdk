import 'dart:typed_data';
import 'package:ssi/ssi.dart';

class VaultStoreFixtures {
  static const String testKeyId = 'test_key';
  static const int testAccountIndex = 42;

  static final Uint8List testSeed = Uint8List.fromList([1, 2, 3, 4, 5]);
  static final Uint8List testPrivateKeyBytes = Uint8List.fromList([1, 2, 3, 4]);

  static StoredKey get testStoredKey => StoredKey(
        keyType: KeyType.secp256k1,
        privateKeyBytes: testPrivateKeyBytes,
      );

  static Map<String, dynamic> get testStoredKeyJson => {
        'keyType': 'secp256k1',
        'privateKeyBytes': testPrivateKeyBytes,
      };
}
