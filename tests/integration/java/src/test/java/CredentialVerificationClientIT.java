import com.fasterxml.jackson.databind.ObjectMapper;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;

import static org.junit.jupiter.api.Assertions.assertTrue;

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
public class CredentialVerificationClientIT {
    private String verifiableCredentialJson;
    private String verifiablePresentationJson;

    private DefaultApi verificationApi;
    private final ObjectMapper objectMapper = new ObjectMapper();

    @BeforeAll
    void setUp() throws Exception {
        verifiableCredentialJson = Env.get("VERIFIABLE_CREDENTIAL");
        verifiablePresentationJson = Env.get("VERIFIABLE_PRESENTATION");

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
    void testCredentialVerification() throws Exception {
        Object credential = objectMapper.readValue(verifiableCredentialJson, Object.class);

        VerifyCredentialInput input = new VerifyCredentialInput()
            .addVerifiableCredentialsItem(credential);

        VerifyCredentialOutput result = verificationApi.verifyCredentials(input);

        assertTrue(result.getIsValid(), "Credential should be valid.");
    }

    @Test
    void testPresentationVerification() throws Exception {
        Object presentation = objectMapper.readValue(verifiablePresentationJson, Object.class);

        VerifyPresentationInput input = new VerifyPresentationInput()
            .verifiablePresentation(presentation);

        VerifyPresentationOutput result = verificationApi.verifyPresentation(input);

        assertTrue(result.getIsValid(), "Presentation should be valid.");
    }
}
