import helpers.TestUtils;
import com.affinidi.tdk.iota.client.ApiClient;
import com.affinidi.tdk.iota.client.Configuration;
import com.affinidi.tdk.iota.client.auth.ApiKeyAuth;
import com.affinidi.tdk.iota.client.apis.ConfigurationsApi;
import com.affinidi.tdk.iota.client.models.ListConfigurationOK;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;

import static org.junit.jupiter.api.Assertions.assertTrue;

@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class IotaClientIT {

    private ConfigurationsApi apiInstance;

    @BeforeAll
    void setUp() {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        ApiKeyAuth auth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        auth.setApiKeySupplier(TestUtils.createTokenSupplier());

        apiInstance = new ConfigurationsApi(defaultClient);
    }

    @Test
    void testIotaConfigurationsClient() throws Exception {
        ListConfigurationOK response = apiInstance.listIotaConfigurations();

        assertTrue(response.getConfigurations().size() > 0, "Expected IOTA configurations to exist");
    }
}
