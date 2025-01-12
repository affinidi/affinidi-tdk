@JS()
library web_bundle;

import 'package:js/js.dart';
import 'promise.dart';

@JS('JSON.stringify')
external String jsStringify(Object obj);

@JS('JSON.parse')
external Object jsParse(String str);

@JS()
class WalletService {
  external WalletService();
  external Promise<WalletService> createWallet(String key);
  external String get did;
  external String get encryptedSeed;
  external String get password;
  external Promise<WalletService> openWalletByEncryptedSeed(
    String encryptedSeed,
    String encryptionKey,
  );
  external WalletService closeWallet();
  external Object signUnsignedCredential(Object unsignedCredential);
  external Object signUnsignedPresentation(Object obj);
}

@JS()
class AuthenticationService {
  external AuthenticationService();
  external String getSignedAssertionObject(
    String encryptionSeed,
    String seedPassword,
    String did,
    String aud,
  );

  external String signAssertion(
    String encryptionSeed,
    String seedPassword,
    String aud,
  );
}

@JS()
class PexProcessor {
  external PexProcessor();
  external Object matchVcsWithPresentationDefinition(
    Object input,
  );
  external Object generateVpTokenFromMatchedVcs(
    Object input,
  );
}
