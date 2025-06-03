import helpers.TestUtils;
import com.affinidi.tdk.iam.client.ApiClient;
import com.affinidi.tdk.iam.client.Configuration;
import com.affinidi.tdk.iam.client.auth.ApiKeyAuth;
import com.affinidi.tdk.iam.client.apis.PoliciesApi;
import com.affinidi.tdk.iam.client.models.PolicyDto;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;

import static org.junit.jupiter.api.Assertions.assertNotNull;

@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class IamClientIT {

    private String tokenId;
    private PoliciesApi apiInstance;

    @BeforeAll
    void setUp() {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        ApiKeyAuth auth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");

        tokenId = TestUtils.getEnv("TOKEN_ID");
        auth.setApiKeySupplier(TestUtils.createTokenSupplier());

        apiInstance = new PoliciesApi(defaultClient);
    }

    @Test
    void testGetPolicyByToken() throws Exception {
        PolicyDto policy = apiInstance.getPolicies(tokenId, "token");
        assertNotNull(policy, "Expected non-null policy for token");
    }
}
