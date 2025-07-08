package helpers;

import com.fasterxml.jackson.databind.ObjectMapper;

import java.net.URI;
import java.net.URISyntaxException;
import java.time.Instant;
import java.util.List;
import java.util.Map;

import com.affinidi.tdk.wallets.client.ApiClient;
import com.affinidi.tdk.wallets.client.Configuration;
import com.affinidi.tdk.wallets.client.auth.ApiKeyAuth;
import com.affinidi.tdk.wallets.client.apis.WalletApi;
import com.affinidi.tdk.wallets.client.models.*;

import com.affinidi.tdk.common.EnvironmentUtil;

/**
 * Wallet helpers used across integration tests.
 */
public class WalletsTestHelper {
    private static final int WALLETS_LIMIT_THRESHOLD = 7;

    private static WalletApi getWalletApi() {
        ApiClient client = Configuration.getDefaultApiClient();

        if (!Env.isProd()) {
            // String envName = Env.getEnvName();
            String apiGatewayUrl = EnvironmentUtil.getApiGatewayUrlForEnvironment(Env.getEnvName());
            String basePath = TestUtils.replaceBaseDomain(client.getBasePath(), apiGatewayUrl);
            client.setBasePath(basePath);
        }

        ApiKeyAuth auth = (ApiKeyAuth) client.getAuthentication("ProjectTokenAuth");
        auth.setApiKeySupplier(AuthUtils.createTokenSupplier());

        return new WalletApi(client);
    }

    /**
     * Creates a wallet using the specified DID method.
     *
     * @param method DID method (e.g., KEY or WEB)
     * @return Created WalletDto
     * @throws Exception if wallet creation fails
     */
    public static WalletDto createWallet(CreateWalletInput.DidMethodEnum method) throws Exception {
        checkWalletsLimitExceeded();

        CreateWalletInput input = new CreateWalletInput().didMethod(method);

        if (method == CreateWalletInput.DidMethodEnum.WEB) {
            String domain = TestUtils.generateRandomString() + ".com";
            input.setDidWebUrl(domain);
        }

        return getWalletApi().createWallet(input).getWallet();
    }

    /**
     * Deletes a wallet by ID.
     *
     * @param walletId the wallet ID
     * @throws Exception if deletion fails
     */
    public static void deleteWallet(String walletId) throws Exception {
        if (walletId != null && !walletId.isBlank()) {
            getWalletApi().deleteWallet(walletId);
        }
    }

    /**
     * Ensures the wallet limit (10) has not been exceeded.
     *
     * @throws Exception if wallet limit is exceeded
     */
    public static void checkWalletsLimitExceeded() throws Exception {
        List<WalletDto> wallets = getWalletApi().listWallets(null).getWallets();

        if (wallets != null && wallets.size() > WALLETS_LIMIT_THRESHOLD) {
            System.out.println("❗️Number of wallets reaching the limit (10). Deleting wallets.");
            for (WalletDto wallet : wallets) {
                String id = wallet.getId();
                deleteWallet(id);
            }
        }
    }

    /**
     * Extracts the revocation list credential URL from a signed credential.
     *
     * @param signedCredential the signed credential {@code Map<String, Object>}
     * @return revocation list credential URL or null
     */
    public static String getRevocationListCredential(Map<String, Object> signedCredential) {
        if (signedCredential == null) return null;

        Object statusObj = signedCredential.get("credentialStatus");
        if (!(statusObj instanceof Map<?, ?> statusMap)) return null;

        Object listUrl = statusMap.get("revocationListCredential");
        return (listUrl instanceof String) ? (String) listUrl : null;
    }

    /**
     * Extracts the revocation status ID from a URL.
     *
     * @param url revocation list credential URL
     * @return the last path segment of the URL, or null
     */
    public static String extractRevocationStatusId(String url) {
        if (url == null || url.isBlank()) return null;

        try {
            URI uri = new URI(url);
            String[] segments = uri.getPath().replaceAll("^/+", "").split("/");
            return (segments.length > 0) ? segments[segments.length - 1] : null;
        } catch (URISyntaxException e) {
            return null;
        }
    }

    /**
     * Signs a verifiable credential using the given wallet ID and DID.
     *
     * <p>Uses fixture from the environment variable {@code UNSIGNED_CREDENTIAL_PARAMS}
     * to build the credential payload. Injects the specified holder DID, expiration, and revocability.
     *
     * @param walletDid the DID of the wallet holder (used as the credential subject)
     * @param walletId the ID of the wallet used to sign the credential
     * @param expiry the expiration time for the credential
     * @param revocable whether the credential should be revocable
     * @return a signed verifiable credential as a {@code Map<String, Object>}
     * @throws Exception if signing fails or input is invalid
     */
    public static Map<String, Object> signCredential(String walletDid, String walletId, Instant expiry, boolean revocable) throws Exception {
        ObjectMapper mapper = new ObjectMapper();
        String paramsJson = Env.get("UNSIGNED_CREDENTIAL_PARAMS");

        SignCredentialInputDtoUnsignedCredentialParams unsignedParams =
            mapper.readValue(paramsJson, SignCredentialInputDtoUnsignedCredentialParams.class);

        unsignedParams.setHolderDid(walletDid);
        unsignedParams.setExpiresAt(expiry.toString());

        SignCredentialInputDto input = new SignCredentialInputDto()
            .unsignedCredentialParams(unsignedParams)
            .revocable(revocable);

        return getWalletApi().signCredential(walletId, input).getSignedCredential();
    }
}
