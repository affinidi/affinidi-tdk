<?php

namespace AuthProvider;

// TODO: replace with affinidi-tdk/common once it is published
require dirname(__DIR__, 2) . '/common/src/Helpers/Environment.php';

use AuthProvider\Helpers\JwtHelper;
use AuthProvider\Helpers\ProjectScopedToken;
use AuthProvider\Helpers\Iota;
use Common\Helpers\Environment;
use Common\Helpers\EnvironmentUtils;

class AuthProvider
{
    private string $publicKey = '';
    private string $projectScopedToken = '';

    private string $keyId;
    private string $tokenId;
    private string $passphrase;
    private string $privateKey;
    private string $projectId;

    private string $apiGatewayUrl;
    private string $tokenEndpoint;

    private ProjectScopedToken $projectScopedTokenInstance;
    private JwtHelper $jwt;
    private Iota $iotaInstance;

    public function __construct(array $params)
    {
        $this->apiGatewayUrl = $params['apiGatewayUrl'] ?? EnvironmentUtils::fetchApiGwUrl();
        $this->tokenEndpoint = $params['tokenEndpoint'] ?? EnvironmentUtils::fetchElementsAuthTokenUrl();

        if (!isset($params['privateKey'], $params['projectId'], $params['tokenId'])) {
            throw new \InvalidArgumentException('Missing parameters. Provide privateKey, projectId, and tokenId.');
        }

        $this->projectId = $params['projectId'];
        $this->tokenId = $params['tokenId'];
        $this->keyId = $params['keyId'] ?? $params['tokenId'];
        $this->privateKey = $params['privateKey'];
        $this->passphrase = $params['passphrase'] ?? '';

        $this->projectScopedTokenInstance = new ProjectScopedToken();
        $this->jwt = new JwtHelper();
        $this->iotaInstance = new Iota();
    }

    private function shouldRefreshToken(): bool
    {
        if (!$this->publicKey) {
            $this->publicKey = $this->jwt->fetchPublicKey($this->apiGatewayUrl);
        }

        return !$this->projectScopedToken || $this->jwt->validateToken($this->projectScopedToken, $this->publicKey)['isExpired'];
    }

    public function fetchProjectScopedToken(): string
    {
        if ($this->shouldRefreshToken()) {
            $this->projectScopedToken = $this->projectScopedTokenInstance->fetchProjectScopedToken([
                'apiGatewayUrl' => $this->apiGatewayUrl,
                'keyId' => $this->keyId,
                'tokenId' => $this->tokenId,
                'passphrase' => $this->passphrase,
                'privateKey' => $this->privateKey,
                'projectId' => $this->projectId,
                'audience' => $this->tokenEndpoint,
            ]);
        }

        return $this->projectScopedToken;
    }

    public function createIotaToken(string $iotaConfigId, string $did, ?string $iotaSessionId = null): array
    {
        $sessionId = $iotaSessionId ?? uuid_create();

        return [
            'iotaJwt' => $this->iotaInstance->signIotaJwt(
                $this->projectId,
                $iotaConfigId,
                $sessionId,
                [
                    'keyId' => $this->keyId,
                    'tokenId' => "token/{$this->tokenId}",
                    'passphrase' => $this->passphrase,
                    'privateKey' => $this->privateKey,
                    'audience' => $did,
                ]
            ),
            'iotaSessionId' => $sessionId,
        ];
    }
}
