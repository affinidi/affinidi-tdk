import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:test/test.dart';

void main() {
  final mumbaiRegion = ElementsRegion.apSouth1;
  final envTypeLocal = EnvironmentType.local;
  final envTypeDev = EnvironmentType.dev;
  final envTypeProd = EnvironmentType.prod;
  final Environment local = Environment.getEnvironmentConfig(envTypeLocal);
  final Environment dev = Environment.getEnvironmentConfig(envTypeDev);
  final Environment prod = Environment.getEnvironmentConfig(envTypeProd);

  group('Environment Tests', () {
    test('fetchEnvironment returns prod by default', () {
      expect(Environment.fetchEnvironment().environmentName,
          equals(prod.environmentName));
      expect(Environment.fetchEnvironment().apiGwUrl,
          equals(prod.apiGwUrl));
    });

    test('API Gateway URLs are correct', () {
      expect(Environment.fetchApiGwUrl(local),
          equals('https://apse1.dev.api.affinidi.io'));
      expect(Environment.fetchApiGwUrl(dev),
          equals('https://apse1.dev.api.affinidi.io'));
      expect(Environment.fetchApiGwUrl(prod),
          equals('https://apse1.api.affinidi.io'));
      expect(Environment.fetchApiGwUrl(null, envTypeProd, mumbaiRegion),
          equals('https://aps1.api.affinidi.io'));
      expect(Environment.fetchApiGwUrl(null, envTypeDev, mumbaiRegion),
          equals('https://aps1.dev.api.affinidi.io'));
      expect(Environment.fetchApiGwUrl(null, envTypeLocal, mumbaiRegion),
          equals('https://aps1.dev.api.affinidi.io'));
    });

    test('API Gateway URL defaults to prod', () {
      expect(
          Environment.fetchApiGwUrl(), equals('https://apse1.api.affinidi.io'));
      expect(Environment.fetchEnvironment(region: mumbaiRegion).environmentName,
          equals(prod.environmentName));
      expect(Environment.fetchEnvironment(region: mumbaiRegion).apiGwUrl,
          equals('https://aps1.api.affinidi.io'));
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
      expect(
          Environment.fetchElementsAuthTokenUrl(null, envTypeLocal, mumbaiRegion),
          equals(
              'https://aps1.dev.auth.developer.affinidi.io/auth/oauth2/token'));
      expect(
          Environment.fetchElementsAuthTokenUrl(null, envTypeDev, mumbaiRegion),
          equals(
              'https://aps1.dev.auth.developer.affinidi.io/auth/oauth2/token'));
      expect(Environment.fetchElementsAuthTokenUrl(null, envTypeProd, mumbaiRegion),
          equals('https://aps1.auth.developer.affinidi.io/auth/oauth2/token'));
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
      expect(
          Environment.fetchConsumerAudienceUrl(null, envTypeLocal, mumbaiRegion),
          equals(
              'https://aps1.dev.api.affinidi.io/iam/v1/consumer/oauth2/token'));
      expect(
          Environment.fetchConsumerAudienceUrl(null, envTypeDev, mumbaiRegion),
          equals(
              'https://aps1.dev.api.affinidi.io/iam/v1/consumer/oauth2/token'));
      expect(Environment.fetchConsumerAudienceUrl(null, envTypeProd, mumbaiRegion),
          equals('https://aps1.api.affinidi.io/iam/v1/consumer/oauth2/token'));
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
      expect(Environment.fetchConsumerCisUrl(null, envTypeLocal, mumbaiRegion),
          equals('https://aps1.dev.api.affinidi.io/cis'));
      expect(Environment.fetchConsumerCisUrl(null, envTypeDev, mumbaiRegion),
          equals('https://aps1.dev.api.affinidi.io/cis'));
      expect(Environment.fetchConsumerCisUrl(null, envTypeProd, mumbaiRegion),
          equals('https://aps1.api.affinidi.io/cis'));
    });

    test('Consumer CIS URL defaults to prod', () {
      expect(Environment.fetchConsumerCisUrl(),
          equals('https://apse1.api.affinidi.io/cis'));
    });

    test('Vault account audience URLs are correct', () {
      expect(Environment.fetchvaultAccountsAudienceUrl(local),
          equals('https://apse1.dev.api.affinidi.io/vfs/v1/accounts'));
      expect(Environment.fetchvaultAccountsAudienceUrl(dev),
          equals('https://apse1.dev.api.affinidi.io/vfs/v1/accounts'));
      expect(Environment.fetchvaultAccountsAudienceUrl(prod),
          equals('https://apse1.api.affinidi.io/vfs/v1/accounts'));
      expect(Environment.fetchvaultAccountsAudienceUrl(null, envTypeLocal, mumbaiRegion),
          equals('https://aps1.dev.api.affinidi.io/vfs/v1/accounts'));
      expect(Environment.fetchvaultAccountsAudienceUrl(null, envTypeDev, mumbaiRegion),
          equals('https://aps1.dev.api.affinidi.io/vfs/v1/accounts'));
      expect(Environment.fetchvaultAccountsAudienceUrl(null, envTypeProd, mumbaiRegion),
          equals('https://aps1.api.affinidi.io/vfs/v1/accounts'));
    });

    test('Vault account audience URL defaults to prod', () {
      expect(Environment.fetchvaultAccountsAudienceUrl(),
          equals('https://apse1.api.affinidi.io/vfs/v1/accounts'));
    });
  });

  group('Vault Utils Tests', () {
    test('Elements Vault API URLs are correct', () {
      expect(
          VaultUtils.fetchElementsVaultApiUrl(local), equals('http://localhost:3000'));
      expect(VaultUtils.fetchElementsVaultApiUrl(dev),
          equals('https://dev.api.vault.affinidi.com'));
      expect(VaultUtils.fetchElementsVaultApiUrl(prod),
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
          VaultUtils.fetchElementsVaultApiUrl(), equals('https://api.vault.affinidi.com'));
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
