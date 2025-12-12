import 'package:affinidi_tdk_common/src/logger/log_level.dart';

/// Enum to represent different types of environments.
enum EnvironmentType {
  /// Local environment.
  local('local'),

  /// Development environment.
  dev('dev'),

  /// Production environment.
  prod('prod');

  /// The string value of the environment type.
  final String value;
  const EnvironmentType(this.value);
}

/// Enum to represent supported regions and their codes.
enum ElementsRegion {
  /// Asia Pacific (Singapore) region
  apSoutheast1('ap-southeast-1', 'apse1'),

  /// Asia Pacific (Mumbai) region
  apSouth1('ap-south-1', 'aps1');

  /// Full AWS region name (e.g., `ap-southeast-1`)
  final String awsRegion;

  /// Short region code used in endpoints (e.g., `apse1`)
  final String regionCode;
  const ElementsRegion(this.awsRegion, this.regionCode);

  /// Utility to get enum from a region string.
  static ElementsRegion fromString(String region) {
    return ElementsRegion.values.firstWhere(
      (e) => e.awsRegion == region,
      orElse: () => throw ArgumentError('Unsupported region: $region'),
    );
  }
}

/// Environment class to hold the environment specific values.
class Environment {
  /// The name of the environment.
  final String environmentName;

  /// The URL of the API Gateway.
  final String apiGwUrl;

  /// The URL of the Elements Auth Token service.
  final String elementsAuthTokenUrl;

  /// The URL of the IoT service.
  final String iotUrl;

  /// The URL of the Vault API services.
  final String elementsVaultApiUrl;

  /// The URL of the Web Vault.
  final String webVaultUrl;

  /// The URL of the Consumer Audience endpoint.
  final String consumerAudienceEndpoint;

  /// The URL of the Consumer CIS endpoint.
  final String consumerCisEndpoint;

  /// The DID of the bridge's mediator.
  final String bridgeMediatorDid;

  /// The DID of the Atlas service.
  final String atlasDid;

  /// The URL of the Vautl accounts audience.
  final String vaultAccountsAudienceEndpoint;
  const Environment._({
    required this.environmentName,
    required this.apiGwUrl,
    required this.elementsAuthTokenUrl,
    required this.iotUrl,
    required this.elementsVaultApiUrl,
    required this.webVaultUrl,
    required this.consumerAudienceEndpoint,
    required this.consumerCisEndpoint,
    required this.vaultAccountsAudienceEndpoint,
    required this.bridgeMediatorDid,
    required this.atlasDid,
  });

  /// The name of the environment variable that holds the current environment type.
  static const enviromentVariableName = "AFFINIDI_TDK_ENVIRONMENT";
  static const _consumerAudienceEndpoint = '/iam/v1/consumer/oauth2/token';
  static const _consumerCisEndpoint = '/cis';
  static const _defaultRegion = ElementsRegion.apSoutheast1;
  static final Map<String, LogLevel> _levels = {
    'ALL': LogLevel.all,
    'FINEST': LogLevel.finest,
    'FINER': LogLevel.finer,
    'FINE': LogLevel.fine,
    'CONFIG': LogLevel.config,
    'INFO': LogLevel.info,
    'WARNING': LogLevel.warning,
    'SEVERE': LogLevel.severe,
    'SHOUT': LogLevel.shout,
    'OFF': LogLevel.off,
  };

  /// Gets the amount of milliseconds to use for API connection timeouts 'AFFINIDI_API_TIMEOUT_MS'.
  static int? get apiTimeOutInMilliseconds =>
      int.tryParse(const String.fromEnvironment('AFFINIDI_API_TIMEOUT_MS',
          defaultValue: ''));

  /// Gets the current log level from the environment variable 'AFFINIDI_TDK_LOG_LEVEL'.
  LogLevel get logLevel =>
      _levels[const String.fromEnvironment('AFFINIDI_TDK_LOG_LEVEL')] ??
      LogLevel.off;

  /// The list of available environments with their respective configurations.
  static Environment getEnvironmentConfig(EnvironmentType envType,
      [ElementsRegion region = _defaultRegion]) {
    final regionCode = region.regionCode;
    switch (envType) {
      case EnvironmentType.local:
        return Environment._(
          environmentName: envType.value,
          apiGwUrl: 'https://$regionCode.dev.api.affinidi.io',
          elementsAuthTokenUrl:
              'https://$regionCode.dev.auth.developer.affinidi.io/auth/oauth2/token',
          iotUrl: 'a3sq1vuw0cw9an-ats.iot.ap-southeast-1.amazonaws.com',
          elementsVaultApiUrl: 'http://localhost:3000',
          webVaultUrl: 'http://localhost:3001',
          consumerAudienceEndpoint: _consumerAudienceEndpoint,
          consumerCisEndpoint: _consumerCisEndpoint,
          vaultAccountsAudienceEndpoint:
              'https://$regionCode.dev.api.affinidi.io/vfs/v1/accounts',
          bridgeMediatorDid: 'did:web:finance-union.mediator.affinidi.io',
          atlasDid: 'did:web:did.dev.affinidi.io:ama',
        );
      case EnvironmentType.dev:
        return Environment._(
          environmentName: envType.value,
          apiGwUrl: 'https://$regionCode.dev.api.affinidi.io',
          elementsAuthTokenUrl:
              'https://$regionCode.dev.auth.developer.affinidi.io/auth/oauth2/token',
          iotUrl: 'a3sq1vuw0cw9an-ats.iot.ap-southeast-1.amazonaws.com',
          elementsVaultApiUrl: 'https://dev.api.vault.affinidi.com',
          webVaultUrl: 'https://vault.dev.affinidi.com',
          consumerAudienceEndpoint: _consumerAudienceEndpoint,
          consumerCisEndpoint: _consumerCisEndpoint,
          vaultAccountsAudienceEndpoint:
              'https://$regionCode.dev.api.affinidi.io/vfs/v1/accounts',
          bridgeMediatorDid: 'did:web:finance-union.mediator.affinidi.io',
          atlasDid: 'did:web:did.dev.affinidi.io:ama',
        );
      case EnvironmentType.prod:
        return Environment._(
          environmentName: envType.value,
          apiGwUrl: 'https://$regionCode.api.affinidi.io',
          elementsAuthTokenUrl:
              'https://$regionCode.auth.developer.affinidi.io/auth/oauth2/token',
          iotUrl: 'a13pfgsvt8xhx-ats.iot.ap-southeast-1.amazonaws.com',
          elementsVaultApiUrl: 'https://api.vault.affinidi.com',
          webVaultUrl: 'https://vault.affinidi.com',
          consumerAudienceEndpoint: _consumerAudienceEndpoint,
          consumerCisEndpoint: _consumerCisEndpoint,
          vaultAccountsAudienceEndpoint:
              'https://$regionCode.api.affinidi.io/vfs/v1/accounts',
          bridgeMediatorDid: 'did:web:finance-union.mediator.affinidi.io',
          atlasDid: 'did:web:did.affinidi.io:ama',
        );
    }
  }

