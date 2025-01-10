import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:base_codecs/base_codecs.dart';
import 'package:bip32/bip32.dart';
import 'package:bip39_mnemonic/bip39_mnemonic.dart';
import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:uuid/uuid.dart';
import 'package:web3dart/credentials.dart';
import 'package:web3dart/crypto.dart';

/// This is intended for **DEMO purposes only** and **should NOT be used in production**.
class ConsumerTokenProvider {
  static const etheriumIdentityKey = "m/44'/60'/0'/0/0";
  static const walletSeedMnemonic =
      'first twenty four words mnemonic passphrase goes here ...';
  static const String affConsumerAuthTokenEndpoint =
      'https://apse1.dev.api.affinidi.io/iam/v1/consumer/oauth2/token';
  static const secondsBetweenApiAuthRefresh = 300;

  Future<String> getToken() async {
    ///
    /// you would never do this for real, loading from a const but this is a DEMO!!!!!
    ///

    final mn = Mnemonic.fromSentence(walletSeedMnemonic, Language.english);

    var master = BIP32.fromSeed(Uint8List.fromList(mn.entropy));

    var key = master.derivePath(etheriumIdentityKey);
    var myDiD = _getDID(key.privateKey!);
    var header = json.encode(_getHeader(_getKid(myDiD)));
    var payload = json.encode(
      _getPayload(myDiD, affConsumerAuthTokenEndpoint),
    );
    var b64header = _base64Unpadded(base64UrlEncode(utf8.encode(header)));
    var b64payload = _base64Unpadded(base64UrlEncode(utf8.encode(payload)));
    var msgHashHex =
        sha256.convert(utf8.encode("$b64header.$b64payload")).bytes;
    var assertion = (key.sign(Uint8List.fromList(msgHashHex)));
    var jwt =
        '$b64header.$b64payload.${_base64Unpadded(base64UrlEncode(Uint8List.fromList(assertion)))}';

    var token = await Future.microtask(() => _getConsumerToken(jwt, myDiD));

    Timer(const Duration(seconds: secondsBetweenApiAuthRefresh), () {
      print('[TOKEN] Refreshing consumer auth token (timer)');
    });

    return token;
  }

  String _getDID(Uint8List privateKey) {
    var private = EthPrivateKey.fromHex(bytesToHex(privateKey));
    return 'did:key:z${base58BitcoinEncode(Uint8List.fromList([
          231,
          1
        ] + private.publicKey.getEncoded().toList()))}';
  }

  String _getKid(String did) {
    return "$did#${did.substring("did:key:".length)}";
  }

  Map<String, dynamic> _getHeader(String kid) {
    return {'alg': 'ES256K', 'kid': kid};
  }

  Map<String, dynamic> _getPayload(String did, String tokenEndpoint) {
    var issueTimeS =
        (DateTime.timestamp().millisecondsSinceEpoch / 1000).floor();
    var payload = {
      'iss': did,
      'sub': did,
      'aud': tokenEndpoint,
      'jti': const Uuid().v4(),
      'exp': issueTimeS + 5 * 60,
      'iat': issueTimeS,
    };
    return payload;
  }

  String _base64Unpadded(String value) {
    if (value.endsWith('==')) return value.substring(0, value.length - 2);
    if (value.endsWith('=')) return value.substring(0, value.length - 1);
    return value;
  }

  Future<String> _getConsumerToken(String clientAssertion, String did) async {
    print('Connecting to Affinidi');

    final dioInstance = Dio();
    Map<String, String> data = {
      "grant_type": 'client_credentials',
      "client_assertion_type":
          'urn:ietf:params:oauth:client-assertion-type:jwt-bearer',
      "client_assertion": clientAssertion,
      "client_id": did,
    };

    Response response = await dioInstance.post(
      affConsumerAuthTokenEndpoint,
      data: data,
      options: Options(
        contentType: 'application/json',
        headers: {
          'Content-Type': 'application/json',
          "Accept": 'application/json',
        },
      ),
    );

    print('     done! Got a consumer token');
    return response.data['access_token'];
  }
}
