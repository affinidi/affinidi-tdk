import 'package:test/test.dart';
import 'package:affinidi_tdk_wallets_client/affinidi_tdk_wallets_client.dart';


/// tests for WalletApi
void main() {
  final instance = AffinidiTdkWalletsClient().getWalletApi();

  group(WalletApi, () {
    // creates a wallet
    //
    //Future<CreateWalletResponse> createWallet({ CreateWalletInput createWalletInput }) async
    test('test createWallet', () async {
      // TODO
    });

    // delete wallet by walletId
    //
    //Future deleteWallet(String walletId) async
    test('test deleteWallet', () async {
      // TODO
    });

    // get wallet details using wallet Id.
    //
    //Future<WalletDto> getWallet(String walletId) async
    test('test getWallet', () async {
      // TODO
    });

    // lists all wallets
    //
    //Future<WalletsListDto> listWallets({ String didType }) async
    test('test listWallets', () async {
      // TODO
    });

    // signs credential with the wallet
    //
    //Future<SignCredentialResultDto> signCredential(String walletId, SignCredentialInputDto signCredentialInputDto) async
    test('test signCredential', () async {
      // TODO
    });

    // signs a jwt token with the wallet
    //
    //Future<SignJwtTokenOK> signJwtToken(String walletId, SignJwtToken signJwtToken) async
    test('test signJwtToken', () async {
      // TODO
    });

    // update wallet details using wallet Id.
    //
    //Future<WalletDto> updateWallet(String walletId, UpdateWalletInput updateWalletInput) async
    test('test updateWallet', () async {
      // TODO
    });

  });
}
