package helpers;

import io.github.cdimascio.dotenv.Dotenv;
import java.util.Set;

public class Env {
    private static Dotenv dotenv;
    private static final String ENV_KEY = "AFFINIDI_TDK_ENVIRONMENT";
    private static final String PROD_ENV = "prod";

    private static final Set<String> SENSITIVE_KEYS = Set.of(
        "PROJECT_ID", "TOKEN_ID", "PRIVATE_KEY", "KEY_ID", "PASSPHRASE"
    );

    public static boolean isProd() {
        String env = dotenv.get(ENV_KEY);
        return env == null || env.isEmpty() || env.equalsIgnoreCase(PROD_ENV);
    }

    public static String getEnvName() {
        String env = dotenv.get(ENV_KEY);

        if (env == null || env.isEmpty()) {
            return PROD_ENV;
        }

        return env;
    }

    static {
        dotenv = Dotenv.configure()
            .directory("../../")
            .filename(".env")
            .load();
    }

    public static String get(String key) {
        String value = getEnvValue(key);
        if (value == null || value.isEmpty()) {
            throw new IllegalStateException("Missing env variable: " + key);
        }

        return removeSingleQuotes(value);
    }

    public static String getOptional(String key) {
        String value = getEnvValue(key);
        return removeSingleQuotes(value);
    }

    private static String getEnvValue(String key) {
        if (SENSITIVE_KEYS.contains(key) && !isProd()) {
            String devKey = "DEV_" + key;
            return dotenv.get(devKey);
        }

        return dotenv.get(key);
    }

    private static String removeSingleQuotes(String str) {
        if (str != null && str.startsWith("'") && str.endsWith("'")) {
            return str.substring(1, str.length() - 1);
        }
        return str;
    }
}
