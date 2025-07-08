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
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.EmptySource;
import org.junit.jupiter.params.provider.ValueSource;
import static org.mockito.ArgumentMatchers.any;
import org.mockito.MockedStatic;
import org.mockito.Mockito;
import static org.mockito.Mockito.mockStatic;

import com.affinidi.tdk.authProvider.exception.AccessTokenGenerationException;
import com.affinidi.tdk.authProvider.exception.ConfigurationException;
import com.affinidi.tdk.authProvider.exception.InvalidPublicKeyException;
import com.affinidi.tdk.authProvider.exception.JwtGenerationException;
import com.affinidi.tdk.authProvider.exception.PSTGenerationException;
import com.affinidi.tdk.authProvider.helper.AuthProviderConstants;
import com.affinidi.tdk.authProvider.helper.JwtUtil;
import com.affinidi.tdk.authProvider.types.IotaJwtOutput;
import com.affinidi.tdk.common.EnvironmentUtil;
import static com.github.tomakehurst.wiremock.client.WireMock.aResponse;
import static com.github.tomakehurst.wiremock.client.WireMock.equalTo;
import static com.github.tomakehurst.wiremock.client.WireMock.get;
import static com.github.tomakehurst.wiremock.client.WireMock.givenThat;
import static com.github.tomakehurst.wiremock.client.WireMock.okJson;
import static com.github.tomakehurst.wiremock.client.WireMock.post;
import com.github.tomakehurst.wiremock.http.Fault;
import com.github.tomakehurst.wiremock.junit5.WireMockRuntimeInfo;
import com.github.tomakehurst.wiremock.junit5.WireMockTest;
import com.github.tomakehurst.wiremock.matching.StringValuePattern;

public class AuthProviderTest {

    static final String TEST_PROJECT_ID = "test-project";
    static final String TEST_TOKEN_ID = "test-token";
    static final String TEST_KEY = "test-key";

    static final String TEST_PRIVATE_KEY;
    static final String TEST_ENCRYPTED_PRIVATE_KEY;

    static final String API_KEY_RESPONSE_JSON;

    private static String stringFrom(String path) throws IOException {
        return new String(Files.readAllBytes(Paths.get(path)));
    }

    static {
        try {
            TEST_PRIVATE_KEY = stringFrom("src/test/java/com/affinidi/tdk/authProvider/resources/test-private-key.txt");
            TEST_ENCRYPTED_PRIVATE_KEY = stringFrom(
                    "src/test/java/com/affinidi/tdk/authProvider/resources/test-encrypted-private-key.txt");
            API_KEY_RESPONSE_JSON = stringFrom(
                    "src/test/java/com/affinidi/tdk/authProvider/resources/api-key-response.json");

        } catch (IOException ex) {
            throw new RuntimeException(ex);
        }
    }

    @WireMockTest(proxyMode = true)
    abstract class BaseTest {

        protected String host;
        protected String apiUrl;
        protected String fakeTokenUrl;

        @BeforeEach
        @SuppressWarnings("unused")
        void beforeEach(WireMockRuntimeInfo wmRuntimeInfo) throws URISyntaxException {
            apiUrl = wmRuntimeInfo.getHttpBaseUrl();
            host = new URI(apiUrl).getHost();
            fakeTokenUrl = apiUrl + "/auth-token";
        }

        AuthProvider buildAuthProvider(String testPrivateKey) throws ConfigurationException {
            return buildAuthProvider(testPrivateKey, "");
        }

        AuthProvider buildAuthProvider(String testPrivateKey, String passphrase) throws ConfigurationException {
            try (MockedStatic mocked = mockStatic(EnvironmentUtil.class)) {
                mocked.when(EnvironmentUtil::getElementAuthTokenUrlForEnvironment).thenReturn(fakeTokenUrl);
                mocked.when(EnvironmentUtil::getApiGatewayUrlForEnvironment).thenReturn(apiUrl);
                return new AuthProvider.Configurations().projectId(TEST_PROJECT_ID).tokenId(TEST_TOKEN_ID)
                        .privateKey(testPrivateKey).passphrase(passphrase).build();
            }
        }

        StringValuePattern equalToHost() {
            return equalTo(host);
        }
    }

    @Nested
    @DisplayName("setting values to the authProvider configurations")
    @SuppressWarnings("unused")
    class ConfigurationsTest extends BaseTest {

        @Test
        void testAuthProviderConfiguration() throws Exception {
            final AuthProvider provider = buildAuthProvider(TEST_KEY);

            assertNotNull(provider);
            assertEquals(TEST_PROJECT_ID, provider.getProjectId());
            assertEquals(TEST_TOKEN_ID, provider.getTokenId());
            assertEquals(TEST_KEY, provider.getPrivateKey());
        }
    }

