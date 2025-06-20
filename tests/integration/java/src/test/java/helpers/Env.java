package helpers;

import io.github.cdimascio.dotenv.Dotenv;

public class Env {
    private static Dotenv dotenv;

    static {
        dotenv = Dotenv.configure()
            .directory("../../")
            .filename(".env")
            .load();
    }

    public static String get(String key) {
        String value = dotenv.get(key);
        if (value == null || value.isEmpty()) {
            throw new IllegalStateException("Missing required env variable: " + key);
        }

        return removeSingleQuotes(value);
    }

    public static String getOptional(String key) {
        return dotenv.get(key);
    }

    private static String removeSingleQuotes(String str) {
        if (str.startsWith("'") && str.endsWith("'")) {
            return str.substring(1, str.length() - 1);
        }

        return str;
    }
}
