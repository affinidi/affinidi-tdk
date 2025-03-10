import 'package:affinidi_tdk_auth_provider/affinidi_tdk_auth_provider.dart';
import 'package:affinidi_tdk_iota_core/affinidi_tdk_iota_core.dart';
import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:dotenv/dotenv.dart';

void main() async {
  var env = DotEnv()..load();
  // DID is usually obtained at runtime from the registered user
  if (!env.isEveryDefined(['PROJECT_ID', 'TOKEN_ID', 'PRIVATE_KEY', 'IOTA_CONFIG_ID', 'DID'])) {
    print('Missing variables. Please provide PROJECT_ID, TOKEN_ID, PRIVATE_KEY, IOTA_CONFIG_ID and DID');
    return;
  }
  // Workaround for dotenv multiline limitations
  final privateKey = env['PRIVATE_KEY']!.replaceAll('\\n', '\n');

  final provider = AuthProvider(
    projectId: env['PROJECT_ID']!,
    tokenId: env['TOKEN_ID']!,
    privateKey: privateKey,
    // Optional parameters
    keyId: env['KEY_ID'],
    passphrase: env['PASSPHRASE'],
  );

  // Fetch iota token (websocket).
  try {
    final iotaToken = provider.createIotaToken(iotaConfigId: env['IOTA_CONFIG_ID']!, did: env['DID']!);
    final iotaCredentials = await IotaCore.limitedTokenToIotaCredentials(iotaToken.iotaJwt);

    print(iotaCredentials.credentials.accessKeyId);
    print(iotaCredentials.connectionClientId);
  } catch (e) {
    print('Error obtaining token: $e');
  }
}
