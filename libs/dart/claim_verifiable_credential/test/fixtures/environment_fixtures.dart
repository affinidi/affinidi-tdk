import 'dart:typed_data';

import '../environment.dart';

class EnvironmentFixtures {
  static VaultEnvironment testEnvironment = () {
    final seed = Uint8List.fromList(List.generate(32, (idx) => idx + 1));
    return VaultEnvironment(seed: seed);
  }();
}
