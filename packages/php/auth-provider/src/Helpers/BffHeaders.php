<?php

namespace AuthProvider\Helpers;

class BffHeaders
{
    public function getBffHeaders(string $cookieName, string $sessionId, ?string $cliVersion = null): array
    {
        $headers = [
            'Accept' => 'application/json',
            'Content-Type' => 'application/json',
            'Accept-Encoding' => 'gzip, deflate, br',
            'Cookie' => "{$cookieName}={$sessionId}",
        ];

        if ($cliVersion) {
            $headers['affinidi-cli-version'] = $cliVersion;
        }

        return $headers;
    }
}
