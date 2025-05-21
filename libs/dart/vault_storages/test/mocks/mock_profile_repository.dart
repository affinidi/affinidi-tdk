import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_storages/affinidi_tdk_vault_storages.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ssi/ssi.dart';

class MockDeterministicWallet extends Mock implements Wallet {}

class MockVaultStore extends Mock implements VaultStore {}

class MockDidSigner extends Mock implements DidSigner {
  DidDocument get didDocument =>
      super.noSuchMethod(Invocation.getter(#didDocument)) as DidDocument;
}

class TestVfsProfileRepository extends VfsProfileRepository {
  final MockDidSigner mockDidSigner;

  TestVfsProfileRepository(
    super.id, {
    required this.mockDidSigner,
    super.consumerAuthProviderFactory,
    super.iamApiServiceFactory,
    super.vaultDataManagerServiceFactory,
  });
}
