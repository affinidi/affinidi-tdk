import com.fasterxml.jackson.databind.ObjectMapper;
import helpers.TestUtils;
import org.json.JSONObject;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;

import com.affinidi.tdk.credential.verification.client.ApiClient;
import com.affinidi.tdk.credential.verification.client.Configuration;
import com.affinidi.tdk.credential.verification.client.apis.DefaultApi;
import com.affinidi.tdk.credential.verification.client.auth.ApiKeyAuth;
import com.affinidi.tdk.credential.verification.client.models.VerifyCredentialInput;
import com.affinidi.tdk.credential.verification.client.models.VerifyCredentialOutput;

import static org.junit.jupiter.api.Assertions.assertTrue;

@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class CredentialVerificationClientIT {

    private String verifiableCredential;

    @BeforeAll
    void setUp() {
        verifiableCredential = TestUtils.getDotenv().get("VERIFIABLE_CREDENTIAL");
    }

    @Test
    void testCredentialVerificationClient() throws Exception {
        ApiClient client = Configuration.getDefaultApiClient();
        ApiKeyAuth auth = (ApiKeyAuth) client.getAuthentication("ProjectTokenAuth");
        auth.setApiKeySupplier(TestUtils.createTokenSupplier());

        DefaultApi apiInstance = new DefaultApi(client);

        String envJson = verifiableCredential;
        if (envJson.startsWith("'") && envJson.endsWith("'")) {
            envJson = envJson.substring(1, envJson.length() - 1);
        }

        JSONObject json = new JSONObject(envJson);
        Object w3cCredential = new ObjectMapper().readValue(json.toString(), Object.class);

        VerifyCredentialInput input = new VerifyCredentialInput().addVerifiableCredentialsItem(w3cCredential);
        VerifyCredentialOutput result = apiInstance.verifyCredentials(input);

        assertTrue(result.getIsValid(), "Expected credential to be valid");
    }
}
