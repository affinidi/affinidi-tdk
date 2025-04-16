import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;
import org.junit.jupiter.api.TestMethodOrder;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Order;

import com.affinidi.tdk.authProvider.AuthProvider;
import com.affinidi.tdk.authProvider.exception.PSTGenerationException;
import com.affinidi.tdk.wallets.client.apis.WalletApi;
import com.affinidi.tdk.wallets.client.models.WalletsListDto;
import com.affinidi.tdk.iam.client.apis.PoliciesApi;
import com.affinidi.tdk.iam.client.models.PolicyDto;
import com.affinidi.tdk.login.configuration.client.apis.ConfigurationApi;
import com.affinidi.tdk.login.configuration.client.models.ListLoginConfigurationOutput;
import com.affinidi.tdk.iota.client.apis.ConfigurationsApi;
import com.affinidi.tdk.iota.client.models.ListConfigurationOK;
import com.affinidi.tdk.credential.issuance.client.apis.CredentialsApi;
import com.affinidi.tdk.credential.issuance.client.apis.IssuanceApi;
import com.affinidi.tdk.credential.issuance.client.apis.OfferApi;
import com.affinidi.tdk.credential.issuance.client.models.CredentialOfferResponse;
import com.affinidi.tdk.credential.issuance.client.models.IssuanceConfigDto;
import com.affinidi.tdk.credential.issuance.client.models.IssuanceConfigListResponse;
import com.affinidi.tdk.credential.issuance.client.models.ListIssuanceResponse;
import com.affinidi.tdk.credential.issuance.client.models.StartIssuanceInput;
import com.affinidi.tdk.credential.issuance.client.models.StartIssuanceInput.ClaimModeEnum;
import com.affinidi.tdk.credential.issuance.client.models.StartIssuanceInputDataInner;
import com.affinidi.tdk.credential.issuance.client.models.StartIssuanceResponse;

import io.github.cdimascio.dotenv.Dotenv;

import java.util.HashMap;
import java.util.Map;
import java.util.function.Supplier;

import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

/**
* NOTE: If your PAT has unencrypted private key, PASSPHRASE must be set (as empty string)
*/
public class TdkIntegrationTestIT {
  private Supplier<String> tokenSupplier; // projectScopedTokenHook
  private String tokenId; // PAT ID
  private String projectId; // project ID

  // TODO: replace with BeforeAll (change related methods to static)
  @BeforeEach
  void setUp() {
    tokenSupplier = projectScopedTokenSupplier();
  }


  private AuthProvider createAuthProvider() {
    try {
      Dotenv dotenv = Dotenv.configure()
        .directory("../../")
        .filename(".env")
        .load();

      tokenId = dotenv.get("TOKEN_ID");
      projectId = dotenv.get("PROJECT_ID");

      return new AuthProvider.Configurations()
        .keyId(dotenv.get("KEY_ID"))
        .privateKey(dotenv.get("PRIVATE_KEY"))
        .projectId(dotenv.get("PROJECT_ID"))
        .passphrase(dotenv.get("PASSPHRASE"))
        .tokenId(tokenId)
        .build();
      } catch (Exception e) {
        throw new RuntimeException("Failed to init AuthProvider", e);
      }
  };

  private Supplier<String> projectScopedTokenSupplier() {
    AuthProvider authProvider = createAuthProvider();

    return () -> {
      try {
        return authProvider.fetchProjectScopedToken();
      } catch (Exception e) {
        throw new RuntimeException("Failed to fetch project scoped token", e);
      }
    };
  }

