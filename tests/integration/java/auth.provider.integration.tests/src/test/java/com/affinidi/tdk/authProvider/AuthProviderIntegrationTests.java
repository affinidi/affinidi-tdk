package com.affinidi.tdk.authProvider;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

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
}