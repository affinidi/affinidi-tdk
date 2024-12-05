<?php

namespace Common\Helpers;

class Environment
{
    const LOCAL = 'local';
    const DEVELOPMENT = 'dev';
    const PRODUCTION = 'prod';
}

class EnvironmentUtils
{
    private static $defaultRegion = 'ap-southeast-1';

    private static $envToApiGwUrl = [
        Environment::LOCAL => 'https://apse1.dev.api.affinidi.io',
        Environment::DEVELOPMENT => 'https://apse1.dev.api.affinidi.io',
        Environment::PRODUCTION => 'https://apse1.api.affinidi.io',
    ];

    private static $envToElementsAuthTokenUrl = [
        Environment::LOCAL => 'https://apse1.dev.auth.developer.affinidi.io/auth/oauth2/token',
        Environment::DEVELOPMENT => 'https://apse1.dev.auth.developer.affinidi.io/auth/oauth2/token',
        Environment::PRODUCTION => 'https://apse1.auth.developer.affinidi.io/auth/oauth2/token',
    ];

    private static $envToIotUrl = [
        Environment::LOCAL => 'a3sq1vuw0cw9an-ats.iot.ap-southeast-1.amazonaws.com',
        Environment::DEVELOPMENT => 'a3sq1vuw0cw9an-ats.iot.ap-southeast-1.amazonaws.com',
        Environment::PRODUCTION => 'a13pfgsvt8xhx-ats.iot.ap-southeast-1.amazonaws.com',
    ];

    public static function fetchEnvironment(): string
    {
        $backendEnv = getenv('AFFINIDI_TDK_ENVIRONMENT');
        if ($backendEnv) {
            return $backendEnv;
        }

        $nextPublicEnv = getenv('NEXT_PUBLIC_AFFINIDI_TDK_ENVIRONMENT');
        if ($nextPublicEnv) {
            return $nextPublicEnv;
        }

        return Environment::PRODUCTION;
    }

    public static function fetchApiGwUrl(?string $env = null): string
    {
        $env = $env ?? self::fetchEnvironment();
        return self::$envToApiGwUrl[$env] ?? self::$envToApiGwUrl[Environment::PRODUCTION];
    }

    public static function fetchElementsAuthTokenUrl(?string $env = null): string
    {
        $env = $env ?? self::fetchEnvironment();
        return self::$envToElementsAuthTokenUrl[$env] ?? self::$envToElementsAuthTokenUrl[Environment::PRODUCTION];
    }

    public static function fetchRegion(): string
    {
        return self::$defaultRegion;
    }

    public static function fetchIotUrl(?string $env = null): string
    {
        $env = $env ?? self::fetchEnvironment();
        return self::$envToIotUrl[$env] ?? self::$envToIotUrl[Environment::PRODUCTION];
    }
}
