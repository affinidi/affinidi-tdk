// @JS()
// library web_bundle;

import 'package:affinidi_common/affinidi_common.dart';
import 'package:affinidi_consumer_wallet_service/src/wallet_service_interface.dart';
import 'package:affinidi_consumer_wallet_service/src/web_bundle.dart';
import 'package:avmp_cryptography_service/cryptography_service.dart';
import 'package:convert/convert.dart';
// import 'dart:js_util';
import 'dart:async';

import 'dart:js' as js;

Future<T> promiseToFuture<T>(js.JsObject promise) async {
  final completer = Completer<T>();

  promise.callMethod('then', [
    js.allowInterop((value) {
      completer.complete(value);
    }),
    js.allowInterop((error) {
      completer.completeError(error);
    })
  ]);

  return completer.future;
}

class WalletServiceWeb implements WalletServiceInterface {
  final walletService = WalletService();

  @override
  Future<void> init() async {}

  // Future<T> promiseToFuture<T>(js.Promise promise) async {
  //   final completer = Completer<T>();

  //   promise.then((value) {
  //     completer.complete(value);
  //   }, onError: (error) {
  //     completer.completeError(error);
  //   });

  //   return completer.future;
  // }

  @override
  Future<void> createWallet() async {
    print('Started creating wallet');

    final cryptographyService = CryptographyService();
    final key = cryptographyService.getRandomBytes(32);
    final keyHex = hex.encode(key);

    final jsPromise = walletService.createWallet(keyHex);

    await promiseToFuture(jsPromise as js.JsObject);
    print('Completed creating wallet');
  }

  @override
  Future<String> getWalletDid() async {
    print('Started getting DID');
    final did = walletService.did;

    print('Completed getting DID');
    return did;
  }

  @override
  Future<String> getWalletEncryptedSeed() async {
    print('Started getting Encrypted Seed');
    final encryptedSeed = walletService.encryptedSeed;

    print('Completed getting Encrypted Seed');
    return encryptedSeed;
  }

  @override
  Future<String> getWalletPassword() async {
    print('Started getting Wallet Password');
    final password = walletService.password;

    print('Completed getting Wallet Password');
    return password;
  }

  @override
  Future<void> openWalletByEncryptedSeed({
    required String walletEncryptedSeed,
    required String walletPassword,
  }) async {
    print('Started opening wallet');
    final jsPromise = walletService.openWalletByEncryptedSeed(
      walletEncryptedSeed,
      walletPassword,
    );

    await promiseToFuture(jsPromise as js.JsObject);
    print('Completed opening wallet');
  }

  @override
  Future<String> getSignedAssertionObject({required String aud}) async {
    print('Started getting assertion');

    final authenticationService = AuthenticationService();
    final assertion = authenticationService.getSignedAssertionObject(
      await getWalletEncryptedSeed(),
      await getWalletPassword(),
      await getWalletDid(),
      aud,
    );

    print('Completed getting assertion');
    return assertion;
  }

  @override
  Future<String> getCisJwt() async {
    print('Started getting CIS JWT');

    final authenticationService = AuthenticationService();
    final assertion = authenticationService.signAssertion(
      await getWalletEncryptedSeed(),
      await getWalletPassword(),
      Environment.fetchConsumerCisUrl(),
    );

    print('Completed getting CIS JWT');
    return assertion;
  }

  @override
  Future<void> closeWallet() async {
    print('Started closing wallet');
    walletService.closeWallet();

    print('Completed closing wallet');
  }
}
