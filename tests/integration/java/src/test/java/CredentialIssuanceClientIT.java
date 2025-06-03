import helpers.TestUtils;
import com.affinidi.tdk.credential.issuance.client.*;
import com.affinidi.tdk.credential.issuance.client.auth.ApiKeyAuth;
import com.affinidi.tdk.credential.issuance.client.apis.*;
import com.affinidi.tdk.credential.issuance.client.models.*;

import org.junit.jupiter.api.*;

import java.util.HashMap;
import java.util.Map;

import static org.junit.jupiter.api.Assertions.*;

@TestInstance(TestInstance.Lifecycle.PER_CLASS)
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class CredentialIssuanceClientIT {

    private String projectId;
    private String configurationId;
    private String issuanceId;

    private ConfigurationApi configurationApi;
    private IssuanceApi issuanceApi;
    private OfferApi offerApi;
    private CredentialsApi credentialsApi;

    @BeforeAll
    void setUp() {
        projectId = TestUtils.getEnv("PROJECT_ID");

        ApiClient client = Configuration.getDefaultApiClient();
        ApiKeyAuth auth = (ApiKeyAuth) client.getAuthentication("ProjectTokenAuth");
        auth.setApiKeySupplier(TestUtils.createTokenSupplier());

        configurationApi = new ConfigurationApi(client);
        issuanceApi = new IssuanceApi(client);
        offerApi = new OfferApi(client);
        credentialsApi = new CredentialsApi(client);
    }

    @Test
    @Order(1)
    void shouldListIssuanceConfigurations() throws Exception {
        IssuanceConfigListResponse response = configurationApi.getIssuanceConfigList();

        assertNotNull(response);
        assertFalse(response.getConfigurations().isEmpty());

        configurationId = response.getConfigurations().get(0).getId();
    }

    @Test
    @Order(2)
    void shouldGetIssuanceConfigurationById() throws Exception {
        assertNotNull(configurationId);
        IssuanceConfigDto config = configurationApi.getIssuanceConfigById(configurationId);

        assertNotNull(config.getId());
        assertNotNull(config.getIssuerWalletId());
        assertNotNull(config.getCredentialSupported());
    }

    @Test
    @Order(3)
    void shouldStartIssuance() throws Exception {
        StartIssuanceInput input = new StartIssuanceInput();
        input.setClaimMode(StartIssuanceInput.ClaimModeEnum.TX_CODE);

        StartIssuanceInputDataInner data = new StartIssuanceInputDataInner();
        data.setCredentialTypeId("TSimpleBioV1R0");

        Map<String, Object> credentialData = new HashMap<>();
        credentialData.put("firstName", "John");
        credentialData.put("lastName", "Doe");
        data.setCredentialData(credentialData);

        input.addDataItem(data);

        StartIssuanceResponse response = issuanceApi.startIssuance(projectId, input);

        assertNotNull(response);
        issuanceId = response.getIssuanceId();
        assertNotNull(issuanceId);
    }

    @Test
    @Order(4)
    void shouldListProjectIssuances() throws Exception {
        ListIssuanceResponse response = issuanceApi.listIssuance(projectId);

        assertNotNull(response);
        assertFalse(response.getIssuances().isEmpty());
    }

    @Test
    @Order(5)
    void shouldGetCredentialOffer() throws Exception {
        assertNotNull(issuanceId);

        CredentialOfferResponse offer = offerApi.getCredentialOffer(projectId, issuanceId);

        assertNotNull(offer);
        assertNotNull(offer.getCredentialIssuer());
    }

    @Test
    @Order(6)
    void shouldFailToGetClaimedCredentialForUnclaimedIssuance() throws Exception {
        assertNotNull(issuanceId);
        try {
            credentialsApi.getIssuanceIdClaimedCredential(projectId, configurationId, issuanceId);
            fail("Expected ApiException for unclaimed credential");
        } catch (ApiException e) {
            assertEquals(404, e.getCode());
            assertTrue(e.getMessage().contains("No claimed credential found"));
        }
    }
}
