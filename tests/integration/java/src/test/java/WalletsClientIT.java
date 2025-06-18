import helpers.WalletTestHelper;
import helpers.CredentialVerificationTestHelper;
import helpers.AuthUtils;
import helpers.Env;

import com.affinidi.tdk.wallets.client.ApiClient;
import com.affinidi.tdk.wallets.client.Configuration;
import com.affinidi.tdk.wallets.client.auth.ApiKeyAuth;
import com.affinidi.tdk.wallets.client.apis.WalletApi;
import com.affinidi.tdk.wallets.client.apis.RevocationApi;
import com.affinidi.tdk.wallets.client.models.*;

import org.junit.jupiter.api.*;

import java.time.Instant;
import java.util.*;

import static org.junit.jupiter.api.Assertions.*;

/**
 * Integration tests for Wallets Client.
 * Covers configuration CRUD for wallet operations, sign credentials, sign JWT
 */
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class WalletsClientIT {

    private WalletApi walletApi;
    private RevocationApi revocationApi;

    private String walletId;
    private String walletIdDidWeb;
    private String walletDid;
    private Map<String, Object> signedCredential;

    @BeforeAll
    void setUp() throws Exception {
        ApiClient client = Configuration.getDefaultApiClient();
        ApiKeyAuth auth = (ApiKeyAuth) client.getAuthentication("ProjectTokenAuth");
        auth.setApiKeySupplier(AuthUtils.createTokenSupplier());

        walletApi = new WalletApi(client);
        revocationApi = new RevocationApi(client);

        WalletDto created = WalletTestHelper.createWallet(CreateWalletInput.DidMethodEnum.KEY);
        assertNotNull(created, "Expected did:key wallet to be created");

        walletId = created.getId();
        walletDid = created.getDid();
    }

    @AfterAll
    void tearDown() throws Exception {
        if (walletId != null) walletApi.deleteWallet(walletId);
        if (walletIdDidWeb != null) walletApi.deleteWallet(walletIdDidWeb);
    }

    @Test
    @DisplayName("Create did:web wallet")
    void shouldCreateDidWebWallet() throws Exception {
        WalletDto created = WalletTestHelper.createWallet(CreateWalletInput.DidMethodEnum.WEB);
        assertNotNull(created, "Expected WEB-based wallet to be created");

        walletIdDidWeb = created.getId();
        assertNotNull(walletIdDidWeb, "Expected non-null WEB wallet ID");
    }

    @Test
    @Order(1)
    @DisplayName("Sign and validate a verifiable credential")
    void shouldSignAndValidateCredential() throws Exception {
        signedCredential = WalletTestHelper.signCredential(walletDid, walletId, Instant.now().plusSeconds(600), true);
        assertNotNull(signedCredential, "Signed credential should not be null");

        boolean isValid = CredentialVerificationTestHelper.isCredentialValid(signedCredential);
        assertTrue(isValid, "Signed credential should be valid");
    }

    @Test
    @Order(2)
    @DisplayName("Fetch revocation list credential")
    void shouldGetRevocationListCredential() throws Exception {
        String revocationListCredential = WalletTestHelper.getRevocationListCredential(signedCredential);
        assertNotNull(revocationListCredential, "Expected non-null revocation list credential");

        String statusId = WalletTestHelper.extractRevocationStatusId(revocationListCredential);
        assertNotNull(statusId, "Expected non-null status ID");

        GetRevocationListCredentialResultDto result = revocationApi.getRevocationCredentialStatus(
            Env.get("PROJECT_ID"), walletId, statusId
        );
        assertNotNull(result.getRevocationListCredential(), "Revocation list credential must not be null");
    }

    @Test
    @Order(3)
    @DisplayName("Revoke credential and check validity")
    void shouldRevokeCredentialAndFailValidation() throws Exception {
        String credentialId = (String) signedCredential.get("id");

        RevokeCredentialInput input = new RevokeCredentialInput()
            .revocationReason("Test reason")
            .credentialId(credentialId);

        revocationApi.revokeCredential(walletId, input);

        boolean isStillValid = CredentialVerificationTestHelper.isCredentialValid(signedCredential);
        assertFalse(isStillValid, "Credential should be invalid after revocation");
    }

    @Test
    @DisplayName("Sign expired credential and expect validation failure")
    void shouldFailValidationForExpiredCredential() throws Exception {
        Map<String, Object> expiredCredential = WalletTestHelper.signCredential(walletDid, walletId, Instant.now(), false);
        assertNotNull(expiredCredential, "Expected signed credential even if expired");

        boolean isValid = CredentialVerificationTestHelper.isCredentialValid(expiredCredential);
        assertFalse(isValid, "Expired credential should be invalid");
    }

    @Test
    @DisplayName("Sign a JWT")
    void shouldSignJwtToken() throws Exception {
        Map<String, Object> header = Map.of(
            "alg", "HS256",
            "typ", "JWT"
        );

        Map<String, Object> payload = Map.of(
            "sub", UUID.randomUUID().toString(),
            "iat", Instant.now().getEpochSecond(),
            "exp", Instant.now().plusSeconds(300).getEpochSecond()
        );

        SignJwtToken jwtRequest = new SignJwtToken()
            .header(header)
            .payload(payload);

        SignJwtTokenOK response = walletApi.signJwtToken(walletId, jwtRequest);
        assertNotNull(response.getSignedJwt(), "Signed JWT should not be null");
    }

    @Test
    @DisplayName("Fetch wallet by ID")
    void shouldFetchWallet() throws Exception {
        WalletDto wallet = walletApi.getWallet(walletId);
        assertNotNull(wallet.getId(), "Wallet ID should not be null");
    }

    @Test
    @DisplayName("List all wallets")
    void shouldListWallets() throws Exception {
        WalletsListDto result = walletApi.listWallets(null);
        List<WalletDto> wallets = result != null ? result.getWallets() : null;

        assertNotNull(wallets, "Wallet list should not be null");
        assertFalse(wallets.isEmpty(), "Expected at least one wallet to be listed");
    }

    @Test
    @DisplayName("Update wallet")
    void shouldUpdateWallet() throws Exception {
        String updatedName = "Updated Wallet Name";
        UpdateWalletInput input = new UpdateWalletInput().name(updatedName);

        WalletDto updated = walletApi.updateWallet(walletId, input);
        assertEquals(updatedName, updated.getName(), "Expected updated wallet name to match");
    }
}
