enum Environment {
  local('local'),
  development('dev'),
  production('prod');

  final String value;
  const Environment(this.value);
}

const enviromentVariableName = "AFFINIDI_TDK_ENVIRONMENT";

const envToApiGwUrl = {
  Environment.local: 'https://apse1.dev.api.affinidi.io',
  Environment.development: 'https://apse1.dev.api.affinidi.io',
  Environment.production: 'https://apse1.api.affinidi.io',
};

const envToElementsAuthTokenUrl = {
  Environment.local:
      'https://apse1.dev.auth.developer.affinidi.io/auth/oauth2/token',
  Environment.development:
      'https://apse1.dev.auth.developer.affinidi.io/auth/oauth2/token',
  Environment.production:
      'https://apse1.auth.developer.affinidi.io/auth/oauth2/token',
};

const envToIotUrl = {
  Environment.local: 'a3sq1vuw0cw9an-ats.iot.ap-southeast-1.amazonaws.com',
  Environment.development:
      'a3sq1vuw0cw9an-ats.iot.ap-southeast-1.amazonaws.com',
  Environment.production: 'a13pfgsvt8xhx-ats.iot.ap-southeast-1.amazonaws.com',
};

class EnvironmentUtils {
  static Environment fetchEnvironment() {
    const envValue = String.fromEnvironment(enviromentVariableName);
    return Environment.values.firstWhere(
      (e) => e.value == envValue,
      orElse: () => Environment.production,
    );
  }

  static String fetchApiGwUrl([Environment? env]) {
    env ??= fetchEnvironment();
    return envToApiGwUrl[env]!;
  }

  static String fetchElementsAuthTokenUrl([Environment? env]) {
    env ??= fetchEnvironment();
    return envToElementsAuthTokenUrl[env]!;
  }

  static String fetchIotUrl([Environment? env]) {
    env ??= fetchEnvironment();
    return envToIotUrl[env]!;
  }
}
