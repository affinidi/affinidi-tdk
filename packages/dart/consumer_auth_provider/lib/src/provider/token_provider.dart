import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:base_codecs/base_codecs.dart';
import 'package:bip32/bip32.dart';
import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:uuid/uuid.dart';
import 'package:web3dart/credentials.dart';
import 'package:web3dart/crypto.dart';

part 'consumer_token_provider.dart';
part 'cis_token_provider.dart';

/// TokenProvider abstract class
abstract class TokenProvider {
  static const _etheriumIdentityKey = "m/44'/60'/0'/0/0";

  /// Gets a signed JWT token using the provided seed bytes.
  Future<String> getToken(Uint8List seed);

  /// Fetches a signed JWT token using the provided [seed] bytes, [header] and [tokenEndpoint].
  Future<String> _getJwtToken(
    Uint8List seed,
    Map<String, dynamic> header,
    String tokenEndpoint,
  ) async {
    final myDiD = _getDID(seed);
    final jsonHeader = json.encode(header);
    final payload = json.encode(
      _getPayload(myDiD, tokenEndpoint),
    );
    final b64header = _base64Unpadded(base64UrlEncode(utf8.encode(jsonHeader)));
    final b64payload = _base64Unpadded(base64UrlEncode(utf8.encode(payload)));
    final msgHashHex =
        sha256.convert(utf8.encode("$b64header.$b64payload")).bytes;

    final walletKey = _getKey(seed);
    final assertion = (walletKey.sign(Uint8List.fromList(msgHashHex)));
    return '$b64header.$b64payload.${_base64Unpadded(
      base64UrlEncode(Uint8List.fromList(assertion)),
    )}';
  }

  String _getDID(Uint8List seed) {
    final key = _getKey(seed);
    final private = EthPrivateKey.fromHex(bytesToHex(key.privateKey!));
    return 'did:key:z${base58BitcoinEncode(
      Uint8List.fromList([231, 1] + private.publicKey.getEncoded().toList()),
    )}';
  }

  BIP32 _getKey(Uint8List seed) {
    final master = BIP32.fromSeed(seed);
    return master.derivePath(_etheriumIdentityKey);
  }

  String _getKid(String did) {
    return "$did#${did.substring("did:key:".length)}";
  }

  String _base64Unpadded(String value) {
    if (value.endsWith('==')) return value.substring(0, value.length - 2);
    if (value.endsWith('=')) return value.substring(0, value.length - 1);
    return value;
  }

  Map<String, dynamic> _getPayload(String did, String tokenEndpoint) {
    final issueTimeS =
        (DateTime.timestamp().millisecondsSinceEpoch / 1000).floor();
    final payload = {
      'iss': did,
      'sub': did,
      'aud': tokenEndpoint,
      'jti': const Uuid().v4(),
      'exp': issueTimeS + 5 * 60,
      'iat': issueTimeS,
    };
    return payload;
  }
}
