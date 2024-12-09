<?php

namespace AuthProvider\Helpers;

use Firebase\JWT\JWT;
use Firebase\JWT\JWK;
use Firebase\JWT\Key;
use GuzzleHttp\Client;

class JwtHelper
{
    public function validateToken(string $token, string $publicKey): array
    {
        try {
            JWT::decode($token, new Key($publicKey, 'RS256'));
            return ['isValid' => true, 'isExpired' => false];
        } catch (\Firebase\JWT\ExpiredException $e) {
            return ['isValid' => false, 'isExpired' => true];
        } catch (\Exception $e) {
            return ['isValid' => false, 'isExpired' => false];
        }
    }

    public function fetchPublicKey(string $apiGatewayUrl): string
    {
        $client = new Client();

        $response = $client->get("{$apiGatewayUrl}/iam/.well-known/jwks.json", [
            'headers' => ['Content-Type' => 'application/json'],
        ]);

        $data = json_decode($response->getBody()->getContents(), true);

        if (!empty($data['keys'])) {
            $jwk = $data['keys'][0];

            $pem = JWK::parseKey($jwk);
            $publicKey = $pem->getKeyMaterial();

            return $publicKey ?: '';
        }

        return ''; // Return empty string if no keys found
    }
}