    @Nested
    @DisplayName("fetchProjectScopedToken method")
    @SuppressWarnings("unused")
    class FetchProjectScopedTokenTest extends BaseTest {

        @ParameterizedTest
        @DisplayName("given an invalid private-key and a empty or non-empty passphrase, the it throws")
        @EmptySource
        @ValueSource(strings = {"complicated-word"})
        void givenInvalidPrivateKey_thenThrows(String phrase) {
            final Exception exception = assertThrows(PSTGenerationException.class,
                    () -> buildAuthProvider("invalid-key").fetchProjectScopedToken());

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
                final Exception exception = assertThrows(PSTGenerationException.class,
                        () -> buildAuthProvider(TEST_KEY).fetchProjectScopedToken());

                // assert
                assertEquals(mockErrorMessage, exception.getMessage());
            }
        }

        @Test
        @DisplayName("given an invalid private-key, when the api-key endpoint returns a response and it fails to sign the payload, then it throws")
        void givenInvalidPrivateKey_AndApiKeyResponse_thenThrows() throws IOException, URISyntaxException {
            // arrange
            givenThat(get(AuthProviderConstants.PUBLIC_KEY_PATH).withHost(equalToHost())
                    .willReturn(okJson(API_KEY_RESPONSE_JSON)));
            givenThat(get(AuthProviderConstants.PUBLIC_KEY_PATH).withHost(equalToHost())
                    .willReturn(okJson(API_KEY_RESPONSE_JSON)));

            // act
            Exception exception = assertThrows(PSTGenerationException.class,
                    () -> buildAuthProvider(TEST_KEY).fetchProjectScopedToken());

            // assert
            assertTrue(exception.getMessage()
                    .startsWith(AuthProviderConstants.COULD_NOT_DERIVE_PRIVATE_KEY_ERROR_MSG + " Exception : "));
        }

