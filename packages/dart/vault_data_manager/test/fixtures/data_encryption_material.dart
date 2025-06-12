import 'dart:math';

import 'package:affinidi_tdk_vault_data_manager/src/model/data_encryption_material.dart';

final dataEncryptionMaterial = DataEncryptionMaterial(
  dek: List.generate(32, (index) => Random().nextInt(256), growable: false),
  dekEncryptedByApiPublicKey:
      List.generate(256, (index) => Random().nextInt(256), growable: false),
  dekEncryptedByWalletCryptoMaterial:
      List.generate(64, (index) => Random().nextInt(256), growable: false),
  walletCryptoMaterialHash: 'some_hash',
);
