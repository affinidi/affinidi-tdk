package com.affinidi.tdk.authProvider;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.file.Files;
import java.nio.file.Paths;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.EmptySource;
import org.junit.jupiter.params.provider.ValueSource;
import org.mockito.MockedStatic;
import org.mockito.Mockito;
import static com.github.tomakehurst.wiremock.client.WireMock.equalTo;
import static com.github.tomakehurst.wiremock.client.WireMock.get;
import static com.github.tomakehurst.wiremock.client.WireMock.givenThat;
import static com.github.tomakehurst.wiremock.client.WireMock.okJson;
import com.github.tomakehurst.wiremock.junit5.WireMockRuntimeInfo;
import com.github.tomakehurst.wiremock.junit5.WireMockTest;

import com.affinidi.tdk.authProvider.exception.InvalidPublicKeyException;
import com.affinidi.tdk.authProvider.exception.JwtGenerationException;
import com.affinidi.tdk.authProvider.exception.PSTGenerationException;
import com.affinidi.tdk.authProvider.helper.AuthProviderConstants;
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

    @WireMockTest(proxyMode = true)
    @Nested
    @DisplayName("fetchProjectScopedToken method")
    class FetchProjectScopedTokenTest {
        @ParameterizedTest
        @DisplayName("given an invalid private-key and a empty or non-empty passphrase, the it throws")
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
        @DisplayName("given the failing api-key endpoint call and failing to sign the payload, then it throws")
        void givenInvalidApiGatewayUrl_thenThrows() {
            // arrange
            String mockErrorMessage = "mock-exception-message";
            MockedStatic<JwtUtil> utilsMock = Mockito.mockStatic(JwtUtil.class);
            utilsMock.when(() -> JwtUtil.fetchPublicKey(any())).thenThrow(InvalidPublicKeyException.class);
            utilsMock.when(() -> JwtUtil.signPayload(any(), any(), any(), any(), any()))
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

            // cleanup
            utilsMock.close();
        }

        @Test
        @DisplayName("given an invalid private-key, when the api-key endpoint returns a response and it fails to sign the payload, then it throws")
        void givenInvalidPrivateKey_AndApiKeyResponse_thenThrows(WireMockRuntimeInfo wmRuntimeInfo)
                throws IOException, URISyntaxException {
            // arrange
            String apiUrl = wmRuntimeInfo.getHttpBaseUrl();
            URI uri = new URI(apiUrl);
            String host = uri.getHost();
            String apiKeyJson = new String(
                    Files.readAllBytes(Paths.get(
                            "src/test/java/com/affinidi/tdk/authProvider/resources/api-key-response.json")));
            givenThat(get(AuthProviderConstants.publicKeyPath)
                    .withHost(equalTo(host))
                    .willReturn(okJson(apiKeyJson)));

            // act
            Exception exception = assertThrows(PSTGenerationException.class, () -> {
                AuthProvider provider = new AuthProvider.Configurations()
                        .projectId("test-project")
                        .tokenId("test-token")
                        .privateKey("test-key")
                        .passphrase("")
                        .build();
                provider.setApiGatewayUrl(apiUrl);
                provider.setProjectScopeToken("test-project-scope-token");
                provider.fetchProjectScopedToken();
            });

            // assert
            assertTrue(exception.getMessage()
                    .startsWith("Could not derive private key out of the configurations. Exception : "));
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
