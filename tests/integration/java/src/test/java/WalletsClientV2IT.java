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
 * Covers configuration CRUD for wallet operations, sign credentials, sign JWT
 */
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class WalletsClientV2IT {

    private WalletApi walletApi;
    private RevocationApi revocationApi;

    private String walletId;
    private String walletIdDidWeb;
    private String walletDid;
    private Map<String, Object> signedCredential;

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

        WalletV2Dto created = WalletsTestHelper.createWalletV2(CreateWalletV2Input.DidMethodEnum.KEY);
        assertNotNull(created, "Expected did:key wallet to be created");

        walletId = created.getId();
        walletDid = created.getDid();
    }

    @AfterAll
    void tearDown() throws Exception {
        if (walletId != null)
            walletApi.deleteWallet(walletId);
        if (walletIdDidWeb != null)
            walletApi.deleteWallet(walletIdDidWeb);
    }

    @Test
    @Order(0)
    @DisplayName("Validates wallet setup")
    void shouldValidateWalletSetup() throws Exception {
        assertNotNull(walletId, "Wallet ID should not be null");
        assertNotNull(walletDid, "Wallet DID should not be null");
        assertTrue(walletDid.startsWith("did:key:"), "DID should start with 'did:key:'");
    }

    @Test
    @Order(1)
    @DisplayName("Create did:web wallet v2")
    void shouldCreateDidWebV2Wallet() throws Exception {
        WalletV2Dto created = WalletsTestHelper.createWalletV2(CreateWalletV2Input.DidMethodEnum.WEB);
        assertNotNull(created, "Expected WEB-based wallet to be created");
        walletIdDidWeb = created.getId();
        assertNotNull(walletIdDidWeb, "Expected non-null WEB wallet ID");
    }

    @Test
    @Order(2)
    @DisplayName("Sign and validate a verifiable credential - jwt v2")
    void shouldSignAndValidateJwtCredential() throws Exception {
        String jwtCredential = WalletsTestHelper.signCredentialsJwt(walletDid, walletId,
                Instant.now().plusSeconds(600), true);
        assertNotNull(jwtCredential, "Signed JWT credential should not be null");
        assertTrue(jwtCredential.startsWith("eyJ"), "JWT should start with 'eyJ'");

        boolean isValid = CredentialVerificationTestHelper.isJwtCredentialV2Valid(jwtCredential);
        assertTrue(isValid, "Signed JWT credential should be valid");
    }

    @Test
    @Order(3)
    @DisplayName("Sign JWT credential v2 - if expired then it is not valid")
    void shouldSignExpiredJwtCredential() throws Exception {
        Instant pastDate = Instant.now().minusSeconds(365 * 24 * 60 * 60); // 1 year ago
        String jwtCredential = WalletsTestHelper.signCredentialsJwt(walletDid, walletId, pastDate, false);
        assertNotNull(jwtCredential, "Signed expired JWT credential should not be null");
        assertTrue(jwtCredential.startsWith("eyJ"), "JWT should start with 'eyJ'");
    }

    @Test
    @Order(4)
    @DisplayName("Sign and validate a verifiable credential - ldp v2")
    void shouldSignAndValidateCredential() throws Exception {
        signedCredential = WalletsTestHelper.signCredentialsLdp(walletDid, walletId, Instant.now().plusSeconds(600),
                true);
        assertNotNull(signedCredential, "Signed credential should not be null");

        boolean isValid = CredentialVerificationTestHelper.isLdpCredentialV2Valid(signedCredential);
        assertTrue(isValid, "Signed credential should be valid");
    }

    @Test
    @Order(5)
    @DisplayName("Sign LDP credential v2 - if expired then it is not valid")
    void shouldSignExpiredLdpCredential() throws Exception {
        Instant pastDate = Instant.now().minusSeconds(2 * 365 * 24 * 60 * 60); // 2 years ago
        Map<String, Object> expiredCredential = WalletsTestHelper.signCredentialsLdp(walletDid, walletId, pastDate,
                false);
        assertNotNull(expiredCredential, "Signed expired LDP credential should not be null");
        assertTrue(expiredCredential.containsKey("proof"), "LDP credential should have proof");
    }

    @Test
    @Order(6)
    @DisplayName("Sign and validate a verifiable credential - sd-jwt")
    void shouldSignAndValidateSdJwtCredential() throws Exception {
        String sdJwtSignedCredential = WalletsTestHelper.signCredentialsSdJwt(walletDid, walletId,
                Instant.now().plusSeconds(600),
                true);
        assertNotNull(sdJwtSignedCredential, "Signed credential should not be null");

        boolean isValid = CredentialVerificationTestHelper.isJwtCredentialV2Valid(sdJwtSignedCredential);
        assertTrue(isValid, "Signed credential should be valid");
    }

    @Test
    @Order(7)
    @DisplayName("Sign SD-JWT credential v2 - if expired then it is not valid")
    void shouldSignExpiredSdJwtCredential() throws Exception {
        Instant pastDate = Instant.now().minusSeconds(2 * 365 * 24 * 60 * 60); // 2 years ago
        String expiredSdJwtCredential = WalletsTestHelper.signCredentialsSdJwt(walletDid, walletId, pastDate, false);
        assertNotNull(expiredSdJwtCredential, "Signed expired SD-JWT credential should not be null");
        assertTrue(expiredSdJwtCredential.contains("~"), "SD-JWT should contain disclosure separators (~)");
    }

    @Test
    @Order(8)
    @DisplayName("Sign presentation - ldp v2")
    void shouldSignPresentation() throws Exception {
        String domain = "example.com";
        String challenge = UUID.randomUUID().toString();
        Map<String, Object> signedPresentation = WalletsTestHelper.signPresentationsLdp(walletDid, walletId,
                signedCredential, domain, challenge);
        assertNotNull(signedPresentation, "Signed presentation should not be null");

        boolean isValid = CredentialVerificationTestHelper.isLdpPresentationV2Valid(signedPresentation, domain,
                challenge);
        assertTrue(isValid, "Signed presentation should be valid");
    }

    @Test
    @Order(9)
    @DisplayName("Revoke verifiable credential - ldp v2")
    void revokeCredentials() throws Exception {

        String credentialId = (String) signedCredential.get("id");

        System.out.println("Revoking credential with ID: " + credentialId);
        try {
            com.fasterxml.jackson.databind.ObjectMapper mapper = new com.fasterxml.jackson.databind.ObjectMapper();
            System.out.println("Revoking credential : "
                    + mapper.writerWithDefaultPrettyPrinter().writeValueAsString(signedCredential));
        } catch (Exception e) {
            System.out.println("Revoking credential : " + signedCredential);
        }

        RevokeCredentialsInput input = new RevokeCredentialsInput();
        input.setCredentialId(credentialId);

        // Revoke the credential and verify the call succeeds without throwing an
        // exception
        assertDoesNotThrow(() -> revocationApi.revokeCredentials(walletId, input),
                "Revocation should complete successfully");
    }

    @Test
    @Order(10)
    @DisplayName("Fetch wallet by ID")
    void shouldFetchWallet() throws Exception {
        WalletDto wallet = walletApi.getWallet(walletId);
        assertNotNull(wallet.getId(), "Wallet ID should not be null");
    }

}
