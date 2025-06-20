import 'dart:typed_data';

import 'package:ssi/ssi.dart';

class WalletFixtures {
  static Wallet wallet = Bip32Wallet.fromSeed(
      Uint8List.fromList(List<int>.generate(32, (index) => index)));
}
