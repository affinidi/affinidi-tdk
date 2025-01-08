const enviromentVariableName = "AFFINIDI_TDK_ENVIRONMENT";

class Environment {
  final String environmentName;
  final String apiGwUrl;
  final String elementsAuthTokenUrl;
  final String iotUrl;
  final String consumerAudienceUrl;

  const Environment({
    required this.environmentName,
    required this.apiGwUrl,
    required this.elementsAuthTokenUrl,
    required this.iotUrl,
    required this.consumerAudienceUrl,
  });

  static const local = Environment(
    environmentName: 'local',
    apiGwUrl: 'https://apse1.dev.api.affinidi.io',
    elementsAuthTokenUrl:
        'https://apse1.dev.auth.developer.affinidi.io/auth/oauth2/token',
    iotUrl: 'a3sq1vuw0cw9an-ats.iot.ap-southeast-1.amazonaws.com',
    consumerAudienceUrl:
        'https://apse1.dev.api.affinidi.io/iam/v1/consumer/oauth2/token',
  );

  static const development = Environment(
    environmentName: 'dev',
    apiGwUrl: 'https://apse1.dev.api.affinidi.io',
    elementsAuthTokenUrl:
        'https://apse1.dev.auth.developer.affinidi.io/auth/oauth2/token',
    iotUrl: 'a3sq1vuw0cw9an-ats.iot.ap-southeast-1.amazonaws.com',
    consumerAudienceUrl:
        'https://apse1.dev.api.affinidi.io/iam/v1/consumer/oauth2/token',
  );

  static const production = Environment(
    environmentName: 'prod',
    apiGwUrl: 'https://apse1.api.affinidi.io',
    elementsAuthTokenUrl:
        'https://apse1.auth.developer.affinidi.io/auth/oauth2/token',
    iotUrl: 'a13pfgsvt8xhx-ats.iot.ap-southeast-1.amazonaws.com',
    consumerAudienceUrl:
        'https://apse1.api.affinidi.io/iam/v1/consumer/oauth2/token',
  );

  static Environment fetchEnvironment() {
    const envValue = String.fromEnvironment(enviromentVariableName);
    return environments.firstWhere(
      (e) => e.environmentName == envValue,
      orElse: () => production,
    );
  }

  static List<Environment> get environments => [local, development, production];

  static String fetchApiGwUrl([Environment? env]) {
    return (env ?? fetchEnvironment()).apiGwUrl;
  }

  static String fetchElementsAuthTokenUrl([Environment? env]) {
    return (env ?? fetchEnvironment()).elementsAuthTokenUrl;
  }

  static String fetchIotUrl([Environment? env]) {
    return (env ?? fetchEnvironment()).iotUrl;
  }
}
