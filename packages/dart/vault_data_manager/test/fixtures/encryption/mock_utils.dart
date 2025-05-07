import 'dart:typed_data';

Uint8List mockBytes({int seed = 0}) =>
    Uint8List.fromList(List.generate(32, (i) => i + seed));
