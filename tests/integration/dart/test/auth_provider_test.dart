import 'package:test/test.dart';
import 'package:affinidi_tdk_auth_provider/affinidi_tdk_auth_provider.dart';
import 'environment.dart';

void main() {
  group('Auth Provider Integration Tests', () {
    late ProjectEnvironment env;
    setUp(() {
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

    // test('identify expired project scoped token and request a new one',
    //     () async {
    //   final expiredToken = "";
    //   final authProvider = AuthProvider(
    //     projectId: env.projectId,
    //     tokenId: env.tokenId,
    //     privateKey: env.privateKey,
    //     keyId: env.keyId,
    //     passphrase: env.passphrase,
    //   );
    //   expect(authProvider.projectScopedToken, isNull);
    //   authProvider.projectScopedToken = expiredToken;
    //   expect(authProvider.projectScopedToken, isNotEmpty);
    //   expect(authProvider.publicKey, isNull);

    //   final projectScopedToken = await authProvider.fetchProjectScopedToken();
    //   expect(projectScopedToken, equals(authProvider.projectScopedToken));
    //   expect(projectScopedToken, isNotEmpty);
    //   expect(projectScopedToken, isNot(equals(expiredToken)));
    //   expect(authProvider.publicKey, isNotNull);
    // });
  });
}
