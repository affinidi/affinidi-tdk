package com.affinidi.tdk.authProvider;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.DisplayName;

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

    @Test
    @DisplayName("throws given an invalid private-key")
    void testInvalidPrivateKey() {
        Exception exception = assertThrows(Exception.class, () -> {
            AuthProvider provider = new AuthProvider.Configurations()
                    .projectId("test-project")
                    .tokenId("test-token")
                    .privateKey("invalid-key")
                    .passphrase("")
                    .build();
            provider.fetchProjectScopedToken();
        });

        assertTrue(exception.getMessage().startsWith("Could not derive private key out of the configurations."));
    }
}