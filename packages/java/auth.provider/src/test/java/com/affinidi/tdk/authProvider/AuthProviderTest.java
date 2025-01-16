package com.affinidi.tdk.authProvider;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.ArgumentMatchers.any;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.EmptySource;
import org.junit.jupiter.params.provider.ValueSource;
import org.mockito.MockedStatic;
import org.mockito.Mockito;

import com.affinidi.tdk.authProvider.exception.InvalidPublicKeyException;
import com.affinidi.tdk.authProvider.exception.JwtGenerationException;
import com.affinidi.tdk.authProvider.exception.PSTGenerationException;
import com.affinidi.tdk.authProvider.helper.JwtUtil;

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

        @Test
        @DisplayName("throws given the failing api-key endpoint call")
        void givenInvalidApiGatewayUrl_thenThrows() {
            // arrange
            String mockErrorMessage = "mock-exception-message";
            MockedStatic<JwtUtil> utils = Mockito.mockStatic(JwtUtil.class);
            utils.when(() -> JwtUtil.fetchPublicKey(any())).thenThrow(InvalidPublicKeyException.class);
            utils.when(() -> JwtUtil.signPayload(any(), any(), any(), any(), any()))
                    .thenThrow(new JwtGenerationException(mockErrorMessage));

            // act
            Exception exception = assertThrows(PSTGenerationException.class, () -> {
                AuthProvider provider = new AuthProvider.Configurations()
                        .projectId("test-project")
                        .tokenId("test-token")
                        .privateKey("test-key")
                        .build();
                provider.fetchProjectScopedToken();
            });

            // assert
            assertEquals(mockErrorMessage, exception.getMessage());
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