        @Test
        @DisplayName("happy path: given a valid private-key, when all the endpoints successfully returns 200, then it returns a JWT")
        void givenValidApiKeyResponse_AndSuccessfulApiCalls_thenReturnsAJWT()
                throws IOException, URISyntaxException, ConfigurationException {
            // arrange
            final AuthProvider provider = buildAuthProvider(TEST_PRIVATE_KEY);
            givenThat(get(AuthProviderConstants.PUBLIC_KEY_PATH).withHost(equalToHost())
                    .willReturn(okJson(API_KEY_RESPONSE_JSON)));
            givenThat(post("/auth-token").withHost(equalToHost())
                    .willReturn(okJson("{access_token: \"some-access-token\"}")));
            givenThat(post(AuthProviderConstants.PROJECT_SCOPE_TOKEN_API_PATH).withHost(equalToHost())
                    .willReturn(okJson("{accessToken: \"some-project-scope-token\"}")));

            // act and assert
            String token = assertDoesNotThrow(() -> provider.fetchProjectScopedToken());
            assertEquals("some-project-scope-token", token);
        }
    }

    @Nested
    @DisplayName("shouldRefreshToken method")
    @SuppressWarnings("unused")
    class ShouldRefreshTokenTest extends BaseTest {

        @Test
        @DisplayName("given no project-token, then it returns true")
        void givenNoProjectToken_thenReturnsTrue() throws ConfigurationException {
            // arrange
            final AuthProvider provider = buildAuthProvider(TEST_KEY);

            // act and assert
            assertTrue(provider.shouldRefreshToken());
        }

        @Test
        @DisplayName("given a project-token, when the api-key endpoint call fails, then it returns true")
        void givenProjectToken_whenTheApiKeyEndpointCallFails_thenReturnsTrue()
                throws ConfigurationException, URISyntaxException {
            // arrange
            givenThat(get(AuthProviderConstants.PUBLIC_KEY_PATH).withHost(equalToHost())
                    .willReturn(aResponse().withFault(Fault.MALFORMED_RESPONSE_CHUNK)));

            // act
            final AuthProvider provider = buildAuthProvider(TEST_KEY);

            // assert
            assertTrue(provider.shouldRefreshToken());
        }

        @Test
        @DisplayName("given an invalid project-token, when the api-key endpoint call succeeds, then it returns true")
        void givenInvalidPrivateKey_WhenTheApiKeyEndpointCallSucceeds_thenReturnsTrue()
                throws URISyntaxException, IOException, ConfigurationException {
            // arrange
            givenThat(get(AuthProviderConstants.PUBLIC_KEY_PATH).withHost(equalToHost())
                    .willReturn(okJson(API_KEY_RESPONSE_JSON)));
            final AuthProvider provider = buildAuthProvider(TEST_KEY);

            // act and assert
            assertTrue(provider.shouldRefreshToken());
        }
    }

    @Nested
    @DisplayName("getUserAccessToken method")
    @SuppressWarnings("unused")
    class GetUserAccessTokenTest extends BaseTest {

        @Test
        @DisplayName("given an invalid private-key, then it throws")
        void givenInvalidPrivateKey_thenThrows() {
            Exception exception = assertThrows(AccessTokenGenerationException.class,
                    () -> buildAuthProvider("invalid-key").getUserAccessToken());

            assertTrue(exception.getMessage().startsWith(AuthProviderConstants.COULD_NOT_DERIVE_PRIVATE_KEY_ERROR_MSG));
        }

        @Test
        @DisplayName("given a valid private-key, when the token-endpoint call fails, then it throws")
        void givenValidPrivateKey_WhenTheTokenEndpointCallFails_thenThrows()
                throws URISyntaxException, IOException, ConfigurationException {
            // arrange
            givenThat(post("/auth-token").withHost(equalToHost())
                    // .willReturn(aResponse().withFault(Fault.MALFORMED_RESPONSE_CHUNK)));
                    .willReturn(aResponse().withStatus(400)));

            // act
            final Exception exception = assertThrows(AccessTokenGenerationException.class,
                    () -> buildAuthProvider(TEST_PRIVATE_KEY).getUserAccessToken());

            // assert
            assertTrue(exception.getMessage().contains("Could not retrieve access_token from the token end point"));
        }

        @Test
        @DisplayName("given a valid private-key, when the token-endpoint call succeeds, then it returns a JWT")
        void givenValidPrivateKey_WhenTheTokenEndpointCallSucceeds_thenReturnsAJWT()
                throws URISyntaxException, IOException, ConfigurationException {
            // arrange
            givenThat(post("/auth-token").withHost(equalToHost())
                    .willReturn(okJson("{access_token: \"some-access-token\"}")));

            // act and assert
            String token = assertDoesNotThrow(() -> buildAuthProvider(TEST_PRIVATE_KEY).getUserAccessToken());
            assertEquals("some-access-token", token);
        }

        @Test
        @DisplayName("given a valid encrypted private-key, when the token-endpoint call succeeds, then it returns a JWT")
        void givenValidEncryptedPrivateKey_WhenTheTokenEndpointCallSucceeds_thenReturnsAJWT()
                throws URISyntaxException, IOException, ConfigurationException {
            // arrange
            givenThat(post("/auth-token").withHost(equalToHost())
                    .willReturn(okJson("{access_token: \"some-access-token\"}")));

            // act and assert
            String token = assertDoesNotThrow(
                    () -> buildAuthProvider(TEST_ENCRYPTED_PRIVATE_KEY, "test-pass-phrase").getUserAccessToken());
            assertEquals("some-access-token", token);
        }
    }

    @Nested
    @DisplayName("signIotaJwt method")
    @SuppressWarnings("unused")
    class SignIotaJwtTest extends BaseTest {

        @Test
        @DisplayName("given an invalid private-key, then it throws")
        void givenInvalidPrivateKey_thenThrows() {
            final Exception exception = assertThrows(JwtGenerationException.class,
                    () -> buildAuthProvider("invalid-key").signIotaJwt("test-iota-config-id", "test-did",
                            "test-session-id"));
            assertTrue(exception.getMessage().startsWith(AuthProviderConstants.COULD_NOT_DERIVE_PRIVATE_KEY_ERROR_MSG));
        }

        @Test
        @DisplayName("given a valid private-key, then it returns a IotaJwtOutput")
        void givenValidPrivateKey_thenReturnsIotaJwtOutput() throws ConfigurationException, IOException {
            // arrange
            final AuthProvider provider = buildAuthProvider(TEST_PRIVATE_KEY);

            // act and assert
            final IotaJwtOutput iotaJwtOutput = assertDoesNotThrow(
                    () -> provider.signIotaJwt("test-iota-config-id", "test-did", "test-session-id"));
            assertNotNull(iotaJwtOutput);
            assertNotNull(iotaJwtOutput.getIotaSessionId());
            assertNotNull(iotaJwtOutput.getIotaJwt());
        }

        @Test
        @DisplayName("given a valid encrypted private-key, then it returns a IotaJwtOutput")
        void givenValidEncryptedPrivateKey_thenReturnsIotaJwtOutput() throws ConfigurationException, IOException {
            // arrange
            final AuthProvider provider = buildAuthProvider(TEST_ENCRYPTED_PRIVATE_KEY, "test-pass-phrase");

            // act and assert
            final IotaJwtOutput iotaJwtOutput = assertDoesNotThrow(
                    () -> provider.signIotaJwt("test-iota-config-id", "test-did", "test-session-id"));
            assertNotNull(iotaJwtOutput);
            assertNotNull(iotaJwtOutput.getIotaSessionId());
            assertNotNull(iotaJwtOutput.getIotaJwt());
        }
    }
}
