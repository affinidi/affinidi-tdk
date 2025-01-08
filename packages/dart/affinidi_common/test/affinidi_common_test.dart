import 'package:affinidi_common/affinidi_common.dart';
import 'package:test/test.dart';

void main() {
  group('Environment Tests', () {
    test('fetchEnvironment returns production by default', () {
      expect(Environment.fetchEnvironment(), equals(Environment.production));
    });

    test('API Gateway URLs are correct', () {
      expect(Environment.fetchApiGwUrl(Environment.local),
          equals('https://apse1.dev.api.affinidi.io'));
      expect(Environment.fetchApiGwUrl(Environment.development),
          equals('https://apse1.dev.api.affinidi.io'));
      expect(Environment.fetchApiGwUrl(Environment.production),
          equals('https://apse1.api.affinidi.io'));
    });

    test('API Gateway URL defaults to prod', () {
      expect(
          Environment.fetchApiGwUrl(), equals('https://apse1.api.affinidi.io'));
    });

    test('Elements Auth Token URLs are correct', () {
      expect(
          Environment.fetchElementsAuthTokenUrl(Environment.local),
          equals(
              'https://apse1.dev.auth.developer.affinidi.io/auth/oauth2/token'));
      expect(
          Environment.fetchElementsAuthTokenUrl(Environment.development),
          equals(
              'https://apse1.dev.auth.developer.affinidi.io/auth/oauth2/token'));
      expect(Environment.fetchElementsAuthTokenUrl(Environment.production),
          equals('https://apse1.auth.developer.affinidi.io/auth/oauth2/token'));
    });

    test('Elements Auth Token URL defaults to prod', () {
      expect(Environment.fetchElementsAuthTokenUrl(),
          equals('https://apse1.auth.developer.affinidi.io/auth/oauth2/token'));
    });

    test('IoT URLs are correct', () {
      expect(Environment.fetchIotUrl(Environment.local),
          equals('a3sq1vuw0cw9an-ats.iot.ap-southeast-1.amazonaws.com'));
      expect(Environment.fetchIotUrl(Environment.development),
          equals('a3sq1vuw0cw9an-ats.iot.ap-southeast-1.amazonaws.com'));
      expect(Environment.fetchIotUrl(Environment.production),
          equals('a13pfgsvt8xhx-ats.iot.ap-southeast-1.amazonaws.com'));
    });

    test('IoT URL defaults to prod', () {
      expect(Environment.fetchIotUrl(),
          equals('a13pfgsvt8xhx-ats.iot.ap-southeast-1.amazonaws.com'));
    });
  });

  group('Vault Utils Tests', () {
    test('Web Vault URLs are correct', () {
      expect(VaultUtils.fetchWebVaultUrl(Environment.local),
          equals('http://localhost:3001'));
      expect(VaultUtils.fetchWebVaultUrl(Environment.development),
          equals('https://vault.dev.affinidi.com'));
      expect(VaultUtils.fetchWebVaultUrl(Environment.production),
          equals('https://vault.affinidi.com'));
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

    test('Web Vault URL defaults to prod', () {
      expect(
          VaultUtils.fetchWebVaultUrl(), equals('https://vault.affinidi.com'));
    });
  });
}
