import 'dart:typed_data';

/// Class to hold a key and its associated nonce
class ContentKey {
  /// creates an instance of [ContentKey]
  ContentKey({
    required Uint8List key,
    required Uint8List nonce,
  })  : _key = key,
        _nonce = nonce;

  final Uint8List _key;

  /// Return the key
  Uint8List get key => _key;

  final Uint8List _nonce;

  /// Returns the nonce
  Uint8List get nonce => _nonce;
}
