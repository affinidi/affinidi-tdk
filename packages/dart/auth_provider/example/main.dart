import 'package:affinidi_tdk_auth_provider/affinidi_tdk_auth_provider.dart';
import 'package:dotenv/dotenv.dart';

void main() async {
  var env = DotEnv()..load();
  if (!env.isEveryDefined(['PROJECT_ID', 'TOKEN_ID', 'PRIVATE_KEY'])) {
    print(
        'Missing variables. Please provide PROJECT_ID, TOKEN_ID and PRIVATE_KEY');
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

  // Fetch project scoped token
  try {
    final projectScopedToken = await provider.fetchProjectScopedToken();
    print('Successfully obtained project scoped token:');
    print(projectScopedToken);
  } catch (e) {
    print('Error obtaining token: $e');
  }

  // Fetch iota token (websocket).
  // DID is usually obtained at runtime from the registered user
  if (!env.isEveryDefined(['IOTA_CONFIG_ID', 'DID'])) {
    print('Missing variables. Please provide IOTA_CONFIG_ID and DID');
    return;
  }
  try {
    final iotaToken = provider.createIotaToken(
        iotaConfigId: env['IOTA_CONFIG_ID']!, did: env['DID']!);
    print('Successfully obtained iota token:');
    print(iotaToken);
  } catch (e) {
    print('Error obtaining token: $e');
  }
}
