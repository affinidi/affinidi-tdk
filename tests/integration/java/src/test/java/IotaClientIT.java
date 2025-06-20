import com.affinidi.tdk.iota.client.*;
import com.affinidi.tdk.iota.client.apis.*;
import com.affinidi.tdk.iota.client.auth.ApiKeyAuth;
import com.affinidi.tdk.iota.client.models.*;

import com.affinidi.tdk.wallets.client.models.CreateWalletInput;
import com.affinidi.tdk.wallets.client.models.WalletDto;

import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;

import helpers.AuthUtils;
import helpers.Env;
import helpers.JwtUtils;
import helpers.WalletTestHelper;

import org.json.JSONObject;
import org.junit.jupiter.api.*;

import java.util.List;
import java.util.Map;
import java.util.UUID;

import static org.junit.jupiter.api.Assertions.*;

/**
 * Integration tests for the IOTA client.
 * Covers sharing data via redirect flow,
 * and CRUD operations for configuration, query.
 */
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class IotaClientIT {

    private static final ObjectMapper MAPPER = new ObjectMapper()
        .configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);

    private ConfigurationsApi configurationsApi;
    private PexQueryApi pexQueryApi;
    private CallbackApi callbackApi;
    private IotaApi iotaApi;

    private IotaConfigurationDto iotaConfig;
    private String configurationId;
    private String iotaRedirectUri;
    private String walletAri;
    private String walletId;
    private String queryId;

    @BeforeAll
    void setUp() throws Exception {
        ApiClient client = Configuration.getDefaultApiClient();
        ApiKeyAuth auth = (ApiKeyAuth) client.getAuthentication("ProjectTokenAuth");
        auth.setApiKeySupplier(AuthUtils.createTokenSupplier());

        configurationsApi = new ConfigurationsApi(client);
        pexQueryApi = new PexQueryApi(client);
        callbackApi = new CallbackApi();
        iotaApi = new IotaApi(client);

        WalletDto wallet = WalletTestHelper.createWallet(CreateWalletInput.DidMethodEnum.KEY);
        assertNotNull(wallet, "Wallet should be created");

        walletId = wallet.getId();
        walletAri = wallet.getAri();
    }

    @AfterAll
    void tearDown() throws Exception {
        if (queryId != null) {
            pexQueryApi.deletePexQueryById(configurationId, queryId);
        }
        if (configurationId != null) {
            configurationsApi.deleteIotaConfigurationById(configurationId);
        }
        WalletTestHelper.deleteWallet(walletId);
    }

    @Test
    @Order(1)
    void shouldCreateIotaConfiguration() throws Exception {
        String rawConfig = Env.get("IOTA_CONFIGURATION");

        CreateIotaConfigurationInput input =
            MAPPER.readValue(new JSONObject(rawConfig).toString(), CreateIotaConfigurationInput.class);
        input.setWalletAri(walletAri);

        iotaConfig = configurationsApi.createIotaConfiguration(input);
        configurationId = iotaConfig.getConfigurationId();
        assertNotNull(configurationId, "Configuration ID should not be null");

        List<String> uris = iotaConfig.getRedirectUris();
        assertNotNull(uris, "Redirect URIs should not be null");
        assertFalse(uris.isEmpty(), "Redirect URIs list should not be empty");

        iotaRedirectUri = uris.get(0);
    }

    @Test
    void shouldListIotaConfigurations() throws Exception {
        ListConfigurationOK response = configurationsApi.listIotaConfigurations();
        assertTrue(response.getConfigurations().size() > 0, "IOTA configurations list should not be empty");
    }

    @Test
    void shouldUpdateIotaConfiguration() throws Exception {
        UpdateConfigurationByIdInput updateInput = MAPPER.convertValue(iotaConfig, UpdateConfigurationByIdInput.class);
        String updatedName = "UpdatedName";
        updateInput.setName(updatedName);

        IotaConfigurationDto updated = configurationsApi.updateIotaConfigurationById(configurationId, updateInput);
        assertEquals(updatedName, updated.getName(), "Configuration name should be updated");
    }

    @Test
    void shouldGetIotaConfiguration() throws Exception {
        IotaConfigurationDto result = configurationsApi.getIotaConfigurationById(configurationId);
        assertEquals(IotaConfigurationDto.ModeEnum.REDIRECT, result.getMode(), "Expected mode to be REDIRECT");
    }

    @Test
    @Order(2)
    void shouldCreatePexQuery() throws Exception {
        String vpDefinition = Env.get("IOTA_PRESENTATION_DEFINITION");

        CreatePexQueryInput input = new CreatePexQueryInput()
            .name("TestQuery")
            .vpDefinition(vpDefinition);

        PexQueryDto result = pexQueryApi.createPexQuery(configurationId, input);
        queryId = result.getQueryId();

        assertNotNull(queryId, "Query ID should not be null");
    }

    @Test
    void shouldListPexQueries() throws Exception {
        ListPexQueriesOK response = pexQueryApi.listPexQueries(configurationId, null, null);
        assertTrue(response.getPexQueries().size() > 0, "Pex query list should not be empty");
    }

    @Test
    void shouldUpdatePexQuery() throws Exception {
        String updatedDescription = "UpdatedDescription";
        UpdatePexQueryInput input = new UpdatePexQueryInput().description(updatedDescription);

        PexQueryDto updated = pexQueryApi.updatePexQueryById(configurationId, queryId, input);
        assertEquals(updatedDescription, updated.getDescription(), "Description should be updated");
    }

    @Test
    void shouldGetPexQuery() throws Exception {
        PexQueryDto result = pexQueryApi.getPexQueryById(configurationId, queryId);
        assertNotNull(result.getQueryId(), "Expected valid query ID");
    }

    @Test
    void shouldExecuteIotaRedirectFlow() throws Exception {
        InitiateDataSharingRequestInput dataSharingRequest = new InitiateDataSharingRequestInput()
            .mode(InitiateDataSharingRequestInput.ModeEnum.REDIRECT)
            .nonce(UUID.randomUUID().toString().substring(0, 10))
            .queryId(queryId)
            .redirectUri(iotaRedirectUri)
            .configurationId(configurationId)
            .correlationId(UUID.randomUUID().toString());

        InitiateDataSharingRequestOK initiationResult = iotaApi.initiateDataSharingRequest(dataSharingRequest);
        InitiateDataSharingRequestOKData data = initiationResult.getData();

        assertNotNull(data, "Initiate result data should not be null");

        String correlationId = data.getCorrelationId();
        String transactionId = data.getTransactionId();
        String jwt = data.getJwt();

        assertAll("JWT response fields",
            () -> assertNotNull(correlationId, "Correlation ID should not be null"),
            () -> assertNotNull(transactionId, "Transaction ID should not be null"),
            () -> assertNotNull(jwt, "JWT should not be null")
        );

        Map<String, Object> payload = JwtUtils.decodePayload(jwt);
        String state = (String) payload.get("state");

        // Simulate VP Callback
        CallbackInput callbackInput = new CallbackInput()
            .state(state)
            .presentationSubmission(Env.get("IOTA_PRESENTATION_SUBMISSION"))
            .vpToken(Env.get("VERIFIABLE_PRESENTATION"));

        CallbackResponseOK callbackResponse = callbackApi.iotOIDC4VPCallback(callbackInput);
        assertNotNull(callbackResponse.getResponseCode(), "Response code should not be null");

        // Fetch VP response
        FetchIOTAVPResponseInput fetchInput = new FetchIOTAVPResponseInput()
            .configurationId(configurationId)
            .correlationId(correlationId)
            .transactionId(transactionId)
            .responseCode(callbackResponse.getResponseCode());

        FetchIOTAVPResponseOK vpResponse = iotaApi.fetchIotaVpResponse(fetchInput);
        assertNotNull(vpResponse, "Fetch VP response should return data");
    }
}
