import com.fasterxml.jackson.databind.ObjectMapper;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;

import static org.junit.jupiter.api.Assertions.assertTrue;

import java.util.Map;

import helpers.AuthUtils;
import helpers.Env;
import helpers.TestUtils;

import com.affinidi.tdk.credential.verification.client.ApiClient;
import com.affinidi.tdk.credential.verification.client.Configuration;
import com.affinidi.tdk.credential.verification.client.apis.DefaultApi;
import com.affinidi.tdk.credential.verification.client.auth.ApiKeyAuth;
import com.affinidi.tdk.credential.verification.client.models.*;
import com.affinidi.tdk.common.EnvironmentUtil;

/**
 * Integration tests for Credential Verification Client.
 * Covers credential and presentation verification.
 */
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class CredentialVerificationClientV2IT {
    private String verifiableCredentialJson;
    private String verifiableCredentialJwt;
    private String verifiablePresentationJson;

    private DefaultApi verificationApi;
    private final ObjectMapper objectMapper = new ObjectMapper();

    @BeforeAll
    void setUp() throws Exception {
        verifiableCredentialJson = Env.get("VERIFIABLE_CREDENTIAL");
        verifiablePresentationJson = Env.get("VERIFIABLE_PRESENTATION");
        verifiableCredentialJwt = Env.get("JWT_CREDENTIAL_V2");

        ApiClient client = Configuration.getDefaultApiClient();

        if (!Env.isProd()) {
            String apiGatewayUrl = EnvironmentUtil.getApiGatewayUrlForEnvironment(Env.getEnvName());
            String basePath = TestUtils.replaceBaseDomain(client.getBasePath(), apiGatewayUrl);
            client.setBasePath(basePath);
        }

        ApiKeyAuth auth = (ApiKeyAuth) client.getAuthentication("ProjectTokenAuth");
        auth.setApiKeySupplier(AuthUtils.createTokenSupplier());

        verificationApi = new DefaultApi(client);
    }

    @Test
    @DisplayName("Test LDP Credential Verification using v2 API")
    void testLdpCredentialVerification() throws Exception {
        Map<String, Object> ldpCredential = (Map<String, Object>) objectMapper.readValue(verifiableCredentialJson,
                Object.class);

        VerifyCredentialV2Input input = new VerifyCredentialV2Input()
                .addLdpVcsItem(ldpCredential);

        VerifyCredentialOutput result = verificationApi.verifyCredentialsV2(input);

        assertTrue(result.getIsValid(), "Credential should be valid.");
    }

    @Test
    @DisplayName("Test JWT Credential Verification using v2 API")
    void testJwtCredentialVerification() throws Exception {
        String jwtCredential = verifiableCredentialJwt;

        VerifyCredentialV2Input input = new VerifyCredentialV2Input()
                .addJwtVcsItem(jwtCredential);

        VerifyCredentialOutput result = verificationApi.verifyCredentialsV2(input);

        assertTrue(result.getIsValid(), "Credential should be valid.");
    }

    @Test
    @DisplayName("Test both LDP and JWT Credential Verification using v2 API")
    void testLdpAndJwtCredentialVerification() throws Exception {
        String jwtCredential = verifiableCredentialJwt;
        Map<String, Object> ldpCredential = (Map<String, Object>) objectMapper.readValue(verifiableCredentialJson,
                Object.class);

        VerifyCredentialV2Input input = new VerifyCredentialV2Input()
                .addLdpVcsItem(ldpCredential)
                .addJwtVcsItem(jwtCredential);

        VerifyCredentialOutput result = verificationApi.verifyCredentialsV2(input);

        assertTrue(result.getIsValid(), "Credential should be valid.");
    }

    @Test
    @DisplayName("Test Presentation Verification using v2 API")
    void testPresentationVerification() throws Exception {
        Object presentation = objectMapper.readValue(verifiablePresentationJson, Object.class);

        VerifyPresentationInput input = new VerifyPresentationInput()
                .verifiablePresentation(presentation);

        VerifyPresentationOutput result = verificationApi.verifyPresentation(input);

        assertTrue(result.getIsValid(), "Presentation should be valid.");
    }
}