  /// Helper to get environment type from environment variable with prod as default
  static EnvironmentType _getEnvironmentTypeFromVariable() {
    return EnvironmentType.values.firstWhere(
      (e) =>
          e.value ==
          const String.fromEnvironment(enviromentVariableName,
              defaultValue: 'prod'),
      orElse: () => EnvironmentType.prod,
    );
  }

  /// Fetches the current environment based on the provided environment variable.
  static Environment fetchEnvironment({
    EnvironmentType? envType,
    ElementsRegion region = _defaultRegion,
  }) {
    final resolvedEnvType = envType ?? _getEnvironmentTypeFromVariable();
    final baseEnv = getEnvironmentConfig(resolvedEnvType, region);
    final vfsOverride =
        const String.fromEnvironment('AFFINIDI_VFS_BASE_URL', defaultValue: '');
    if (vfsOverride.isNotEmpty) {
      return Environment._(
        environmentName: baseEnv.environmentName,
        apiGwUrl: baseEnv.apiGwUrl,
        elementsAuthTokenUrl: baseEnv.elementsAuthTokenUrl,
        iotUrl: baseEnv.iotUrl,
        elementsVaultApiUrl: vfsOverride,
        webVaultUrl: baseEnv.webVaultUrl,
        consumerAudienceEndpoint: baseEnv.consumerAudienceEndpoint,
        consumerCisEndpoint: baseEnv.consumerCisEndpoint,
        vaultAccountsAudienceEndpoint: baseEnv.vaultAccountsAudienceEndpoint,
        bridgeMediatorDid: baseEnv.bridgeMediatorDid,
        atlasDid: baseEnv.atlasDid,
      );
    }
    return baseEnv;
  }

  /// Fetches the API Gateway URL for the current environment.
  static String fetchApiGwUrl([
    Environment? env,
    EnvironmentType? envType,
    ElementsRegion region = _defaultRegion,
  ]) {
    env ??= fetchEnvironment(envType: envType, region: region);
    return env.apiGwUrl;
  }

  /// Fetches the Elements Auth Token URL for the current environment.
  static String fetchElementsAuthTokenUrl([
    Environment? env,
    EnvironmentType? envType,
    ElementsRegion region = _defaultRegion,
  ]) {
    env ??= fetchEnvironment(envType: envType, region: region);
    return env.elementsAuthTokenUrl;
  }

  /// Fetches the Elements URL for the current environment.
  static String fetchIotUrl([
    Environment? env,
    EnvironmentType? envType,
    ElementsRegion region = _defaultRegion,
  ]) {
    env ??= fetchEnvironment(envType: envType, region: region);
    return env.iotUrl;
  }

  /// Fetches the Consumer Audience URL for the current environment.
  static String fetchConsumerAudienceUrl([
    Environment? env,
    EnvironmentType? envType,
    ElementsRegion region = _defaultRegion,
  ]) {
    env ??= fetchEnvironment(envType: envType, region: region);
    return env.apiGwUrl + env.consumerAudienceEndpoint;
  }

  /// Fetches the Consumer CIS URL for the current environment.
  static String fetchConsumerCisUrl([
    Environment? env,
    EnvironmentType? envType,
    ElementsRegion region = _defaultRegion,
  ]) {
    env ??= fetchEnvironment(envType: envType, region: region);
    return env.apiGwUrl + env.consumerCisEndpoint;
  }

  /// Fetches the Vault account audience URL for the current environment.
  static String fetchVaultAccountsAudienceUrl([
    Environment? env,
    EnvironmentType? envType,
    ElementsRegion region = _defaultRegion,
  ]) {
    env ??= fetchEnvironment(envType: envType, region: region);
    return env.vaultAccountsAudienceEndpoint;
  }

  @override
  String toString() {
    return '''{
    "environmentName": "$environmentName",
    "apiGwUrl": "$apiGwUrl",
    "elementsAuthTokenUrl": "$elementsAuthTokenUrl",
    "iotUrl": "$iotUrl",
    "elementsVaultApiUrl": "$elementsVaultApiUrl",
    "webVaultUrl": "$webVaultUrl",
    "consumerAudienceEndpoint": "$consumerAudienceEndpoint",
    "consumerCisEndpoint": "$consumerCisEndpoint",
    "vaultAccountsAudienceEndpoint": "$vaultAccountsAudienceEndpoint",
  }''';
  }
}
