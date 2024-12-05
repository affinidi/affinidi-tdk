<?php

namespace Common\Helpers;

class VaultUtils
{
    private static $envToWebVaultUrlMap = [
        Environment::LOCAL => 'http://localhost:3001',
        Environment::DEVELOPMENT => 'https://vault.dev.affinidi.com',
        Environment::PRODUCTION => 'https://vault.affinidi.com',
    ];

    private static $sharePath = '/login';
    private static $claimPath = '/claim';

    public static function buildShareLink(string $request, string $clientId): string
    {
        $env = EnvironmentUtils::fetchEnvironment();
        $baseUrl = self::$envToWebVaultUrlMap[$env] ?? self::$envToWebVaultUrlMap[Environment::PRODUCTION];

        $queryString = http_build_query([
            'request' => $request,
            'client_id' => $clientId,
        ]);

        return "$baseUrl" . self::$sharePath . "?$queryString";
    }

    public static function buildClaimLink(string $credentialOfferUri): string
    {
        $env = EnvironmentUtils::fetchEnvironment();
        $baseUrl = self::$envToWebVaultUrlMap[$env] ?? self::$envToWebVaultUrlMap[Environment::PRODUCTION];

        $queryString = http_build_query([
            'credential_offer_uri' => $credentialOfferUri,
        ]);

        return "$baseUrl" . self::$claimPath . "?$queryString";
    }
}
