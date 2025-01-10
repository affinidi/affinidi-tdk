import 'dart:convert';
import 'dart:io';

import 'package:affinidi_common/affinidi_common.dart';
import 'package:affinidi_consumer_wallet_service/src/wallet_service_interface.dart';
import 'package:avmp_cryptography_service/cryptography_service.dart';
import 'package:convert/convert.dart';
import 'package:flutter_js/flutter_js.dart';

class WalletServiceMobileAndDesktop implements WalletServiceInterface {
  late final JavascriptRuntime _jsRuntime;
  final _isApple = Platform.isMacOS || Platform.isIOS;

  @override
  Future<void> init() async {
    _initJsRuntime();

    print('Affinidi SDK is being loaded');

    final affinidiSdkBundleBytes = await _loadGzipFile(
      'packages/avmp_wallet_service_desktop_and_mobile/assets/desktop_and_mobile_js_bundle.gzip',
    );

    print('Affinidi SDK was decompressed');

    final affinidiSdkBundle = utf8.decode(affinidiSdkBundleBytes);
    print('Affinidi SDK was converted back to string');

    final result = _jsRuntime.evaluate(affinidiSdkBundle);

    if (result.isError) {
      print(result.stringResult);
      throw Exception(result.stringResult);
    }

    print('Affinidi SDK was executed by js engine');
  }

  Future<List<int>> _loadGzipFile(String path) async {
    final file = File(path);
    final fileBytes = await file.readAsBytes();
    final decodedBytes = gzip.decode(fileBytes);
    return decodedBytes;
  }

  void _initJsRuntime() {
    _jsRuntime = getJavascriptRuntime();

    _jsRuntime.onMessage('onError', (args) {
      print(args.toString());
    });

    _jsRuntime.evaluate("""var window = global = globalThis;""");
    _jsRuntime.evaluate('var process = { env: {} }');
    _jsRuntime.evaluate('globalThis.exports = {}');

    print('JS engine initialized');
  }

  Future<String> _evalJsAsync(String jsCode) async {
    final evalResult = await _jsRuntime.evaluateAsync(jsCode);
    _jsRuntime.executePendingJob();

    final promiseResult = await _jsRuntime.handlePromise(evalResult);
    final result = promiseResult.stringResult;

    if (promiseResult.isError) {
      throw Exception(result);
    }

    if (_isApple && (result.startsWith('"{') && result.endsWith('}"'))) {
      // unwrap JSON and unescape " characters
      return result
          .substring(1, result.length - 1) // remove wrapping with "
          .replaceAll('\\"', '"');
    }

    return result;
  }

  String _evalJs(String jsCode) {
    final result = _jsRuntime.evaluate(jsCode);

    if (result.isError) {
      throw Exception(result.stringResult);
    }

    return result.stringResult;
  }

  void _generateRandomNumbers() {
    const arraysCount = 10;
    const arrayLength = 32;

    final cryptographyService = CryptographyService();
    final randomArrays = List.generate(arraysCount,
        (index) => cryptographyService.getRandomBytes(arrayLength));

    final jsCode = """
      global.randomArrays = ${jsonEncode(randomArrays)};
      JSON.stringify(global.randomArrays, null, 2);
    """;

    _evalJs(jsCode);
    print('Generated random numbers for cryptography');
  }

  @override
  Future<void> createWallet() async {
    print('Started creating wallet');
    _generateRandomNumbers();

    final cryptographyService = CryptographyService();
    final key = cryptographyService.getRandomBytes(32);
    final keyHex = hex.encode(key);

    final jsCode = """
      async function createWallet() {
        global.walletService = new WalletService();

        const walletKey = '$keyHex';
        await global.walletService.createWallet(walletKey);
      }

      createWallet();
    """;

    await _evalJsAsync(jsCode);
    print('Completed creating wallet');
  }

  @override
  Future<String> getWalletDid() async {
    print('Started getting DID');

    const jsCode = """
      global.walletService.did;
    """;

    final did = _evalJs(jsCode);
    print('Completed getting DID');

    return did;
  }

  @override
  Future<String> getWalletEncryptedSeed() async {
    print('Started getting Encrypted Seed');

    const jsCode = """
      global.walletService.encryptedSeed;
    """;

    final encryptedSeed = _evalJs(jsCode);
    print('Completed getting Encrypted Seed');

    return encryptedSeed;
  }

  @override
  Future<String> getWalletPassword() async {
    print('Started getting Wallet Password');

    const jsCode = """
      global.walletService.password;
    """;

    final password = _evalJs(jsCode);
    print('Completed getting Wallet Password');

    return password;
  }

  @override
  Future<void> openWalletByEncryptedSeed({
    required String walletEncryptedSeed,
    required String walletPassword,
  }) async {
    print('Started opening wallet');

    final jsCode = """
      async function openWallet() {
        global.walletService = new WalletService();
        await global.walletService.openWalletByEncryptedSeed('$walletEncryptedSeed', '$walletPassword');
      }

      openWallet();
    """;

    await _evalJsAsync(jsCode);
    print('Completed opening wallet');
  }

  @override
  Future<String> getSignedAssertionObject({required String aud}) async {
    print('Started getting assertion');
    _generateRandomNumbers();

    final jsCode = """
      function getAssertion() {
        const assertion = new AuthenticationService().getSignedAssertionObject(
          global.walletService.encryptedSeed,
          global.walletService.password,
          global.walletService.did,
          '$aud'
        );

        return assertion;
      }

      getAssertion();
    """;

    final assertion = _evalJs(jsCode);

    print('Completed getting assertion');
    return assertion;
  }

  @override
  Future<String> getCisJwt() async {
    print('Started getting CIS JWT');
    _generateRandomNumbers();

    final jsCode = """
      function getJwt() {
        const jwt = new AuthenticationService().signAssertion(
          global.walletService.encryptedSeed,
          global.walletService.password,
          '${Environment.fetchConsumerAudienceUrl()}'
        );

        return jwt;
      }

      getJwt();
    """;

    final jwt = _evalJs(jsCode);

    print('Completed getting CIS JWT');
    return jwt;
  }

  @override
  Future<void> closeWallet() async {
    print('Started closing wallet');

    const jsCode = """
      global.walletService.closeWallet();
    """;

    _evalJs(jsCode);
    print('Completed closing wallet');
  }
}
