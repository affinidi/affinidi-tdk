import 'dart:core';

import 'package:affinidi_common/affinidi_common.dart';

const envToWebVaultUrlMap = {
  Environment.local: 'http://localhost:3001',
  Environment.development: 'https://vault.dev.affinidi.com',
  Environment.production: 'https://vault.affinidi.com',
};

const String sharePath = '/login';
const String claimPath = '/claim';

class VaultUtils {
  static String fetchWebVaultUrl([Environment? env]) {
    env ??= EnvironmentUtils.fetchEnvironment();
    return envToWebVaultUrlMap[env]!;
  }

  static String buildShareLink(String request, String clientId,
      [Environment? env]) {
    final vaultUrl = fetchWebVaultUrl(env);
    Map<String, String> params = {
      'request': request,
      'client_id': clientId,
    };
    String queryString = Uri(queryParameters: params).query;
    return '$vaultUrl$sharePath?$queryString';
  }

  static String buildClaimLink(String credentialOfferUri, [Environment? env]) {
    final vaultUrl = fetchWebVaultUrl(env);
    Map<String, String> params = {
      'credential_offer_uri': credentialOfferUri,
    };
    String queryString = Uri(queryParameters: params).query;
    return '$vaultUrl$claimPath?$queryString';
  }
}
