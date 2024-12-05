<?php

namespace AuthProvider\Helpers;

use Firebase\JWT\JWT;
use Firebase\JWT\Key;
use GuzzleHttp\Client;

class ProjectScopedToken
{
    private const ALGORITHM = 'RS256';

    public function signPayload(array $params): string
    {
        $issueTimeInSeconds = time();

        $payload = [
            'iss' => $params['tokenId'],
            'sub' => $params['tokenId'],
            'aud' => $params['audience'],
            'jti' => uniqid('', true),
            'exp' => $issueTimeInSeconds + (5 * 60),
            'iat' => $issueTimeInSeconds,
        ];

        $privateKey = $params['privateKey'];


        if (!empty($params['passphrase'])) {
            $privateKey = openssl_pkey_get_private($params['privateKey'], $params['passphrase']);
        }

        return JWT::encode($payload, $privateKey, self::ALGORITHM, $params['keyId']);
    }

    public function getUserAccessToken(array $params): string
    {
        $client = new Client();
        $token = $this->signPayload($params);

        $response = $client->post($params['audience'], [
            'headers' => ['Content-Type' => 'application/x-www-form-urlencoded'],
            'body' => http_build_query([
                'grant_type' => 'client_credentials',
                'scope' => 'openid',
                'client_assertion_type' => 'urn:ietf:params:oauth:client-assertion-type:jwt-bearer',
                'client_assertion' => $token,
                'client_id' => $params['tokenId'],
            ]),
        ]);

        $data = json_decode($response->getBody()->getContents(), true);
        return $data['access_token'];
    }

    public function fetchProjectScopedToken(array $params): string
    {
        $client = new Client();
        $userAccessToken = $this->getUserAccessToken($params);

        $response = $client->post("{$params['apiGatewayUrl']}/iam/v1/sts/create-project-scoped-token", [
            'headers' => [
                'Authorization' => "Bearer {$userAccessToken}",
                'Content-Type' => 'application/json',
            ],
            'json' => ['projectId' => $params['projectId']],
        ]);

        $data = json_decode($response->getBody()->getContents(), true);
        return $data['accessToken'];
    }
}
