import 'package:test/test.dart';
import 'package:affinidi_tdk_auth_provider/affinidi_tdk_auth_provider.dart';
import 'package:affinidi_tdk_login_configuration_client/api.dart';
import 'environment.dart';

void main() {
  group('Auth Provider Integration Tests', () {
    final expiredToken =
        'eyJ0eXAiOiJKV1QiLCJhbGciOiJFUzI1NiIsImtpZCI6ImE2MjJhOTk5LTk4NDYtNDhjZi1hNDcwLTIyNzU5ZTFmNDM1YSJ9.eyJjbGllbnRfaWQiOiJmNGVjMDhjOC1kMmRhLTQ0ZmUtOTlmYi01YWNkOTc0NDQ1NTMiLCJzY3AiOlsiZWxlbWVudHNfYXBpIl0sInN1YiI6ImFyaTppYW06OjUyNWYxYTQyLWRjN2MtNGQ3ZC04YTc5LWQ5OGFjM2Q2OWJhZDp0b2tlbi9mNGVjMDhjOC1kMmRhLTQ0ZmUtOTlmYi01YWNkOTc0NDQ1NTMvY2xpZW50L2Y0ZWMwOGM4LWQyZGEtNDRmZS05OWZiLTVhY2Q5NzQ0NDU1MyIsImF1ZCI6ImVsZW1lbnRzX2FwaSIsImlzcyI6Imh0dHBzOi8vYXBzZTEuYXBpLmFmZmluaWRpLmlvL2lhbSIsImlhdCI6MTczNjg5OTIwMiwiZXhwIjoxNzM2OTAyODAyLCJqdGkiOiJhMTZmYTkxNi0wMzBkLTRhZWMtODNlNi1jZTI5ZDlkN2E3ZmIifQ.orIeJ082l2-x_IXa01KA1PXBp6ndYo2024mc-v07We8cgLhZdD0MLK-MQcoMrDzKfj6ZP3UYrOtmcPZrw6Gdrw';

    late ProjectEnvironment env;
    setUp(() {
      env = getProjectEnvironment();
    });

    test('obtain project scoped token, cache it and verify it with public key',
        () async {
      final authProvider = AuthProvider(
        projectId: env.projectId,
        tokenId: env.tokenId,
        privateKey: env.privateKey,
        keyId: env.keyId,
        passphrase: env.passphrase,
      );
      expect(authProvider.projectScopedToken, isNull);
      final projectScopedToken1 = await authProvider.fetchProjectScopedToken();
      expect(projectScopedToken1, isNotEmpty);
      expect(projectScopedToken1, equals(authProvider.projectScopedToken));
      expect(authProvider.publicKey, isNull);

      final projectScopedToken2 = await authProvider.fetchProjectScopedToken();
      expect(projectScopedToken2, equals(projectScopedToken1));
      expect(authProvider.publicKey, isNotNull);
    });

    test('identify expired project scoped token and request a new one',
        () async {
      final authProvider = AuthProvider(
        projectId: env.projectId,
        tokenId: env.tokenId,
        privateKey: env.privateKey,
        keyId: env.keyId,
        passphrase: env.passphrase,
      );
      expect(authProvider.projectScopedToken, isNull);
      authProvider.projectScopedToken = expiredToken;
      expect(authProvider.projectScopedToken, isNotEmpty);
      expect(authProvider.publicKey, isNull);

      final projectScopedToken = await authProvider.fetchProjectScopedToken();
      expect(projectScopedToken, equals(authProvider.projectScopedToken));
      expect(projectScopedToken, isNotEmpty);
      expect(projectScopedToken, isNot(equals(expiredToken)));
      expect(authProvider.publicKey, isNotNull);
    });

    test('use auth provider with an API client', () async {
      final authProvider = AuthProvider(
        projectId: env.projectId,
        tokenId: env.tokenId,
        privateKey: env.privateKey,
        keyId: env.keyId,
        passphrase: env.passphrase,
      );

      final apiClient =
          ApiClient(authTokenHook: authProvider.fetchProjectScopedToken);
      final apiInstance = GroupApi(apiClient);
      final userGroups = await apiInstance.listGroups();
      expect(userGroups, isA<GroupsList>());
    });
  });
}
