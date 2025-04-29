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

  const Environment._({
    required this.environmentName,
    required this.apiGwUrl,
    required this.elementsAuthTokenUrl,
    required this.iotUrl,
    required this.elementsVaultApiUrl,
    required this.webVaultUrl,
    required this.consumerAudienceEndpoint,
    required this.consumerCisEndpoint,
  });

  /// The name of the environment variable that holds the current environment type.
  static const enviromentVariableName = "AFFINIDI_TDK_ENVIRONMENT";
  static const _consumerAudienceEndpoint = '/iam/v1/consumer/oauth2/token';
  static const _consumerCisEndpoint = '/cis';

  static const defaultRegion = 'ap-southeast-1';
  static const _elementsRegionMap = {
    'ap-southeast-1': 'apse1',
    'ap-south-1': 'aps1',
  };

  static Environment environments(EnvironmentType envType, [String region = defaultRegion]) {
    final _region = _elementsRegionMap[region];
    if (_region == null) {
      throw ArgumentError('Unsupported region: $region');
    }

    switch (envType) {
      case EnvironmentType.local:
        return Environment._(
          environmentName: envType.value,
          apiGwUrl: 'https://$_region.dev.api.affinidi.io',
          elementsAuthTokenUrl:
            'https://$_region.dev.auth.developer.affinidi.io/auth/oauth2/token',
          iotUrl: 'a3sq1vuw0cw9an-ats.iot.ap-southeast-1.amazonaws.com',
          elementsVaultApiUrl: 'http://localhost:3000',
          webVaultUrl: 'http://localhost:3001',
          consumerAudienceEndpoint: _consumerAudienceEndpoint,
          consumerCisEndpoint: _consumerCisEndpoint,
        );
      case EnvironmentType.dev:
        return Environment._(
          environmentName: envType.value,
          apiGwUrl: 'https://$_region.dev.api.affinidi.io',
          elementsAuthTokenUrl:
            'https://$_region.dev.auth.developer.affinidi.io/auth/oauth2/token',
          iotUrl: 'a3sq1vuw0cw9an-ats.iot.ap-southeast-1.amazonaws.com',
          elementsVaultApiUrl: 'https://dev.api.vault.affinidi.com',
          webVaultUrl: 'https://vault.dev.affinidi.com',
          consumerAudienceEndpoint: _consumerAudienceEndpoint,
          consumerCisEndpoint: _consumerCisEndpoint,
        );
      case EnvironmentType.prod:
        return Environment._(
          environmentName: envType.value,
          apiGwUrl: 'https://$_region.api.affinidi.io',
          elementsAuthTokenUrl:
            'https://$_region.auth.developer.affinidi.io/auth/oauth2/token',
          iotUrl: 'a13pfgsvt8xhx-ats.iot.ap-southeast-1.amazonaws.com',
          elementsVaultApiUrl: 'https://api.vault.affinidi.com',
          webVaultUrl: 'https://vault.affinidi.com',
          consumerAudienceEndpoint: _consumerAudienceEndpoint,
          consumerCisEndpoint: _consumerCisEndpoint,
        );
    }
  }

  /// The list of available environments with their respective configurations.
  static Environment fetchEnvironment({
    EnvironmentType? envType,
    String region = defaultRegion,
  }) {
    final resolvedEnvType = envType ??
        EnvironmentType.values.firstWhere(
          (e) => e.value == const String.fromEnvironment(enviromentVariableName),
          orElse: () => EnvironmentType.prod,
        );

    return environments(resolvedEnvType, region);
  }

  /// Fetches the API Gateway URL for the current environment.
  static String fetchApiGwUrl([
    Environment? env,
    EnvironmentType? envType,
    String region = defaultRegion,
  ]) {
    env ??= fetchEnvironment(envType: envType, region: region);
    return env.apiGwUrl;
  }

  /// Fetches the Elements Auth Token URL for the current environment.
  static String fetchElementsAuthTokenUrl([
    Environment? env,
    EnvironmentType? envType,
    String region = defaultRegion,
  ]) {
    env ??= fetchEnvironment(envType: envType, region: region);
    return env.elementsAuthTokenUrl;
  }

  /// Fetches the Elements URL for the current environment.
  static String fetchIotUrl([
    Environment? env,
    EnvironmentType? envType,
    String region = defaultRegion,
  ]) {
    env ??= fetchEnvironment(envType: envType, region: region);
    return env.iotUrl;
  }

  /// Fetches the Consumer Audience URL for the current environment.
  static String fetchConsumerAudienceUrl([
    Environment? env,
    EnvironmentType? envType,
    String region = defaultRegion,
  ]) {
    env ??= fetchEnvironment(envType: envType, region: region);
    return env.apiGwUrl + env.consumerAudienceEndpoint;
  }

  /// Fetches the Consumer CIS URL for the current environment.
  static String fetchConsumerCisUrl([
    Environment? env,
    EnvironmentType? envType,
    String region = defaultRegion,
  ]) {
    env ??= fetchEnvironment(envType: envType, region: region);
    return env.apiGwUrl + env.consumerCisEndpoint;
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
    "consumerCisEndpoint": "$consumerCisEndpoint"
  }''';
  }
}
