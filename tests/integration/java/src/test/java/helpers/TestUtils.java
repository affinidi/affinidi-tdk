package helpers;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.Random;

import com.affinidi.tdk.authProvider.AuthProvider;
import io.github.cdimascio.dotenv.Dotenv;

import java.util.function.Supplier;

public class TestUtils {
    private static final String ALPHABET = "abcdefghijklmnopqrstuvwxyz";
    private static final int RANDOM_STRING_LENGTH = 12;

    private static Dotenv dotenv;

    static {
        dotenv = Dotenv.configure()
            .directory("../../")
            .filename(".env")
            .load();
    }

    public static Dotenv getDotenv() {
        return dotenv;
    }

    public static AuthProvider createAuthProvider() {
        try {
            return new AuthProvider.Configurations()
                .keyId(dotenv.get("KEY_ID"))
                .privateKey(dotenv.get("PRIVATE_KEY"))
                .projectId(dotenv.get("PROJECT_ID"))
                .passphrase(dotenv.get("PASSPHRASE"))
                .tokenId(dotenv.get("TOKEN_ID"))
                .build();
        } catch (Exception e) {
            throw new RuntimeException("Failed to init AuthProvider", e);
        }
    }

    public static Supplier<String> createTokenSupplier() {
        AuthProvider authProvider = createAuthProvider();
        return () -> {
            try {
                return authProvider.fetchProjectScopedToken();
            } catch (Exception e) {
                throw new RuntimeException("Failed to fetch token", e);
            }
        };
    }

    public static String getEnv(String key) {
        return dotenv.get(key);
    }

    public static String extractRevocationStatusId(String url) {
        try {
            URI uri = new URI(url);
            String path = uri.getPath();
            if (path == null || path.isEmpty()) {
                return null;
            }
            String[] segments = path.replaceAll("^/+", "").split("/");
            return segments.length > 0 ? segments[segments.length - 1] : null;
        } catch (URISyntaxException e) {
            return null;
        }
    }

    public static String generateRandomString() {
        Random random = new Random();
        StringBuilder sb = new StringBuilder(RANDOM_STRING_LENGTH);
        for (int i = 0; i < RANDOM_STRING_LENGTH; i++) {
            sb.append(ALPHABET.charAt(random.nextInt(ALPHABET.length())));
        }
        return sb.toString();
    }
}
