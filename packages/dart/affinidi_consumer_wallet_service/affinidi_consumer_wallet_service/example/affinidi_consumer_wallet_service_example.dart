import 'package:affinidi_consumer_wallet_service/affinidi_consumer_wallet_service.dart';

Future<void> main() async {
  final wallet = WalletServiceWeb();
  // final wallet = WalletServiceMobileAndDesktop();
  await wallet.createWallet();
  print('did: ${await wallet.getWalletDid()}');
  print('encryptedSeed: ${await wallet.getWalletEncryptedSeed()}');
  print('password: ${await wallet.getWalletPassword()}');
  await wallet.closeWallet();
}
