import 'package:affinidi_auth_provider/affinidi_auth_provider.dart';
import 'package:dotenv/dotenv.dart';

void main() async {
  final env = DotEnv(includePlatformEnvironment: true)..load();
  if (!env.isEveryDefined(['PROJECT_ID', 'TOKEN_ID', 'PRIVATE_KEY'])) {
    print(
        'Missing environment variables. Please provide PROJECT_ID, TOKEN_ID, PRIVATE_KEY');
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

  try {
    // Fetch project scoped token
    final projectScopedToken = await provider.fetchProjectScopedToken();
    print('Successfully obtained project scoped token:');
    print(projectScopedToken);
  } catch (e) {
    print('Error obtaining token: $e');
  }
}
