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
     * Creates a v2 wallet using the specified DID method.
     *
     * @param method DID method (e.g., KEY or WEB)
     * @return Created WalletV2Dto containing wallet ID, DID, and key information
     * @throws Exception if wallet creation fails
     */
    public static WalletV2Dto createWalletV2(CreateWalletV2Input.DidMethodEnum method) throws Exception {
        checkWalletsLimitExceeded();

        CreateWalletV2Input input = new CreateWalletV2Input().didMethod(method);

        if (method == CreateWalletV2Input.DidMethodEnum.WEB) {
            String domain = "https://" + TestUtils.generateRandomString() + ".com";
            input.setDidWebUrl(domain);
        }

        return getWalletApi().createWalletV2(input).getWallet();
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
        if (signedCredential == null)
            return null;

        Object statusObj = signedCredential.get("credentialStatus");
        if (!(statusObj instanceof Map<?, ?> statusMap))
            return null;

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
        if (url == null || url.isBlank())
            return null;

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
     * <p>
     * Uses fixture from the environment variable {@code UNSIGNED_CREDENTIAL_PARAMS}
     * to build the credential payload. Injects the specified holder DID,
     * expiration, and revocability.
     *
     * @param walletDid the DID of the wallet holder (used as the credential
     *                  subject)
     * @param walletId  the ID of the wallet used to sign the credential
     * @param expiry    the expiration time for the credential
     * @param revocable whether the credential should be revocable
     * @return a signed verifiable credential as a {@code Map<String, Object>}
     * @throws Exception if signing fails or input is invalid
     */
    public static Map<String, Object> signCredential(String walletDid, String walletId, Instant expiry,
            boolean revocable) throws Exception {
        ObjectMapper mapper = new ObjectMapper();
        String paramsJson = Env.get("UNSIGNED_CREDENTIAL_PARAMS");

        SignCredentialInputDtoUnsignedCredentialParams unsignedParams = mapper.readValue(paramsJson,
                SignCredentialInputDtoUnsignedCredentialParams.class);

        unsignedParams.setHolderDid(walletDid);
        unsignedParams.setExpiresAt(expiry.toString());

        SignCredentialInputDto input = new SignCredentialInputDto()
                .unsignedCredentialParams(unsignedParams)
                .revocable(revocable);

        return getWalletApi().signCredential(walletId, input).getSignedCredential();
    }

    /**
     * Signs a Linked Data Proof (LDP) verifiable credential using the v2 API.
     *
     * <p>
     * Uses the W3C Verifiable Credentials v2.0 format with embedded cryptographic
     * proofs.
     * The credential template is loaded from the {@code UNSIGNED_CREDENTIAL_V2}
     * environment
     * variable and enhanced with holder DID, issuance date, and expiration.
     *
     * <p>
     * Uses ECDSA secp256k1 signature scheme with EcdsaSecp256k1Signature2019 proof
     * suite.
     *
     * @param walletDid the DID of the wallet holder
     * @param walletId  the ID of the wallet used to sign the credential
     * @param expiry    the expiration time for the credential
     * @param revocable whether the credential should be revocable
     * @return a signed LDP verifiable credential as a {@code Map<String, Object>}
     * @throws Exception if signing fails or input is invalid
     */
    public static Map<String, Object> signCredentialsLdp(String walletDid, @javax.annotation.Nonnull String walletId,
            Instant expiry,
            boolean revocable) throws Exception {

        ObjectMapper mapper = new ObjectMapper();
        String paramsJson = Env.get("UNSIGNED_CREDENTIAL_V2");
        Map<String, Object> unsignedCredential = mapper.readValue(paramsJson, Map.class);

        // Set id with timestamp
        String id = "urn:uuid:test-ldp-tdk-" + System.currentTimeMillis();
        unsignedCredential.put("id", id);

        // Set holder
        unsignedCredential.put("holder", walletDid);
        // Set issuanceDate (required field) in ISO format
        unsignedCredential.put("issuanceDate", java.time.Instant.now().toString());

        // Set validUntil (expiry time) in ISO format
        unsignedCredential.put("expirationDate", expiry.toString());

        SignCredentialsLdpInputDto input = new SignCredentialsLdpInputDto();
        input.setUnsignedCredential(unsignedCredential);
        input.setRevocable(revocable);

        return (Map<String, Object>) getWalletApi().signCredentialsLdp(walletId, input).getCredential();
    }

    /**
     * Signs a Selective Disclosure JWT (SD-JWT) verifiable credential.
     *
     * <p>
     * The credential template is loaded from the {@code UNSIGNED_CREDENTIAL_V2}
     * environment variable, and the disclosure frame
     * (defining which fields can be selectively disclosed) is loaded from
     * {@code DISCLOSURE_FRAME_V2}.
     *
     * <p>
     * The resulting credential is a JWT string containing both the credential data
     * and
     * selective disclosure tokens (indicated by ~ separators).
     *
     * @param walletDid the DID of the wallet holder
     * @param walletId  the ID of the wallet used to sign the credential
     * @param expiry    the expiration time for the credential
     * @param revocable whether the credential should be revocable
     * @return a signed SD-JWT credential as a string with selective disclosure
     *         tokens
     * @throws Exception if signing fails or input is invalid
     */
    public static String signCredentialsSdJwt(String walletDid, @javax.annotation.Nonnull String walletId,
            Instant expiry,
            boolean revocable) throws Exception {

        ObjectMapper mapper = new ObjectMapper();
        String paramsJson = Env.get("UNSIGNED_CREDENTIAL_V2");
        Map<String, Object> unsignedCredential = mapper.readValue(paramsJson, Map.class);

        // Set id with timestamp
        String id = "urn:uuid:test-sdjwt-tdk-" + System.currentTimeMillis();
        unsignedCredential.put("id", id);

        // Set validFrom (current time) in ISO format
        unsignedCredential.put("validFrom", java.time.Instant.now().toString());

        // Set validUntil (expiry time) in ISO format
        unsignedCredential.put("validUntil", expiry.toString());

        // Get disclosure frame from env
        String disclosureFrameJson = Env.get("DISCLOSURE_FRAME_V2");
        Map<String, Object> disclosureFrame = mapper.readValue(disclosureFrameJson, Map.class);

        SignCredentialsDm2SdJwtInputDto input = new SignCredentialsDm2SdJwtInputDto();
        input.setUnsignedCredential(unsignedCredential);
        input.setDisclosureFrame(disclosureFrame);
        input.setRevocable(revocable);

        return getWalletApi().signCredentialsSdJwt(walletId, input).getCredential();
    }

    /**
     * Signs a JWT verifiable credential using the v2 API.
     *
     * <p>
     * Creates a standard JWT credential using the W3C Verifiable Credentials
     * format.
     * The credential template is loaded from the {@code UNSIGNED_CREDENTIAL_V2}
     * environment
     * variable and enhanced with holder DID, issuance date, and credential subject.
     *
     * <p>
     * The resulting credential is a JWT string.
     *
     * @param walletDid the DID of the wallet holder
     * @param walletId  the ID of the wallet used to sign the credential
     * @param expiry    the expiration time for the credential (can be null for no
     *                  expiration)
     * @param revocable whether the credential should be revocable
     * @return a signed JWT credential as a string
     * @throws Exception if signing fails or input is invalid
     */
    public static String signCredentialsJwt(String walletDid, @javax.annotation.Nonnull String walletId,
            Instant expiry, boolean revocable) throws Exception {

        ObjectMapper mapper = new ObjectMapper();
        String paramsJson = Env.get("UNSIGNED_CREDENTIAL_V2");
        Map<String, Object> unsignedCredential = mapper.readValue(paramsJson, Map.class);

        // Set @context - JWT uses v1 context as first element
        List<Object> context = new java.util.ArrayList<>();
        context.add("https://www.w3.org/2018/credentials/v1");
        List<Object> baseContext = (List<Object>) unsignedCredential.get("@context");
        if (baseContext != null && baseContext.size() > 1) {
            for (int i = 1; i < baseContext.size(); i++) {
                context.add(baseContext.get(i));
            }
        }
        unsignedCredential.put("@context", context);

        // Set id with timestamp
        String id = "uuid:test-jwt-tdk-" + System.currentTimeMillis();
        unsignedCredential.put("id", id);

        // Set holder
        Map<String, Object> holder = new java.util.HashMap<>();
        holder.put("id", walletDid);
        unsignedCredential.put("holder", holder);

        // Set issuanceDate
        unsignedCredential.put("issuanceDate", java.time.Instant.now().toString());

        // Set expirationDate if provided
        if (expiry != null) {
            unsignedCredential.put("expirationDate", expiry.toString());
        }

        SignCredentialsJwtInputDto input = new SignCredentialsJwtInputDto();
        input.setUnsignedCredential(unsignedCredential);
        input.setRevocable(revocable);

        return getWalletApi().signCredentialsJwt(walletId, input).getCredential();
    }

    /**
     * Signs a Linked Data Proof (LDP) verifiable presentation using the v2 API.
     *
     * @param walletDid        the DID of the wallet holder
     * @param walletId         the ID of the wallet used to sign the presentation
     * @param signedCredential the signed credential to include in the presentation
     * @param domain           the domain for which the presentation is intended
     *                         (for security)
     * @param challenge        a nonce to prevent replay attacks
     * @return a signed LDP verifiable presentation as a {@code Map<String, Object>}
     * @throws Exception if signing fails or input is invalid
     */
    public static Map<String, Object> signPresentationsLdp(@javax.annotation.Nonnull String walletDid,
            @javax.annotation.Nonnull String walletId,
            @javax.annotation.Nonnull Map<String, Object> signedCredential, String domain, String challenge)
            throws Exception {

        // Build the unsigned presentation structure
        Map<String, Object> unsignedPresentation = new java.util.HashMap<>();

        // Set @context
        unsignedPresentation.put("@context", java.util.Arrays.asList("https://www.w3.org/ns/credentials/v2"));

        // Set id with timestamp
        String id = "testVpV2Id-tdk-" + System.currentTimeMillis();
        unsignedPresentation.put("id", id);

        // Set type
        unsignedPresentation.put("type", java.util.Arrays.asList("VerifiablePresentation"));

        // Set holder
        Map<String, Object> holder = new java.util.HashMap<>();
        holder.put("id", walletDid);
        unsignedPresentation.put("holder", holder);

        // Set verifiableCredential array
        unsignedPresentation.put("verifiableCredential", java.util.Arrays.asList(signedCredential));

        SignPresentationLdpInputDto input = new SignPresentationLdpInputDto();
        input.setUnsignedPresentation(unsignedPresentation);
        input.setDomain(List.of(domain));
        input.setChallenge(challenge);

        return (Map<String, Object>) getWalletApi().signPresentationsLdp(walletId, input).getPresentation();
    }
}
