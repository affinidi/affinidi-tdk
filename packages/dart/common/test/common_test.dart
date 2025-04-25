import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:test/test.dart';

void main() {
  final Environment local = Environment.environments[EnvironmentType.local]!;
  final Environment dev = Environment.environments[EnvironmentType.dev]!;
  final Environment prod = Environment.environments[EnvironmentType.prod]!;

  group('Environment Tests', () {
    test('fetchEnvironment returns prod by default', () {
      expect(Environment.fetchEnvironment(), equals(prod));
    });

    test('API Gateway URLs are correct', () {
      expect(Environment.fetchApiGwUrl(local),
          equals('https://apse1.dev.api.affinidi.io'));
      expect(Environment.fetchApiGwUrl(dev),
          equals('https://apse1.dev.api.affinidi.io'));
      expect(Environment.fetchApiGwUrl(prod),
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
          Environment.fetchElementsAuthTokenUrl(dev),
          equals(
              'https://apse1.dev.auth.developer.affinidi.io/auth/oauth2/token'));
      expect(Environment.fetchElementsAuthTokenUrl(prod),
          equals('https://apse1.auth.developer.affinidi.io/auth/oauth2/token'));
    });

    test('Elements Auth Token URL defaults to prod', () {
      expect(Environment.fetchElementsAuthTokenUrl(),
          equals('https://apse1.auth.developer.affinidi.io/auth/oauth2/token'));
    });

    test('IoT URLs are correct', () {
      expect(Environment.fetchIotUrl(local),
          equals('a3sq1vuw0cw9an-ats.iot.ap-southeast-1.amazonaws.com'));
      expect(Environment.fetchIotUrl(dev),
          equals('a3sq1vuw0cw9an-ats.iot.ap-southeast-1.amazonaws.com'));
      expect(Environment.fetchIotUrl(prod),
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
          Environment.fetchConsumerAudienceUrl(dev),
          equals(
              'https://apse1.dev.api.affinidi.io/iam/v1/consumer/oauth2/token'));
      expect(Environment.fetchConsumerAudienceUrl(prod),
          equals('https://apse1.api.affinidi.io/iam/v1/consumer/oauth2/token'));
    });

    test('Consumer Audience URL defaults to prod', () {
      expect(Environment.fetchConsumerAudienceUrl(),
          equals('https://apse1.api.affinidi.io/iam/v1/consumer/oauth2/token'));
    });

    test('Consumer CIS URLs are correct', () {
      expect(Environment.fetchConsumerCisUrl(local),
          equals('https://apse1.dev.api.affinidi.io/cis'));
      expect(Environment.fetchConsumerCisUrl(dev),
          equals('https://apse1.dev.api.affinidi.io/cis'));
      expect(Environment.fetchConsumerCisUrl(prod),
          equals('https://apse1.api.affinidi.io/cis'));
    });

    test('Consumer CIS URL defaults to prod', () {
      expect(Environment.fetchConsumerCisUrl(),
          equals('https://apse1.api.affinidi.io/cis'));
    });
  });

  group('Vault Utils Tests', () {
    test('Vault URLs are correct', () {
      expect(
          VaultUtils.fetchVaultUrl(local), equals('http://localhost:3000'));
      expect(VaultUtils.fetchVaultUrl(dev),
          equals('https://dev.api.vault.affinidi.com'));
      expect(VaultUtils.fetchVaultUrl(prod),
          equals('https://api.vault.affinidi.com'));
    });

    test('Web Vault URLs are correct', () {
      expect(
          VaultUtils.fetchWebVaultUrl(local), equals('http://localhost:3001'));
      expect(VaultUtils.fetchWebVaultUrl(dev),
          equals('https://vault.dev.affinidi.com'));
      expect(VaultUtils.fetchWebVaultUrl(prod),
          equals('https://vault.affinidi.com'));
    });

    test('Vault URL defaults to prod', () {
      expect(
          VaultUtils.fetchVaultUrl(), equals('https://api.vault.affinidi.com'));
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
