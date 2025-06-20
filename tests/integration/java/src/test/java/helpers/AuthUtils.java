package helpers;

import com.affinidi.tdk.authProvider.AuthProvider;

import java.util.function.Supplier;

/**
 * Utility for creating auth hook for further clients initialization.
 */
public final class AuthUtils {

    private AuthUtils() {}

    /**
     * Creates and configures an AuthProvider using environment variables.
     *
     * @return a configured {@link AuthProvider} instance
     * @throws RuntimeException if initialization fails
     */
    private static AuthProvider createAuthProvider() {
        try {
            return new AuthProvider.Configurations()
                .keyId(Env.get("KEY_ID"))
                .privateKey(Env.get("PRIVATE_KEY"))
                .projectId(Env.get("PROJECT_ID"))
                .passphrase(Env.get("PASSPHRASE"))
                .tokenId(Env.get("TOKEN_ID"))
                .build();
        } catch (Exception e) {
            throw new RuntimeException("Failed to initialize AuthProvider", e);
        }
    }

    /**
     * Returns a {@link Supplier} of hook for authenticated API calls.
     *
     * @return a token supplier function
     * @throws RuntimeException if fetching a token fails
     */
    public static Supplier<String> createTokenSupplier() {
        AuthProvider authProvider = createAuthProvider();

        return () -> {
            try {
                return authProvider.fetchProjectScopedToken();
            } catch (Exception e) {
                throw new RuntimeException("Failed to fetch project scoped token", e);
            }
        };
    }
}
