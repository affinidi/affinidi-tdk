import com.fasterxml.jackson.databind.ObjectMapper;
import helpers.AuthUtils;
import helpers.Env;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;

import com.affinidi.tdk.credential.verification.client.ApiClient;
import com.affinidi.tdk.credential.verification.client.Configuration;
import com.affinidi.tdk.credential.verification.client.apis.DefaultApi;
import com.affinidi.tdk.credential.verification.client.auth.ApiKeyAuth;
import com.affinidi.tdk.credential.verification.client.models.*;

import static org.junit.jupiter.api.Assertions.assertTrue;

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
