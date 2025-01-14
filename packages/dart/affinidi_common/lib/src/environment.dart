enum EnvironmentType {
  local('local'),
  dev('dev'),
  prod('prod');

  final String value;
  const EnvironmentType(this.value);
}

class Environment {
  final String environmentName;
  final String apiGwUrl;
  final String elementsAuthTokenUrl;
  final String iotUrl;
  final String webVaultUrl;
  final String consumerAudienceEndpoint;
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

  static const enviromentVariableName = "AFFINIDI_TDK_ENVIRONMENT";

  static final environments = {
    EnvironmentType.local: Environment._(
      environmentName: EnvironmentType.local.value,
      apiGwUrl: 'https://apse1.dev.api.affinidi.io',
      elementsAuthTokenUrl:
          'https://apse1.dev.auth.developer.affinidi.io/auth/oauth2/token',
      iotUrl: 'a3sq1vuw0cw9an-ats.iot.ap-southeast-1.amazonaws.com',
      webVaultUrl: 'http://localhost:3001',
      consumerAudienceEndpoint: '/iam/v1/consumer/oauth2/token',
      consumerCisEndpoint: '/cis',
    ),
    EnvironmentType.dev: Environment._(
      environmentName: EnvironmentType.dev.value,
      apiGwUrl: 'https://apse1.dev.api.affinidi.io',
      elementsAuthTokenUrl:
          'https://apse1.dev.auth.developer.affinidi.io/auth/oauth2/token',
      iotUrl: 'a3sq1vuw0cw9an-ats.iot.ap-southeast-1.amazonaws.com',
      webVaultUrl: 'https://vault.dev.affinidi.com',
      consumerAudienceEndpoint: '/iam/v1/consumer/oauth2/token',
      consumerCisEndpoint: '/cis',
    ),
    EnvironmentType.prod: Environment._(
      environmentName: EnvironmentType.prod.value,
      apiGwUrl: 'https://apse1.api.affinidi.io',
      elementsAuthTokenUrl:
          'https://apse1.auth.developer.affinidi.io/auth/oauth2/token',
      iotUrl: 'a13pfgsvt8xhx-ats.iot.ap-southeast-1.amazonaws.com',
      webVaultUrl: 'https://vault.affinidi.com',
      consumerAudienceEndpoint: '/iam/v1/consumer/oauth2/token',
      consumerCisEndpoint: '/cis',
    ),
  };

  static Environment fetchEnvironment() {
    final envValue = String.fromEnvironment(enviromentVariableName);
    final environmentType = EnvironmentType.values.firstWhere(
      (e) => e.value == envValue,
      orElse: () => EnvironmentType.prod,
    );

    return environments[environmentType] ?? environments[EnvironmentType.prod]!;
  }

  static String fetchApiGwUrl([Environment? env]) {
    env ??= fetchEnvironment();
    return env.apiGwUrl;
  }

  static String fetchElementsAuthTokenUrl([Environment? env]) {
    env ??= fetchEnvironment();
    return env.elementsAuthTokenUrl;
  }

  static String fetchIotUrl([Environment? env]) {
    env ??= fetchEnvironment();
    return env.iotUrl;
  }

  static String fetchConsumerAudienceUrl([Environment? env]) {
    env ??= fetchEnvironment();
    return env.apiGwUrl + env.consumerAudienceEndpoint;
  }

  static String fetchConsumerCisUrl([Environment? env]) {
    env ??= fetchEnvironment();
    return env.apiGwUrl + env.consumerCisEndpoint;
  }
}
