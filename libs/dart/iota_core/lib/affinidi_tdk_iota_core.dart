library;

import 'src/iota_auth_provider.dart';

class IotaCore {
  static Future<IotaCredentials> limitedTokenToIotaCredentials(
    String token,
  ) async {
    final iotaAuthProvider = IotaAuthProvider();
    return iotaAuthProvider.limitedTokenToIotaCredentials(token);
  }
}