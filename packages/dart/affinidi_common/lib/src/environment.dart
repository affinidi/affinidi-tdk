enum EnvironmentType {
  local('local'),
  development('development'),
  production('production');

  final String value;
  const EnvironmentType(this.value);
}

class Environment {
  final String environmentName;
  final String apiGwUrl;
  final String elementsAuthTokenUrl;
  final String iotUrl;
  final String webVaultUrl;
  final String consumerAudienceUrl;

  const Environment._({
    required this.environmentName,
    required this.apiGwUrl,
    required this.elementsAuthTokenUrl,
    required this.iotUrl,
    required this.webVaultUrl,
    required this.consumerAudienceUrl,
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
      consumerAudienceUrl:
          'https://apse1.dev.api.affinidi.io/iam/v1/consumer/oauth2/token',
    ),
    EnvironmentType.development: Environment._(
      environmentName: EnvironmentType.development.value,
      apiGwUrl: 'https://apse1.dev.api.affinidi.io',
      elementsAuthTokenUrl:
          'https://apse1.dev.auth.developer.affinidi.io/auth/oauth2/token',
      iotUrl: 'a3sq1vuw0cw9an-ats.iot.ap-southeast-1.amazonaws.com',
      webVaultUrl: 'https://vault.dev.affinidi.com',
      consumerAudienceUrl:
          'https://apse1.dev.api.affinidi.io/iam/v1/consumer/oauth2/token',
    ),
    EnvironmentType.production: Environment._(
      environmentName: EnvironmentType.production.value,
      apiGwUrl: 'https://apse1.api.affinidi.io',
      elementsAuthTokenUrl:
          'https://apse1.auth.developer.affinidi.io/auth/oauth2/token',
      iotUrl: 'a13pfgsvt8xhx-ats.iot.ap-southeast-1.amazonaws.com',
      webVaultUrl: 'https://vault.affinidi.com',
      consumerAudienceUrl:
          'https://apse1.api.affinidi.io/iam/v1/consumer/oauth2/token',
    ),
  };

  static Environment fetchEnvironment() {
    final envValue = String.fromEnvironment(enviromentVariableName);
    final environmentType = EnvironmentType.values.firstWhere(
      (e) => e.value == envValue,
      orElse: () => EnvironmentType.production,
    );

    return environments[environmentType] ??
        environments[EnvironmentType.production]!;
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
    return env.consumerAudienceUrl;
  }
}
