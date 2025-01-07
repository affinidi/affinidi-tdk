import 'package:affinidi_auth_provider/affinidi_auth_provider.dart';

void main() async {
  final provider = AuthProvider(
      projectId: 'my-project-id',
      tokenId: 'my-token-id',
      privateKey: '''-----BEGIN PRIVATE KEY-----
...
-----END PRIVATE KEY-----''',
      // Optional parameters
      keyId: 'your_key_id',
      passphrase: 'your_passphrase');

  try {
    // Fetch project scoped token
    final token = await provider.fetchProjectScopedToken();
    print('Successfully obtained token:');
    print(token);
  } catch (e) {
    print('Error obtaining token: $e');
  }
}
