import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.BeforeEach;

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
import com.affinidi.tdk.credential.issuance.client.apis.IssuanceApi;
import com.affinidi.tdk.credential.issuance.client.models.ListIssuanceResponse;

import io.github.cdimascio.dotenv.Dotenv;
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

  @Test
  void testIssuanceClient() throws Exception {
    com.affinidi.tdk.credential.issuance.client.ApiClient defaultClient = com.affinidi.tdk.credential.issuance.client.Configuration.getDefaultApiClient();
    com.affinidi.tdk.credential.issuance.client.auth.ApiKeyAuth ProjectTokenAuth = (com.affinidi.tdk.credential.issuance.client.auth.ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");

    ProjectTokenAuth.setApiKeySupplier(tokenSupplier); // Set projectScopedTokenHook

    IssuanceApi apiInstance = new IssuanceApi(defaultClient);
    ListIssuanceResponse response = apiInstance.listIssuance(projectId);

    assertNotNull(response);
  }
}
