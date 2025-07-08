package helpers;

import com.affinidi.tdk.authProvider.AuthProvider;
import com.affinidi.tdk.common.EnvironmentUtil;

import java.util.function.Supplier;

/**
 * Utility for creating auth hook for further clients initialization.
 */
public final class AuthUtils {

    private AuthUtils() {}

    private static String cachedToken;

    /**
     * Returns a {@link Supplier} of hook for authenticated API calls.
     *
     * @return a token supplier function
     * @throws RuntimeException if fetching a token fails
     */
    public static Supplier<String> createTokenSupplier() {
        if (cachedToken == null) {
            AuthProvider authProvider = createAuthProvider();
            try {
                cachedToken = authProvider.fetchProjectScopedToken();
            } catch (Exception  e) {
                throw new RuntimeException("Failed to fetch project scoped token", e);
            }
        }
        return () -> cachedToken;
    }

    /**
     * Creates and configures an AuthProvider using environment variables.
     *
     * @return a configured {@link AuthProvider} instance
     * @throws RuntimeException if initialization fails
     */
    private static AuthProvider createAuthProvider() {
        try {
            AuthProvider.Configurations config = new AuthProvider.Configurations()
                .projectId(Env.get("PROJECT_ID"))
                .tokenId(Env.get("TOKEN_ID"))
                .privateKey(Env.get("PRIVATE_KEY"))
                .passphrase(Env.getOptional("PASSPHRASE"))
                .keyId(Env.getOptional("KEY_ID"));

            String env = Env.getOptional("AFFINIDI_TDK_ENVIRONMENT");

            if (!Env.isProd() && env != null && !env.isEmpty()) {
                config.tokenEndPoint(EnvironmentUtil.getElementAuthTokenUrlForEnvironment(env))
                      .apiGatewayUrl(EnvironmentUtil.getApiGatewayUrlForEnvironment(env));
            }

            return config.build();
        } catch (Exception e) {
            throw new RuntimeException("Failed to initialize AuthProvider", e);
        }
    }
}
