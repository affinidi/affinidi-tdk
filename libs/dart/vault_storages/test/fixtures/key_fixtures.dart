import 'dart:typed_data';

import 'package:ssi/ssi.dart';

class KeyFixtures {
  static Uint8List get testBytes => Uint8List.fromList([
        3,
        90,
        191,
        180,
        186,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44
      ]);

  static KeyType get testKeyType => KeyType.secp256k1;
}
