export enum Environment {
    LOCAL = "local",
    DEVELOPMENT = "dev",
    PRODUCTION = "prod",
}

export class EnvironmentHandler {
    public fetchEnvironment(): Environment {
        const backendEnv = process.env.AFFINIDI_TDK_ENVIRONMENT;
        if (backendEnv) {
            return backendEnv as Environment;
        }

        const nextPublicEnv = process.env.NEXT_PUBLIC_AFFINIDI_TDK_ENVIRONMENT;
        if (nextPublicEnv) {
            return nextPublicEnv as Environment;
        }

        return Environment.PRODUCTION;
    }
}