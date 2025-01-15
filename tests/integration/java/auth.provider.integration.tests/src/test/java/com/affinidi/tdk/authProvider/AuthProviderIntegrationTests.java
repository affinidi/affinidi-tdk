package com.affinidi.tdk.authProvider;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.EmptySource;
import org.junit.jupiter.params.provider.ValueSource;

public class AuthProviderIntegrationTests {
    @Test
    void testAuthProviderConfiguration() throws Exception {
        AuthProvider provider = new AuthProvider.Configurations()
                .projectId("test-project")
                .tokenId("test-token")
                .privateKey("test-key")
                .build();

        assertNotNull(provider);
        assertEquals("test-project", provider.getProjectId());
    }

    @ParameterizedTest
    @DisplayName("throws given an invalid private-key and a empty or non-empty passphrase")
    @EmptySource
    @ValueSource(strings = { "complicated-word" })
    void testInvalidPrivateKey(String phrase) {
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