import 'dart:typed_data';

import 'package:affinidi_tdk_vault_data_manager/src/model/account.dart';
import 'package:affinidi_tdk_vault_data_manager/src/model/node_status.dart';
import 'package:affinidi_tdk_vault_data_manager/src/model/node_type.dart';
import 'package:mocktail/mocktail.dart';

import 'mock_deterministic_wallet.dart';
import 'mock_digital_crendential.dart';
import 'mock_key_pair.dart';
import 'mock_profile_repository.dart';
import 'mock_public_key.dart';
import 'mock_vault_store.dart';
import 'mock_verifiable_credential.dart';

class FakeAccountMetadata extends Fake implements AccountMetadata {
  @override
  final DekekInfo dekekInfo;
  @override
  final List<SharedStorageData> sharedStorageData;

  FakeAccountMetadata()
      : dekekInfo = DekekInfo(encryptedDekek: 'test-encrypted-dekek'),
        sharedStorageData = [];
}

void registerAllFallbackValues() {
  registerFallbackValue(Uint8List(0));
  registerFallbackValue('test-profile-id');
  registerFallbackValue(MockVerifiableCredential());
  registerFallbackValue(
      MockDigitalCredential(MockVerifiableCredential(), id: 'test-node-id'));
  registerFallbackValue(NodeType.FILE);
  registerFallbackValue(NodeStatus.CREATED);
  registerFallbackValue(MockDeterministicWallet());
  registerFallbackValue(MockVaultStore());
  registerFallbackValue(MockKeyPair());
  registerFallbackValue(MockDidSigner());
  registerFallbackValue(MockPublicKey());
  registerFallbackValue(FakeAccountMetadata());
}
