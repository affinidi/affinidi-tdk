import helpers.TestUtils;
import com.affinidi.tdk.login.configuration.client.ApiClient;
import com.affinidi.tdk.login.configuration.client.Configuration;
import com.affinidi.tdk.login.configuration.client.auth.ApiKeyAuth;
import com.affinidi.tdk.login.configuration.client.apis.ConfigurationApi;
import com.affinidi.tdk.login.configuration.client.models.ListLoginConfigurationOutput;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;

import static org.junit.jupiter.api.Assertions.assertTrue;

@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class LoginConfigurationClientIT {

    private ConfigurationApi apiInstance;

    @BeforeAll
    void setUp() {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        ApiKeyAuth auth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        auth.setApiKeySupplier(TestUtils.createTokenSupplier());

        apiInstance = new ConfigurationApi(defaultClient);
    }

    @Test
    void testLoginConfigurationClient() throws Exception {
        ListLoginConfigurationOutput response = apiInstance.listLoginConfigurations(0, "");

        assertTrue(response.getConfigurations().size() >= 0, "Expected non-null configurations list");
    }
}
