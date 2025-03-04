import 'package:affinidi_tdk_auth_provider/affinidi_tdk_auth_provider.dart';
import 'package:affinidi_tdk_iota_core/affinidi_tdk_iota_core.dart';
import 'package:test/test.dart';
import 'package:dotenv/dotenv.dart';

void main() {
  group('Iota core', () {
    late AuthProvider authProvider;
    final env = DotEnv()..load();

    setUp(() {
      // Workaround for dotenv multiline limitations
      final privateKey = env['PRIVATE_KEY']!.replaceAll('\\n', '\n');

      authProvider = AuthProvider(
        projectId: env['PROJECT_ID']!,
        tokenId: env['TOKEN_ID']!,
        privateKey: privateKey,
        // Optional parameters
        keyId: env['KEY_ID'],
        passphrase: env['PASSPHRASE'],
      );
    });

    test('Get Iota credentials', () async {
      final iotaToken = await authProvider.createIotaToken(
        iotaConfigId: env['IOTA_CONFIG_ID']!, did: env['DID']!);

      expect(iotaToken.iotaJwt, isNotEmpty);
      expect(iotaToken.iotaSessionId, isNotEmpty);

      final iotaCredentials = await IotaCore.limitedTokenToIotaCredentials(iotaToken.iotaJwt);

      expect(iotaCredentials.credentials.accessKeyId, isNotEmpty);
      expect(iotaCredentials.credentials.secretKey, isNotEmpty);
      expect(iotaCredentials.credentials.sessionToken, isNotEmpty);
      expect(iotaCredentials.credentials.expiration, isNotNull);
      expect(iotaCredentials.connectionClientId, isNotEmpty);
    });
  });
}
