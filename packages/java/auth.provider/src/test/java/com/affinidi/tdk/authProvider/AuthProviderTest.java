package com.affinidi.tdk.authProvider;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.EmptySource;
import org.junit.jupiter.params.provider.ValueSource;

public class AuthProviderTest {

    @Nested
    @DisplayName("setting values to the authProvider configurations")
    class ConfigurationsTest {
        @Test
        void testAuthProviderConfiguration() throws Exception {
            AuthProvider provider = new AuthProvider.Configurations()
                    .projectId("test-project")
                    .tokenId("test-token")
                    .privateKey("test-key")
                    .build();

            assertNotNull(provider);
            assertEquals("test-project", provider.getProjectId());
            assertEquals("test-token", provider.getTokenId());
            assertEquals("test-key", provider.getPrivateKey());
        }
    }

    @Nested
    @DisplayName("fetchProjectScopedToken method")
    class FetchProjectScopedTokenTest {
        @ParameterizedTest
        @DisplayName("throws given an invalid private-key and a empty or non-empty passphrase")
        @EmptySource
        @ValueSource(strings = { "complicated-word" })
        void givenInvalidPrivateKey_thenThrows(String phrase) {
            Exception exception = assertThrows(Exception.class, () -> {
                AuthProvider provider = new AuthProvider.Configurations()
                        .projectId("test-project")
                        .tokenId("test-token")
                        .privateKey("invalid-key")
                        .passphrase(phrase)
                        .build();
                provider.fetchProjectScopedToken();
            });

            assertTrue(exception.getMessage().startsWith("Could not derive private key out of the configurations."));
        }
    }

    @Test
    void testGetUserAccessToken() {

    }

    @Test
    void testShouldRefreshToken() {

    }

    @Test
    void testSignIotaJwt() {

    }

}