  @Test
  void testWalletClient() throws Exception {
    com.affinidi.tdk.wallets.client.ApiClient defaultClient = com.affinidi.tdk.wallets.client.Configuration.getDefaultApiClient();
    com.affinidi.tdk.wallets.client.auth.ApiKeyAuth ProjectTokenAuth = (com.affinidi.tdk.wallets.client.auth.ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");

    ProjectTokenAuth.setApiKeySupplier(tokenSupplier); // Set projectScopedTokenHook

    WalletApi apiInstance = new WalletApi(defaultClient);
    WalletsListDto response = apiInstance.listWallets(null); // didType = null

    // Expecting number of wallets > 0
    assertTrue(response.getWallets().size() > 0);
  }

  @Test
  void testIamClient() throws Exception {
    com.affinidi.tdk.iam.client.ApiClient defaultClient = com.affinidi.tdk.iam.client.Configuration.getDefaultApiClient();
    com.affinidi.tdk.iam.client.auth.ApiKeyAuth ProjectTokenAuth = (com.affinidi.tdk.iam.client.auth.ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");

    ProjectTokenAuth.setApiKeySupplier(tokenSupplier); // Set projectScopedTokenHook

    PoliciesApi apiInstance = new PoliciesApi(defaultClient);
    PolicyDto response = apiInstance.getPolicies(tokenId, "token");

    // Expecting policy to exist for PAT
    assertNotNull(response);
  }

  @Test
  void testLoginConfigurationClient() throws Exception {
    com.affinidi.tdk.login.configuration.client.ApiClient defaultClient = com.affinidi.tdk.login.configuration.client.Configuration.getDefaultApiClient();
    com.affinidi.tdk.login.configuration.client.auth.ApiKeyAuth ProjectTokenAuth = (com.affinidi.tdk.login.configuration.client.auth.ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");

    ProjectTokenAuth.setApiKeySupplier(tokenSupplier); // Set projectScopedTokenHook

    ConfigurationApi apiInstance = new ConfigurationApi(defaultClient);
    // NOTE: Values for optional parameter (Integer) limit and (String) exclusiveStartKey
    //       still have to be passed
    ListLoginConfigurationOutput response = apiInstance.listLoginConfigurations(0, "");

    // Expecting login configurations to exist
    assertTrue(response.getConfigurations().size() > 0);
  }

  @Test
  void testIotaConfigurationsClient() throws Exception {
    com.affinidi.tdk.iota.client.ApiClient defaultClient = com.affinidi.tdk.iota.client.Configuration.getDefaultApiClient();
    com.affinidi.tdk.iota.client.auth.ApiKeyAuth ProjectTokenAuth = (com.affinidi.tdk.iota.client.auth.ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");

    ProjectTokenAuth.setApiKeySupplier(tokenSupplier); // Set projectScopedTokenHook

    ConfigurationsApi apiInstance = new ConfigurationsApi(defaultClient);
    ListConfigurationOK response = apiInstance.listIotaConfigurations();

    // Expecting Iota configurations to exist
    assertTrue(response.getConfigurations().size() > 0);
  }

  @Nested
  @TestInstance(TestInstance.Lifecycle.PER_CLASS)
  @TestMethodOrder(MethodOrderer.OrderAnnotation.class)
  class CredentialIssuanceTests {

    private String configurationId;
    private String issuanceId;

    @Test
    @Order(1)
    void listIssuanceConfiguration() throws Exception {
      com.affinidi.tdk.credential.issuance.client.ApiClient defaultClient = com.affinidi.tdk.credential.issuance.client.Configuration
          .getDefaultApiClient();
      com.affinidi.tdk.credential.issuance.client.auth.ApiKeyAuth ProjectTokenAuth = (com.affinidi.tdk.credential.issuance.client.auth.ApiKeyAuth) defaultClient
          .getAuthentication("ProjectTokenAuth");
      ProjectTokenAuth.setApiKeySupplier(tokenSupplier);

      com.affinidi.tdk.credential.issuance.client.apis.ConfigurationApi apiInstance = new com.affinidi.tdk.credential.issuance.client.apis.ConfigurationApi(
          defaultClient);
      IssuanceConfigListResponse response = apiInstance.getIssuanceConfigList();
      assertNotNull(response);
      assertNotNull(response.getConfigurations());
      assertTrue(response.getConfigurations().size() > 0);
      configurationId = response.getConfigurations().get(0).getId();

    }

    @Test
    @Order(2)
    void getIssuanceConfigurationById() throws Exception {
      com.affinidi.tdk.credential.issuance.client.ApiClient defaultClient = com.affinidi.tdk.credential.issuance.client.Configuration
          .getDefaultApiClient();
      com.affinidi.tdk.credential.issuance.client.auth.ApiKeyAuth ProjectTokenAuth = (com.affinidi.tdk.credential.issuance.client.auth.ApiKeyAuth) defaultClient
          .getAuthentication("ProjectTokenAuth");
      ProjectTokenAuth.setApiKeySupplier(tokenSupplier);

      com.affinidi.tdk.credential.issuance.client.apis.ConfigurationApi apiInstance = new com.affinidi.tdk.credential.issuance.client.apis.ConfigurationApi(
          defaultClient);
      IssuanceConfigDto response = apiInstance.getIssuanceConfigById(configurationId);
      assertNotNull(response);
      assertNotNull(response.getId());
      assertNotNull(response.getIssuerWalletId());
      assertNotNull(response.getCredentialSupported());
    }

    @Test
    @Order(3)
    void startIssuance() throws Exception {
      com.affinidi.tdk.credential.issuance.client.ApiClient defaultClient = com.affinidi.tdk.credential.issuance.client.Configuration
          .getDefaultApiClient();
      com.affinidi.tdk.credential.issuance.client.auth.ApiKeyAuth ProjectTokenAuth = (com.affinidi.tdk.credential.issuance.client.auth.ApiKeyAuth) defaultClient
          .getAuthentication("ProjectTokenAuth");

      ProjectTokenAuth.setApiKeySupplier(tokenSupplier);
      IssuanceApi apiInstance = new IssuanceApi(defaultClient);

      StartIssuanceInput startIssuanceInput = new StartIssuanceInput();
      startIssuanceInput.setClaimMode(ClaimModeEnum.TX_CODE);
      StartIssuanceInputDataInner dataItem = new StartIssuanceInputDataInner();
      dataItem.setCredentialTypeId("TSimpleBioV1R0");
      Map<String, Object> credentialData = new HashMap<>();
      credentialData.put("firstName", "John");
      credentialData.put("lastName", "Doe");
      dataItem.setCredentialData(credentialData);
      startIssuanceInput.addDataItem(dataItem);
      startIssuanceInput.addDataItem(dataItem);

      StartIssuanceResponse response = apiInstance.startIssuance(projectId, startIssuanceInput);
      assertNotNull(response);
      issuanceId = response.getIssuanceId();
      assertNotNull(issuanceId);
    }

    @Test
    @Order(4)
    void listProjectIssuance() throws Exception {
      com.affinidi.tdk.credential.issuance.client.ApiClient defaultClient = com.affinidi.tdk.credential.issuance.client.Configuration
          .getDefaultApiClient();
      com.affinidi.tdk.credential.issuance.client.auth.ApiKeyAuth ProjectTokenAuth = (com.affinidi.tdk.credential.issuance.client.auth.ApiKeyAuth) defaultClient
          .getAuthentication("ProjectTokenAuth");

      ProjectTokenAuth.setApiKeySupplier(tokenSupplier);
      IssuanceApi apiInstance = new IssuanceApi(defaultClient);
      ListIssuanceResponse response = apiInstance.listIssuance(projectId);
      assertNotNull(response);
      assertNotNull(response.getIssuances());
      assertTrue(response.getIssuances().size() > 0);
    }

    @Test
    @Order(5)
    void getCredentialOffer() throws Exception {
      assertNotNull(issuanceId, "Issuance ID is null");
      com.affinidi.tdk.credential.issuance.client.ApiClient defaultClient = com.affinidi.tdk.credential.issuance.client.Configuration
          .getDefaultApiClient();
      com.affinidi.tdk.credential.issuance.client.auth.ApiKeyAuth ProjectTokenAuth = (com.affinidi.tdk.credential.issuance.client.auth.ApiKeyAuth) defaultClient
          .getAuthentication("ProjectTokenAuth");

      ProjectTokenAuth.setApiKeySupplier(tokenSupplier);
      OfferApi apiInstance = new OfferApi(defaultClient);
      CredentialOfferResponse response = apiInstance.getCredentialOffer(projectId, issuanceId);
      assertNotNull(response);
      assertNotNull(response.getCredentialIssuer());
    }

    @Test
    @Order(5)
    void getIssuanceIdClaimedCredential() throws Exception {
      com.affinidi.tdk.credential.issuance.client.ApiClient defaultClient = com.affinidi.tdk.credential.issuance.client.Configuration
          .getDefaultApiClient();
      com.affinidi.tdk.credential.issuance.client.auth.ApiKeyAuth ProjectTokenAuth = (com.affinidi.tdk.credential.issuance.client.auth.ApiKeyAuth) defaultClient
          .getAuthentication("ProjectTokenAuth");
      ProjectTokenAuth.setApiKeySupplier(tokenSupplier);
      CredentialsApi apiInstance = new CredentialsApi(defaultClient);

      // Test should throw exception since credential has not been claimed yet
      try {
        apiInstance.getIssuanceIdClaimedCredential(projectId, configurationId, issuanceId);
      } catch (com.affinidi.tdk.credential.issuance.client.ApiException e) {
        assertTrue(e.getCode() == 404);
        assertTrue(e.getMessage().contains("No claimed credential found for this issuanceId"));
      }
    }
  }
}