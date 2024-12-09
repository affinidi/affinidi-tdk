<?php

namespace AuthProvider\Helpers;

use Firebase\JWT\JWT;
use Ramsey\Uuid\Uuid;

class Iota
{
    private const ALGORITHM = 'RS256';

    public function signIotaJwt(string $projectId, string $iotaConfigId, string $iotaSessionId, array $params): string
    {
        $issueTimeInSeconds = time();

        $payload = [
            'iss' => $params['tokenId'],
            'sub' => $params['tokenId'],
            'kid' => $params['tokenId'],
            'aud' => $params['audience'],
            'jti' => Uuid::uuid4()->toString(),
            'exp' => $issueTimeInSeconds + (5 * 60),
            'iat' => $issueTimeInSeconds,
            'project_id' => $projectId,
            'iota_configuration_id' => $iotaConfigId,
            'iota_session_id' => $iotaSessionId,
            'scope' => 'iota_channel',
        ];

        $privateKey = $params['privateKey'];
        if (!empty($params['passphrase'])) {
            $privateKey = [
                'key' => $privateKey,
                'passphrase' => $params['passphrase'],
            ];
        }

        return JWT::encode($payload, $privateKey, self::ALGORITHM, $params['keyId']);
    }
}
