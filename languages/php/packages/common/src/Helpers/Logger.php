<?php

namespace Common\Helpers;

class Logger
{
    private static $isDebugEnabled;

    public static function debug(string $message, ...$optionalParams): void
    {
        if (self::isDebugEnabled() && function_exists('error_log')) {
            $logMessage = "TDK: $message " . implode(' ', $optionalParams);
            error_log($logMessage);
        }
    }

    private static function isDebugEnabled(): bool
    {
        if (self::$isDebugEnabled === null) {
            self::$isDebugEnabled = EnvironmentUtils::fetchEnvironment() !== Environment::PRODUCTION;
        }
        return self::$isDebugEnabled;
    }
}
