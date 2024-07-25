export enum Environment {
  LOCAL = 'local',
  DEVELOPMENT = 'dev',
  PRODUCTION = 'prod',
}

const DEFAULT_REGION = 'ap-southeast-1'

const envToApiGwUrl = {
  [Environment.LOCAL]: 'https://apse1.dev.api.affinidi.io',
  [Environment.DEVELOPMENT]: 'https://apse1.dev.api.affinidi.io',
  [Environment.PRODUCTION]: 'https://apse1.api.affinidi.io',
}

const envToElementsAuthTokenUrl = {
  [Environment.LOCAL]:
    'https://apse1.dev.auth.developer.affinidi.io/auth/oauth2/token',
  [Environment.DEVELOPMENT]:
    'https://apse1.dev.auth.developer.affinidi.io/auth/oauth2/token',
  [Environment.PRODUCTION]:
    'https://apse1.auth.developer.affinidi.io/auth/oauth2/token',
}

const envToIotUrl = {
  [Environment.LOCAL]: 'a3sq1vuw0cw9an-ats.iot.ap-southeast-1.amazonaws.com',
  [Environment.DEVELOPMENT]:
    'a3sq1vuw0cw9an-ats.iot.ap-southeast-1.amazonaws.com',
  [Environment.PRODUCTION]:
    'a13pfgsvt8xhx-ats.iot.ap-southeast-1.amazonaws.com',
}

export class EnvironmentUtils {
  static fetchEnvironment(): Environment {
    try {
      if (typeof process !== 'undefined' && process.env) {
        const backendEnv = process.env.AFFINIDI_TDK_ENVIRONMENT
        if (backendEnv) {
          return backendEnv as Environment
        }
        const nextPublicEnv = process.env.NEXT_PUBLIC_AFFINIDI_TDK_ENVIRONMENT
        if (nextPublicEnv) {
          return nextPublicEnv as Environment
        }
      }
    } catch (error) {}
    return Environment.PRODUCTION
  }

  static fetchApiGwUrl(env?: Environment): string {
    env ??= this.fetchEnvironment()
    return `${envToApiGwUrl[env]}`
  }

  static fetchElementsAuthTokenUrl(env?: Environment): string {
    env ??= this.fetchEnvironment()
    return `${envToElementsAuthTokenUrl[env]}`
  }

  static fetchRegion(): string {
    return DEFAULT_REGION
  }

  static fetchIotUrl(env?: Environment): string {
    env ??= this.fetchEnvironment()
    return `${envToIotUrl[env]}`
  }
}
