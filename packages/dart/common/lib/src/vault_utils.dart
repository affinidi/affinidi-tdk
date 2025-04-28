import 'dart:core';

import 'environment.dart';

/// Class for Vault-related utility functions.
class VaultUtils {
  static final _sharePath = '/login';
  static final _claimPath = '/claim';

  /// Fetches the web vault URL.
  static String fetchWebVaultUrl([Environment? env]) {
    env ??= Environment.fetchEnvironment();
    return env.webVaultUrl;
  }

  /// Fetches the Elements Vault API URL.
  static String fetchElementsVaultApiUrl([Environment? env]) {
    env ??= Environment.fetchEnvironment();
    return env.elementsVaultApiUrl;
  }

  /// Builds a credential share link for the given request and client ID.
  static String buildShareLink(String request, String clientId,
      [Environment? env]) {
    final vaultUrl = fetchWebVaultUrl(env);
    Map<String, String> params = {
      'request': request,
      'client_id': clientId,
    };
    String queryString = Uri(queryParameters: params).query;
    return '$vaultUrl$_sharePath?$queryString';
  }

  /// Builds a credential claim link for the given credential offer URI.
  static String buildClaimLink(String credentialOfferUri, [Environment? env]) {
    final vaultUrl = fetchWebVaultUrl(env);
    Map<String, String> params = {
      'credential_offer_uri': credentialOfferUri,
    };
    String queryString = Uri(queryParameters: params).query;
    return '$vaultUrl$_claimPath?$queryString';
  }
}
