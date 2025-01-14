import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:test/test.dart';

void main() {
  final Environment local = Environment.environments[EnvironmentType.local]!;
  final Environment development =
      Environment.environments[EnvironmentType.development]!;
  final Environment production =
      Environment.environments[EnvironmentType.production]!;

  group('Environment Tests', () {
    test('fetchEnvironment returns production by default', () {
      expect(Environment.fetchEnvironment(), equals(production));
    });

    test('API Gateway URLs are correct', () {
      expect(Environment.fetchApiGwUrl(local),
          equals('https://apse1.dev.api.affinidi.io'));
      expect(Environment.fetchApiGwUrl(development),
          equals('https://apse1.dev.api.affinidi.io'));
      expect(Environment.fetchApiGwUrl(production),
          equals('https://apse1.api.affinidi.io'));
    });

    test('API Gateway URL defaults to prod', () {
      expect(
          Environment.fetchApiGwUrl(), equals('https://apse1.api.affinidi.io'));
    });

    test('Elements Auth Token URLs are correct', () {
      expect(
          Environment.fetchElementsAuthTokenUrl(local),
          equals(
              'https://apse1.dev.auth.developer.affinidi.io/auth/oauth2/token'));
      expect(
          Environment.fetchElementsAuthTokenUrl(development),
          equals(
              'https://apse1.dev.auth.developer.affinidi.io/auth/oauth2/token'));
      expect(Environment.fetchElementsAuthTokenUrl(production),
          equals('https://apse1.auth.developer.affinidi.io/auth/oauth2/token'));
    });

    test('Elements Auth Token URL defaults to prod', () {
      expect(Environment.fetchElementsAuthTokenUrl(),
          equals('https://apse1.auth.developer.affinidi.io/auth/oauth2/token'));
    });

    test('IoT URLs are correct', () {
      expect(Environment.fetchIotUrl(local),
          equals('a3sq1vuw0cw9an-ats.iot.ap-southeast-1.amazonaws.com'));
      expect(Environment.fetchIotUrl(development),
          equals('a3sq1vuw0cw9an-ats.iot.ap-southeast-1.amazonaws.com'));
      expect(Environment.fetchIotUrl(production),
          equals('a13pfgsvt8xhx-ats.iot.ap-southeast-1.amazonaws.com'));
    });

    test('IoT URL defaults to prod', () {
      expect(Environment.fetchIotUrl(),
          equals('a13pfgsvt8xhx-ats.iot.ap-southeast-1.amazonaws.com'));
    });

    test('Consumer Audience URLs are correct', () {
      expect(
          Environment.fetchConsumerAudienceUrl(local),
          equals(
              'https://apse1.dev.api.affinidi.io/iam/v1/consumer/oauth2/token'));
      expect(
          Environment.fetchConsumerAudienceUrl(development),
          equals(
              'https://apse1.dev.api.affinidi.io/iam/v1/consumer/oauth2/token'));
      expect(Environment.fetchConsumerAudienceUrl(production),
          equals('https://apse1.api.affinidi.io/iam/v1/consumer/oauth2/token'));
    });

    test('Consumer Audience URL defaults to prod', () {
      expect(Environment.fetchConsumerAudienceUrl(),
          equals('https://apse1.api.affinidi.io/iam/v1/consumer/oauth2/token'));
    });
  });

  group('Vault Utils Tests', () {
    test('Web Vault URLs are correct', () {
      expect(
          VaultUtils.fetchWebVaultUrl(local), equals('http://localhost:3001'));
      expect(VaultUtils.fetchWebVaultUrl(development),
          equals('https://vault.dev.affinidi.com'));
      expect(VaultUtils.fetchWebVaultUrl(production),
          equals('https://vault.affinidi.com'));
    });

    test('Web Vault URL defaults to prod', () {
      expect(
          VaultUtils.fetchWebVaultUrl(), equals('https://vault.affinidi.com'));
    });

    test('buildShareLink constructs correct URL', () {
      const request = 'test/request';
      const clientId = 'test-client-id';
      expect(
          VaultUtils.buildShareLink(request, clientId),
          equals(
              'https://vault.affinidi.com/login?request=test%2Frequest&client_id=test-client-id'));
    });

    test('buildClaimLink constructs correct URL', () {
      const credentialOfferUri = 'test/credential/uri';
      expect(
          VaultUtils.buildClaimLink(credentialOfferUri),
          equals(
              'https://vault.affinidi.com/claim?credential_offer_uri=test%2Fcredential%2Furi'));
    });
  });
}
