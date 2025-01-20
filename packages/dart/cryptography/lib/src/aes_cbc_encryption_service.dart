// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:convert/convert.dart';
import 'package:pointycastle/export.dart';

import 'aes_cbc_encryption_interface.dart';

class AesCbcEncryptionService implements AesCbcEncryptionServiceInterface {
  final IV_LENGTH = 16;
  final BLOCK_SIZE_BYTES = 16;

  final didMethodSeparator = '++';

  final _secureRandom = FortunaRandom();

  AesCbcEncryptionService() {
    final seed = Uint8List.fromList(
      List.generate(32, (n) => Random.secure().nextInt(255)),
    );

    _secureRandom.seed(KeyParameter(seed));
  }

  @override
  String encryptToHex(Uint8List key, Uint8List data) {
    final bytes = encryptToBytes(key, data);

    return hex.encode(bytes);
  }

  @override
  Uint8List? decryptFromHex(Uint8List key, String hexStr) {
    final ivAndBytes = hex.decode(hexStr);

    final result = decryptFromBytes(key, Uint8List.fromList(ivAndBytes));

    return result;
  }

  @override
  Uint8List encryptToBytes(Uint8List key, Uint8List data) {
    final iv = _secureRandom.nextBytes(IV_LENGTH);
    final bytes = _aesCbcEncrypt(
      key: key,
      iv: iv,
      paddedPlaintext: _pad(data, BLOCK_SIZE_BYTES),
      enforce256KeyLength: true,
      enforce128BitAlignment: true,
    );

    return Uint8List.fromList([...iv, ...bytes]);
  }

  @override
  Uint8List? decryptFromBytes(Uint8List key, Uint8List ivAndBytes) {
    try {
      final iv = Uint8List.fromList(ivAndBytes.take(IV_LENGTH).toList());
      final bytes = Uint8List.fromList(ivAndBytes.skip(IV_LENGTH).toList());

      final decryptedAndPadding = _aesCbcDecrypt(
        key: key,
        iv: iv,
        cipherText: bytes,
        enforceAssertions: true,
      );

      return _unpad(decryptedAndPadding);
    } catch (error) {
      return null;
    }
  }

  @override
  String decryptSeed({
    required String encryptedSeedHex,
    required String encryptionKeyHex,
  }) {
    final List<int> walletSeedBuff = hex.decode(encryptedSeedHex);
    final nonce = walletSeedBuff.sublist(0, IV_LENGTH);
    final ciphertextAndMac = walletSeedBuff.sublist(IV_LENGTH);
    final key = hex.decode(encryptionKeyHex);

    final decryptedSeed = _aesCbcDecrypt(
      key: Uint8List.fromList(key),
      iv: Uint8List.fromList(nonce),
      cipherText: Uint8List.fromList(ciphertextAndMac),
    );

    final decryptedSeedEncoded = utf8.decode(decryptedSeed);
    final [seed, ...didMethod] = decryptedSeedEncoded.split(
      didMethodSeparator,
    );

    return seed;
  }

  Uint8List _aesCbcEncrypt({
    required Uint8List key,
    required Uint8List iv,
    required Uint8List paddedPlaintext,
    bool enforce256KeyLength = false,
    bool enforce128BitAlignment = false,
  }) {
    if (enforce256KeyLength) {
      // enforce 256-bit key length
      assert(256 == key.length * 8);
    } else {
      // allow 128, 192, or 256-bit key lengths
      assert([128, 192, 256].contains(key.length * 8));
    }

    assert(128 == iv.length * 8); // IV must be 128 bits

    if (enforce128BitAlignment) {
      // padded plaintext is a multiple of 128 bits
      assert(paddedPlaintext.length * 8 % 128 == 0);
    } else {
      // padded plaintext is exactly 128 bits
      assert(128 == paddedPlaintext.length * 8);
    }

    // Create a CBC block cipher with AES, and initialize with key and IV

    final cbc = CBCBlockCipher(AESEngine())
      ..init(
        true,
        ParametersWithIV(KeyParameter(key), iv),
      ); // true=encrypt

    final cipherText = Uint8List(paddedPlaintext.length); // allocate space

    var offset = 0;

    while (offset < paddedPlaintext.length) {
      offset += cbc.processBlock(paddedPlaintext, offset, cipherText, offset);
    }

    assert(offset == paddedPlaintext.length);

    return cipherText;
  }

  Uint8List _aesCbcDecrypt({
    required Uint8List key,
    required Uint8List iv,
    required Uint8List cipherText,
    bool enforceAssertions = false,
  }) {
    if (enforceAssertions) {
      assert(256 == key.length * 8);
      assert(128 == iv.length * 8);
      assert(cipherText.length * 8 % 128 == 0);
    }

    // Create a CBC block cipher with AES, and initialize with key and IV

    final cbc = CBCBlockCipher(AESEngine())
      ..init(
        false,
        ParametersWithIV(KeyParameter(key), iv),
      ); // false=decrypt

    final paddedPlainText = Uint8List(cipherText.length); // allocate space

    var offset = 0;

    while (offset < cipherText.length) {
      offset += cbc.processBlock(cipherText, offset, paddedPlainText, offset);
    }

    assert(offset == cipherText.length);

    return paddedPlainText;
  }

  Uint8List _pad(List<int> bytes, int blockSizeBytes) {
    // The PKCS #7 padding just fills the extra bytes with the same value.
    // That value is the number of bytes of padding there is.
    //
    // For example, something that requires 3 bytes of padding with append
    // [0x03, 0x03, 0x03] to the bytes. If the bytes is already a multiple of the
    // block size, a full block of padding is added.

    final padLength = blockSizeBytes - (bytes.length % blockSizeBytes);
    final padded = Uint8List(bytes.length + padLength)..setAll(0, bytes);

    PKCS7Padding().addPadding(padded, bytes.length);
    return padded;
  }

  Uint8List _unpad(Uint8List padded) {
    final unpadded =
        padded.sublist(0, padded.length - PKCS7Padding().padCount(padded));
    return unpadded;
  }
}
