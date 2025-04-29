import 'package:test/test.dart';
import 'package:affinidi_tdk_auth_provider/src/iam_client.dart';
import 'package:affinidi_tdk_auth_provider/src/jwt_helper.dart';
import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:pointycastle/export.dart' as pce;
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';

void main() {
  group('Affinidi Elements Public Key Tests', () {
    test('fetches public key from development environment', () async {
      final env = Environment.environments(EnvironmentType.dev);
      final devIamClient = IamClient(apiGatewayUrl: env.apiGwUrl);
      final publicKey = await JWTHelper.fetchPublicKey(devIamClient);

      expect(publicKey, isA<ECPublicKey>());
      expect(publicKey.key.Q, isNotNull);
      expect(publicKey.key.parameters, isA<pce.ECDomainParameters>());
    });

    test('fetches public key from production environment', () async {
      final env = Environment.environments(EnvironmentType.prod);
      final prodIamClient = IamClient(apiGatewayUrl: env.apiGwUrl);
      final publicKey = await JWTHelper.fetchPublicKey(prodIamClient);

      expect(publicKey, isA<ECPublicKey>());
      expect(publicKey.key.Q, isNotNull);
      expect(publicKey.key.parameters, isA<pce.ECDomainParameters>());
    });

    test('throws exception on invalid JWKS endpoint', () {
      final invalidIamClient =
          IamClient(apiGatewayUrl: 'https://invalid-endpoint.example.com');
      expect(
        () => JWTHelper.fetchPublicKey(invalidIamClient),
        throwsA(isA<Exception>()),
      );
    });
  });
}
