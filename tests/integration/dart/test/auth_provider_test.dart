import 'package:test/test.dart';
import 'package:affinidi_tdk_auth_provider/affinidi_tdk_auth_provider.dart';

import 'helpers/helpers.dart';

void main() {
  group('Auth Provider Integration Tests', () {
    late ProjectEnvironment env;
    setUpAll(() {
      env = getProjectEnvironment();
    });

    test('obtain project scoped token and cache it', () async {
      final authProvider = AuthProvider(
        projectId: env.projectId,
        tokenId: env.tokenId,
        privateKey: env.privateKey,
        keyId: env.keyId,
        passphrase: env.passphrase,
      );
      final projectScopedToken1 = await authProvider.fetchProjectScopedToken();
      expect(projectScopedToken1, isNotEmpty);

      final projectScopedToken2 = await authProvider.fetchProjectScopedToken();
      expect(projectScopedToken2, equals(projectScopedToken1));
    });
  });
}
