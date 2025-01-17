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

/// This is intended for **DEMO purposes only** and **should NOT be used in production**.
class ConsumerTokenProvider {
  static const etheriumIdentityKey = "m/44'/60'/0'/0/0";
  static final String affConsumerAuthTokenEndpoint =
      Environment.fetchConsumerAudienceUrl();
  static const secondsBetweenApiAuthRefresh = 300;

  /// DEMO method to get a consumer token
  Future<String> getToken(Uint8List seedBytes) async {
    final master = BIP32.fromSeed(seedBytes);

    final key = master.derivePath(etheriumIdentityKey);
    final myDiD = _getDID(key.privateKey!);
    final header = json.encode(_getHeader(_getKid(myDiD)));
    final payload = json.encode(
      _getPayload(myDiD, affConsumerAuthTokenEndpoint),
    );
    final b64header = _base64Unpadded(base64UrlEncode(utf8.encode(header)));
    final b64payload = _base64Unpadded(base64UrlEncode(utf8.encode(payload)));
    final msgHashHex =
        sha256.convert(utf8.encode("$b64header.$b64payload")).bytes;
    final assertion = (key.sign(Uint8List.fromList(msgHashHex)));
    final jwt = '$b64header.$b64payload.${_base64Unpadded(
      base64UrlEncode(Uint8List.fromList(assertion)),
    )}';

    final token = await _getConsumerToken(jwt, myDiD);
    return token;
  }

  String _getDID(Uint8List privateKey) {
    final private = EthPrivateKey.fromHex(bytesToHex(privateKey));
    return 'did:key:z${base58BitcoinEncode(
      Uint8List.fromList([231, 1] + private.publicKey.getEncoded().toList()),
    )}';
  }

  String _getKid(String did) {
    return "$did#${did.substring("did:key:".length)}";
  }

  Map<String, dynamic> _getHeader(String kid) {
    return {'alg': 'ES256K', 'kid': kid};
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

  String _base64Unpadded(String value) {
    if (value.endsWith('==')) return value.substring(0, value.length - 2);
    if (value.endsWith('=')) return value.substring(0, value.length - 1);
    return value;
  }

  Future<String> _getConsumerToken(String clientAssertion, String did) async {
    final dioInstance = Dio();
    final data = {
      "grant_type": 'client_credentials',
      "client_assertion_type":
          'urn:ietf:params:oauth:client-assertion-type:jwt-bearer',
      "client_assertion": clientAssertion,
      "client_id": did,
    };

    final response = await dioInstance.post(
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

    return response.data['access_token'];
  }
}
