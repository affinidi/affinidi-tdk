abstract interface class WalletServiceInterface {
  Future<void> init();

  Future<String> getWalletDid();

  Future<String> getWalletEncryptedSeed();

  Future<String> getWalletPassword();

  Future<void> createWallet();

  Future<void> openWalletByEncryptedSeed({
    required String walletEncryptedSeed,
    required String walletPassword,
  });

  Future<void> closeWallet();

  Future<String> getSignedAssertionObject({
    required String aud,
  });

  Future<String> getCisJwt();
}
