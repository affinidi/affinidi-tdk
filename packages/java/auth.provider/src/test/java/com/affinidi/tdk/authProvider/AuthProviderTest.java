package com.affinidi.tdk.authProvider;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.file.Files;
import java.nio.file.Paths;

import static org.junit.jupiter.api.Assertions.assertDoesNotThrow;
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
import static org.mockito.ArgumentMatchers.any;
import org.mockito.MockedStatic;
import org.mockito.Mockito;

import com.affinidi.tdk.authProvider.exception.ConfigurationException;
import com.affinidi.tdk.authProvider.exception.InvalidPublicKeyException;
import com.affinidi.tdk.authProvider.exception.JwtGenerationException;
import com.affinidi.tdk.authProvider.exception.PSTGenerationException;
import com.affinidi.tdk.authProvider.helper.AuthProviderConstants;
import com.affinidi.tdk.authProvider.helper.JwtUtil;
import static com.github.tomakehurst.wiremock.client.WireMock.equalTo;
import static com.github.tomakehurst.wiremock.client.WireMock.get;
import static com.github.tomakehurst.wiremock.client.WireMock.givenThat;
import static com.github.tomakehurst.wiremock.client.WireMock.okJson;
import static com.github.tomakehurst.wiremock.client.WireMock.post;
import com.github.tomakehurst.wiremock.junit5.WireMockRuntimeInfo;
import com.github.tomakehurst.wiremock.junit5.WireMockTest;

public class AuthProviderTest {

    @Nested
    @DisplayName("setting values to the authProvider configurations")
    @SuppressWarnings("unused")
    class ConfigurationsTest {

        @Test
        void testAuthProviderConfiguration() throws Exception {
            AuthProvider provider = new AuthProvider.Configurations().projectId("test-project").tokenId("test-token")
                    .privateKey("test-key").build();

            assertNotNull(provider);
            assertEquals("test-project", provider.getProjectId());
            assertEquals("test-token", provider.getTokenId());
            assertEquals("test-key", provider.getPrivateKey());
        }
    }

    @WireMockTest(proxyMode = true)
    @Nested
    @DisplayName("fetchProjectScopedToken method")
    @SuppressWarnings("unused")
    class FetchProjectScopedTokenTest {

        @ParameterizedTest
        @DisplayName("given an invalid private-key and a empty or non-empty passphrase, the it throws")
        @EmptySource
        @ValueSource(strings = { "complicated-word" })
        void givenInvalidPrivateKey_thenThrows(String phrase) {
            Exception exception = assertThrows(PSTGenerationException.class, () -> {
                AuthProvider provider = new AuthProvider.Configurations().projectId("test-project")
                        .tokenId("test-token").privateKey("invalid-key").passphrase(phrase).build();
                provider.fetchProjectScopedToken();
            });

            assertTrue(exception.getMessage().startsWith("Could not derive private key out of the configurations."));
        }

        @Test
        @DisplayName("given the failing api-key endpoint call and failing to sign the payload, then it throws")
        void givenInvalidApiGatewayUrl_thenThrows() {
            // arrange
            String mockErrorMessage = "mock-exception-message";
            try (MockedStatic<JwtUtil> utilsMock = Mockito.mockStatic(JwtUtil.class)) {
                utilsMock.when(() -> JwtUtil.fetchPublicKey(any())).thenThrow(InvalidPublicKeyException.class);
                utilsMock.when(() -> JwtUtil.signPayload(any(), any(), any(), any(), any()))
                        .thenThrow(new JwtGenerationException(mockErrorMessage));

                // act
                Exception exception = assertThrows(PSTGenerationException.class, () -> {
                    AuthProvider provider = new AuthProvider.Configurations().projectId("test-project")
                            .tokenId("test-token").privateKey("test-key").build();
                    provider.fetchProjectScopedToken();
                });

                // assert
                assertEquals(mockErrorMessage, exception.getMessage());
            }
        }

        @Test
        @DisplayName("given an invalid private-key, when the api-key endpoint returns a response and it fails to sign the payload, then it throws")
        void givenInvalidPrivateKey_AndApiKeyResponse_thenThrows(WireMockRuntimeInfo wmRuntimeInfo)
                throws IOException, URISyntaxException {
            // arrange
            String apiUrl = wmRuntimeInfo.getHttpBaseUrl();
            URI uri = new URI(apiUrl);
            String host = uri.getHost();
            String apiKeyJson = new String(Files.readAllBytes(
                    Paths.get("src/test/java/com/affinidi/tdk/authProvider/resources/api-key-response.json")));
            givenThat(
                    get(AuthProviderConstants.PUBLIC_KEY_PATH).withHost(equalTo(host)).willReturn(okJson(apiKeyJson)));

            // act
            Exception exception = assertThrows(PSTGenerationException.class, () -> {
                AuthProvider provider = new AuthProvider.Configurations().projectId("test-project")
                        .tokenId("test-token").privateKey("test-key").passphrase("").build();
                provider.setApiGatewayUrl(apiUrl);
                provider.setProjectScopeToken("test-project-scope-token");
                provider.fetchProjectScopedToken();
            });

            // assert
            assertTrue(exception.getMessage()
                    .startsWith(AuthProviderConstants.COULD_NOT_DERIVE_PRIVATE_KEY_ERROR_MSG + " Exception : "));
        }

        @Test
        @DisplayName("happy path: given a valid private-key, when all the endponts succesfully returns 200, then it returns a JWT")
        void givenValidApiKeyResponse_AndSuccessfulApiCalls_thenReturnsAJWT(WireMockRuntimeInfo wmRuntimeInfo)
                throws IOException, URISyntaxException, ConfigurationException {
            // arrange
            String apiUrl = wmRuntimeInfo.getHttpBaseUrl();
            URI uri = new URI(apiUrl);
            String host = uri.getHost();
            String fakeTokenUrl = apiUrl + "/auth-token";
            String testPrivateKey = new String(Files.readAllBytes(
                    Paths.get("src/test/java/com/affinidi/tdk/authProvider/resources/test-private-key.txt")));
            AuthProvider provider = new AuthProvider.Configurations().projectId("test-project").tokenId("test-token")
                    .privateKey(testPrivateKey).passphrase("").build();
            provider.setApiGatewayUrl(apiUrl);
            provider.setTokenEndPoint(fakeTokenUrl);
            givenThat(post("/auth-token").withHost(equalTo(host))
                    .willReturn(okJson("{access_token: \"some-access-token\"}")));
            givenThat(post(AuthProviderConstants.PROJECT_SCOPE_TOKEN_API_PATH).withHost(equalTo(host))
                    .willReturn(okJson("{accessToken: \"some-project-scope-token\"}")));

            // act and assert
            String token = assertDoesNotThrow(() -> provider.fetchProjectScopedToken());
            assertEquals("some-project-scope-token", token);
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
}
