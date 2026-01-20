import helpers.AuthUtils;
import helpers.CredentialVerificationTestHelper;
import helpers.Env;
import helpers.TestUtils;
import helpers.WalletsTestHelper;

import com.affinidi.tdk.wallets.client.ApiClient;
import com.affinidi.tdk.wallets.client.Configuration;
import com.affinidi.tdk.wallets.client.auth.ApiKeyAuth;
import com.affinidi.tdk.wallets.client.apis.WalletApi;
import com.affinidi.tdk.wallets.client.apis.RevocationApi;
import com.affinidi.tdk.wallets.client.models.*;

import com.affinidi.tdk.common.EnvironmentUtil;

import org.junit.jupiter.api.*;

import java.time.Instant;
import java.util.*;

import static org.junit.jupiter.api.Assertions.*;

/**
 * Integration tests for Wallets Client.
 * Covers v1 and v2 wallet operations, credential signing (JWT, LDP, SD-JWT),
 * presentation signing, revocation, and credential verification.
 */
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class WalletsClientIT {

    private WalletApi walletApi;
    private RevocationApi revocationApi;

    // V1 wallet properties
    private String walletId;
    private String walletIdDidWeb;
    private String walletDid;
    private Map<String, Object> signedCredential;

    // V2 wallet properties
    private String walletIdV2;
    private String walletIdDidWebV2;
    private String walletDidV2;
    private Map<String, Object> signedCredentialV2;

    @BeforeAll
    void setUp() throws Exception {
        ApiClient client = Configuration.getDefaultApiClient();

        if (!Env.isProd()) {
            String apiGatewayUrl = EnvironmentUtil.getApiGatewayUrlForEnvironment(Env.getEnvName());
            String basePath = TestUtils.replaceBaseDomain(client.getBasePath(), apiGatewayUrl);
            client.setBasePath(basePath);
        }

        ApiKeyAuth auth = (ApiKeyAuth) client.getAuthentication("ProjectTokenAuth");
        auth.setApiKeySupplier(AuthUtils.createTokenSupplier());

        walletApi = new WalletApi(client);
        revocationApi = new RevocationApi(client);

        // Create V1 wallet
        WalletDto created = WalletsTestHelper.createWallet(CreateWalletInput.DidMethodEnum.KEY);
        assertNotNull(created, "Expected did:key wallet to be created");
        walletId = created.getId();
        walletDid = created.getDid();

        // Create V2 wallet
        WalletV2Dto createdV2 = WalletsTestHelper.createWalletV2(CreateWalletV2Input.DidMethodEnum.KEY);
        assertNotNull(createdV2, "Expected v2 did:key wallet to be created");
        walletIdV2 = createdV2.getId();
        walletDidV2 = createdV2.getDid();
    }

    @AfterAll
    void tearDown() throws Exception {
        if (walletId != null) walletApi.deleteWallet(walletId);
        if (walletIdDidWeb != null) walletApi.deleteWallet(walletIdDidWeb);
        if (walletIdV2 != null) walletApi.deleteWallet(walletIdV2);
        if (walletIdDidWebV2 != null) walletApi.deleteWallet(walletIdDidWebV2);
    }

    @Test
    @Order(1)
    @DisplayName("Create did:web wallet")
    void shouldCreateDidWebWallet() throws Exception {
        WalletDto created = WalletsTestHelper.createWallet(CreateWalletInput.DidMethodEnum.WEB);
        assertNotNull(created, "Expected WEB-based wallet to be created");

        walletIdDidWeb = created.getId();
        assertNotNull(walletIdDidWeb, "Expected non-null WEB wallet ID");
    }

    @Test
    @Order(2)
    @DisplayName("Sign and validate a verifiable credential")
    void shouldSignAndValidateCredential() throws Exception {
        signedCredential = WalletsTestHelper.signCredential(walletDid, walletId, Instant.now().plusSeconds(600), true);
        assertNotNull(signedCredential, "Signed credential should not be null");

        boolean isValid = CredentialVerificationTestHelper.isCredentialValid(signedCredential);
        assertTrue(isValid, "Signed credential should be valid");
    }

    @Test
    @Order(3)
    @DisplayName("Fetch revocation list credential")
    void shouldGetRevocationListCredential() throws Exception {
        String revocationListCredential = WalletsTestHelper.getRevocationListCredential(signedCredential);
        assertNotNull(revocationListCredential, "Expected non-null revocation list credential");

        String statusId = WalletsTestHelper.extractRevocationStatusId(revocationListCredential);
        assertNotNull(statusId, "Expected non-null status ID");

        GetRevocationListCredentialResultDto result = revocationApi.getRevocationCredentialStatus(
            Env.get("PROJECT_ID"), walletId, statusId
        );
        assertNotNull(result.getRevocationListCredential(), "Revocation list credential must not be null");
    }

    @Test
    @Order(4)
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
    @Order(5)
    @DisplayName("Sign expired credential and expect validation failure")
    void shouldFailValidationForExpiredCredential() throws Exception {
        Map<String, Object> expiredCredential = WalletsTestHelper.signCredential(walletDid, walletId, Instant.now(), false);
        assertNotNull(expiredCredential, "Expected signed credential even if expired");

        boolean isValid = CredentialVerificationTestHelper.isCredentialValid(expiredCredential);
        assertFalse(isValid, "Expired credential should be invalid");
    }

    @Test
    @Order(6)
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
    @Order(7)
    @DisplayName("Fetch wallet by ID")
    void shouldFetchWallet() throws Exception {
        WalletDto wallet = walletApi.getWallet(walletId);
        assertNotNull(wallet.getId(), "Wallet ID should not be null");
    }

    @Test
    @Order(8)
    @DisplayName("List all wallets")
    void shouldListWallets() throws Exception {
        WalletsListDto result = walletApi.listWallets(null);
        List<WalletDto> wallets = result != null ? result.getWallets() : null;

        assertNotNull(wallets, "Wallet list should not be null");
        assertFalse(wallets.isEmpty(), "Expected at least one wallet to be listed");
    }

    @Test
    @Order(9)
    @DisplayName("Update wallet")
    void shouldUpdateWallet() throws Exception {
        String updatedName = "Updated Wallet Name";
        UpdateWalletInput input = new UpdateWalletInput().name(updatedName);

        WalletDto updated = walletApi.updateWallet(walletId, input);
        assertEquals(updatedName, updated.getName(), "Expected updated wallet name to match");
    }

    // ========== V2 Tests ==========

    @Test
    @Order(10)
    @DisplayName("Validates V2 wallet setup")
    void shouldValidateWalletSetupV2() throws Exception {
        assertNotNull(walletIdV2, "Wallet ID should not be null");
        assertNotNull(walletDidV2, "Wallet DID should not be null");
        assertTrue(walletDidV2.startsWith("did:key:"), "DID should start with 'did:key:'");
    }

    @Test
    @Order(11)
    @DisplayName("Create did:web wallet v2")
    void shouldCreateDidWebV2Wallet() throws Exception {
        WalletV2Dto created = WalletsTestHelper.createWalletV2(CreateWalletV2Input.DidMethodEnum.WEB);
        assertNotNull(created, "Expected WEB-based wallet to be created");
        walletIdDidWebV2 = created.getId();
        assertNotNull(walletIdDidWebV2, "Expected non-null WEB wallet ID");
    }

    @Test
    @Order(12)
    @DisplayName("Sign and validate JWT credential v2")
    void shouldSignAndValidateJwtCredentialV2() throws Exception {
        String jwtCredential = WalletsTestHelper.signCredentialsJwt(walletDidV2, walletIdV2,
                Instant.now().plusSeconds(600), true);
        assertNotNull(jwtCredential, "Signed JWT credential should not be null");
        assertTrue(jwtCredential.startsWith("eyJ"), "JWT should start with 'eyJ'");

        boolean isValid = CredentialVerificationTestHelper.isJwtCredentialV2Valid(jwtCredential);
        assertTrue(isValid, "Signed JWT credential should be valid");
    }

    @Test
    @Order(13)
    @DisplayName("Sign JWT credential v2 - if expired then it is not valid")
    void shouldSignExpiredJwtCredentialV2() throws Exception {
        Instant pastDate = Instant.now().minusSeconds(365 * 24 * 60 * 60); // 1 year ago
        String jwtCredential = WalletsTestHelper.signCredentialsJwt(walletDidV2, walletIdV2, pastDate, false);
        assertNotNull(jwtCredential, "Signed expired JWT credential should not be null");
        assertTrue(jwtCredential.startsWith("eyJ"), "JWT should start with 'eyJ'");
    }

    @Test
    @Order(14)
    @DisplayName("Sign and validate LDP credential v2")
    void shouldSignAndValidateCredentialV2() throws Exception {
        signedCredentialV2 = WalletsTestHelper.signCredentialsLdp(walletDidV2, walletIdV2, Instant.now().plusSeconds(600),
                true);
        assertNotNull(signedCredentialV2, "Signed credential should not be null");

        boolean isValid = CredentialVerificationTestHelper.isLdpCredentialV2Valid(signedCredentialV2);
        assertTrue(isValid, "Signed credential should be valid");
    }

    @Test
    @Order(15)
    @DisplayName("Sign and validate SD-JWT credential v2")
    void shouldSignAndValidateSdJwtCredentialV2() throws Exception {
        String sdJwtSignedCredential = WalletsTestHelper.signCredentialsSdJwt(walletDidV2, walletIdV2,
                Instant.now().plusSeconds(600),
                true);
        assertNotNull(sdJwtSignedCredential, "Signed credential should not be null");

        boolean isValid = CredentialVerificationTestHelper.isJwtCredentialV2Valid(sdJwtSignedCredential);
        assertTrue(isValid, "Signed credential should be valid");
    }

    @Test
    @Order(16)
    @DisplayName("Sign presentation - ldp v2")
    void shouldSignPresentationV2() throws Exception {
        String domain = "example.com";
        String challenge = UUID.randomUUID().toString();
        Map<String, Object> signedPresentation = WalletsTestHelper.signPresentationsLdp(walletDidV2, walletIdV2,
                signedCredentialV2, domain, challenge);
        assertNotNull(signedPresentation, "Signed presentation should not be null");

        boolean isValid = CredentialVerificationTestHelper.isLdpPresentationV2Valid(signedPresentation, domain,
                challenge);
        assertTrue(isValid, "Signed presentation should be valid");
    }

    @Test
    @Order(17)
    @DisplayName("Revoke verifiable credential - ldp v2")
    void revokeCredentialsV2() throws Exception {
        String credentialId = (String) signedCredentialV2.get("id");

        RevokeCredentialsInput input = new RevokeCredentialsInput();
        input.setCredentialId(credentialId);

        assertDoesNotThrow(() -> revocationApi.revokeCredentials(walletIdV2, input),
                "Revocation should complete successfully");
    }

    @Test
    @Order(18)
    @DisplayName("Fetch wallet by ID")
    void shouldFetchWalletV2() throws Exception {
        WalletDto wallet = walletApi.getWallet(walletIdV2);
        assertNotNull(wallet.getId(), "Wallet ID should not be null");
    }
}
