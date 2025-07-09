import helpers.AuthUtils;
import helpers.Env;
import helpers.TestUtils;

import com.affinidi.tdk.credential.issuance.client.*;
import com.affinidi.tdk.credential.issuance.client.auth.ApiKeyAuth;
import com.affinidi.tdk.credential.issuance.client.apis.*;
import com.affinidi.tdk.credential.issuance.client.models.*;

import helpers.WalletsTestHelper;
import com.affinidi.tdk.wallets.client.models.WalletDto;
import com.affinidi.tdk.wallets.client.models.CreateWalletInput;

import com.affinidi.tdk.common.EnvironmentUtil;

import org.junit.jupiter.api.*;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.Map;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.DeserializationFeature;

import static org.junit.jupiter.api.Assertions.*;

/**
 * Integration tests for Credential Issuance Client.
 * NOTE: due to limit of 1 config per project, CRUD is not covered.
 * Covers end-to-end flow: issuance → offer → failure on unclaimed credential retrieval.
 */
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class CredentialIssuanceClientIT {
    private static final ObjectMapper MAPPER = new ObjectMapper()
        .configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);

    private String projectId;
    private String configurationId;
    private String issuanceId;

    private ConfigurationApi configurationApi;
    private IssuanceApi issuanceApi;
    private OfferApi offerApi;
    private CredentialsApi credentialsApi;

    @BeforeAll
    void setUp() {
        projectId = Env.get("PROJECT_ID");

        ApiClient client = Configuration.getDefaultApiClient();

        if (!Env.isProd()) {
            String apiGatewayUrl = EnvironmentUtil.getApiGatewayUrlForEnvironment(Env.getEnvName());
            String basePath = TestUtils.replaceBaseDomain(client.getBasePath(), apiGatewayUrl);
            client.setBasePath(basePath);
        }

        ApiKeyAuth auth = (ApiKeyAuth) client.getAuthentication("ProjectTokenAuth");
        auth.setApiKeySupplier(AuthUtils.createTokenSupplier());

        configurationApi = new ConfigurationApi(client);
        issuanceApi = new IssuanceApi(client);
        offerApi = new OfferApi(client);
        credentialsApi = new CredentialsApi(client);
    }

    @Test
    @Order(1)
    void shouldListIssuanceConfigurations() throws Exception {
        IssuanceConfigListResponse response = configurationApi.getIssuanceConfigList();
        assertNotNull(response, "Issuance config list response should not be null");

        if (response.getConfigurations().isEmpty()) {
            String rawConfig = Env.get("CREDENTIAL_ISSUANCE_CONFIGURATION");

            WalletDto created = WalletsTestHelper.createWallet(CreateWalletInput.DidMethodEnum.KEY);
            String walletId = created.getId();
            assertNotNull(walletId, "Wallet ID should not be null");

            CreateIssuanceConfigInput input =
                MAPPER.readValue(new JSONObject(rawConfig).toString(), CreateIssuanceConfigInput.class);
            input.setIssuerWalletId(walletId);

            IssuanceConfigDto issuanceConfig = configurationApi.createIssuanceConfig(input);
            configurationId = issuanceConfig.getId();

            assertNotNull(configurationId, "Configuration ID should not be null");
        } else {
            assertFalse(response.getConfigurations().isEmpty(), "Issuance configurations should not be empty");
            configurationId = response.getConfigurations().get(0).getId();
        }
    }

    @Test
    void shouldGetIssuanceConfigurationById() throws Exception {
        assertNotNull(configurationId, "Configuration ID should defined");

        IssuanceConfigDto config = configurationApi.getIssuanceConfigById(configurationId);

        assertNotNull(config.getId(), "Config ID should not be null");
        assertNotNull(config.getIssuerWalletId(), "Issuer Wallet ID should not be null");
        assertNotNull(config.getCredentialSupported(), "Credential types should not be null");
    }

    @Test
    @Order(2)
    void shouldStartIssuance() throws Exception {
        StartIssuanceInput input = new StartIssuanceInput()
            .claimMode(StartIssuanceInput.ClaimModeEnum.TX_CODE);

        StartIssuanceInputDataInner data = new StartIssuanceInputDataInner()
            .credentialTypeId("TSimpleBioV1R0");

        Map<String, Object> credentialData = new HashMap<>();
        credentialData.put("firstName", "John");
        credentialData.put("lastName", "Doe");
        data.setCredentialData(credentialData);

        input.addDataItem(data);

        StartIssuanceResponse response = issuanceApi.startIssuance(projectId, input);

        assertNotNull(response, "Issuance response should not be null");
        issuanceId = response.getIssuanceId();
        assertNotNull(issuanceId, "Issuance ID should not be null");
    }

    @Test
    @Order(3)
    void shouldListProjectIssuances() throws Exception {
        ListIssuanceResponse response = issuanceApi.listIssuance(projectId);

        assertNotNull(response, "Project issuance list response should not be null");
        assertFalse(response.getIssuances().isEmpty(), "There should be at least one issuance");
    }

    @Test
    @Order(4)
    void shouldGetCredentialOffer() throws Exception {
        assertNotNull(issuanceId, "Issuance ID should be available from startIssuance test");

        CredentialOfferResponse offer = offerApi.getCredentialOffer(projectId, issuanceId);

        assertNotNull(offer, "Credential offer should not be null");
        assertNotNull(offer.getCredentialIssuer(), "Credential issuer should be present in offer");
    }

    @Test
    @Order(5)
    void shouldFailToGetClaimedCredentialForUnclaimedIssuance() throws Exception {
        assertNotNull(issuanceId, "Issuance ID should not be null");

        ApiException thrown = assertThrows(
            ApiException.class,
            () -> credentialsApi.getIssuanceIdClaimedCredential(projectId, configurationId, issuanceId),
            "Expected ApiException due to unclaimed issuance"
        );

        assertEquals(404, thrown.getCode(), "Expected HTTP 404 for unclaimed credential");
        assertTrue(thrown.getMessage().contains("No claimed credential found"),
            "Expected message to indicate no claimed credential");
    }
}
