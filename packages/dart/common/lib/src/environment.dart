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
    required this.webVaultUrl,
    required this.consumerAudienceEndpoint,
    required this.consumerCisEndpoint,
  });

  /// The name of the environment variable that holds the current environment type.
  static const enviromentVariableName = "AFFINIDI_TDK_ENVIRONMENT";
  static const _consumerAudienceEndpoint = '/iam/v1/consumer/oauth2/token';
  static const _consumerCisEndpoint = '/cis';

  /// The list of available environments with their respective configurations.
  static final environments = {
    EnvironmentType.local: Environment._(
      environmentName: EnvironmentType.local.value,
      apiGwUrl: 'https://apse1.dev.api.affinidi.io',
      elementsAuthTokenUrl:
          'https://apse1.dev.auth.developer.affinidi.io/auth/oauth2/token',
      iotUrl: 'a3sq1vuw0cw9an-ats.iot.ap-southeast-1.amazonaws.com',
      webVaultUrl: 'http://localhost:3001',
      consumerAudienceEndpoint: _consumerAudienceEndpoint,
      consumerCisEndpoint: _consumerCisEndpoint,
    ),
    EnvironmentType.dev: Environment._(
      environmentName: EnvironmentType.dev.value,
      apiGwUrl: 'https://apse1.dev.api.affinidi.io',
      elementsAuthTokenUrl:
          'https://apse1.dev.auth.developer.affinidi.io/auth/oauth2/token',
      iotUrl: 'a3sq1vuw0cw9an-ats.iot.ap-southeast-1.amazonaws.com',
      webVaultUrl: 'https://vault.dev.affinidi.com',
      consumerAudienceEndpoint: _consumerAudienceEndpoint,
      consumerCisEndpoint: _consumerCisEndpoint,
    ),
    EnvironmentType.prod: Environment._(
      environmentName: EnvironmentType.prod.value,
      apiGwUrl: 'https://apse1.api.affinidi.io',
      elementsAuthTokenUrl:
          'https://apse1.auth.developer.affinidi.io/auth/oauth2/token',
      iotUrl: 'a13pfgsvt8xhx-ats.iot.ap-southeast-1.amazonaws.com',
      webVaultUrl: 'https://vault.affinidi.com',
      consumerAudienceEndpoint: _consumerAudienceEndpoint,
      consumerCisEndpoint: _consumerCisEndpoint,
    ),
  };

  /// Fetches the current environment based on the provided environment variable.
  static Environment fetchEnvironment() {
    final envValue = String.fromEnvironment(enviromentVariableName);
    final environmentType = EnvironmentType.values.firstWhere(
      (e) => e.value == envValue,
      orElse: () => EnvironmentType.prod,
    );

    return environments[environmentType] ?? environments[EnvironmentType.prod]!;
  }

  /// Fetches the API Gateway URL for the current environment.
  static String fetchApiGwUrl([Environment? env]) {
    env ??= fetchEnvironment();
    return env.apiGwUrl;
  }

  /// Fetches the Elements Auth Token URL for the current environment.
  static String fetchElementsAuthTokenUrl([Environment? env]) {
    env ??= fetchEnvironment();
    return env.elementsAuthTokenUrl;
  }

  /// Fetches the Elements URL for the current environment.
  static String fetchIotUrl([Environment? env]) {
    env ??= fetchEnvironment();
    return env.iotUrl;
  }

  /// Fetches the Consumer Audience URL for the current environment.
  static String fetchConsumerAudienceUrl([Environment? env]) {
    env ??= fetchEnvironment();
    return env.apiGwUrl + env.consumerAudienceEndpoint;
  }

  /// Fetches the Consumer CIS URL for the current environment.
  static String fetchConsumerCisUrl([Environment? env]) {
    env ??= fetchEnvironment();
    return env.apiGwUrl + env.consumerCisEndpoint;
  }
}
