package helpers;

import com.affinidi.tdk.credential.verification.client.ApiClient;
import com.affinidi.tdk.credential.verification.client.Configuration;
import com.affinidi.tdk.credential.verification.client.apis.DefaultApi;
import com.affinidi.tdk.credential.verification.client.auth.ApiKeyAuth;
import com.affinidi.tdk.credential.verification.client.models.VerifyCredentialInput;
import com.affinidi.tdk.credential.verification.client.models.VerifyCredentialOutput;
import com.affinidi.tdk.credential.verification.client.models.VerifyCredentialV2Input;
import com.affinidi.tdk.credential.verification.client.models.VerifyPresentationOutput;
import com.affinidi.tdk.credential.verification.client.models.VerifyPresentationV2Input;
import com.affinidi.tdk.common.EnvironmentUtil;

import java.util.List;
import java.util.Map;

/**
 * Helper class for verifying credentials using the Credential Verification
 * Client.
 */
public final class CredentialVerificationTestHelper {

    private CredentialVerificationTestHelper() {}

    /**
     * Initializes API client
     *
     * @return an instance of {@link DefaultApi} ready to use
     */
    private static DefaultApi getVerificationApi() {
        ApiClient client = Configuration.getDefaultApiClient();

        if (!Env.isProd()) {
            String apiGatewayUrl = EnvironmentUtil.getApiGatewayUrlForEnvironment(Env.getEnvName());
            String basePath = TestUtils.replaceBaseDomain(client.getBasePath(), apiGatewayUrl);
            client.setBasePath(basePath);
        }

        ApiKeyAuth auth = (ApiKeyAuth) client.getAuthentication("ProjectTokenAuth");
        auth.setApiKeySupplier(AuthUtils.createTokenSupplier());

        return new DefaultApi(client);
    }

    /**
     * Verifies the validity of the provided credential.
     *
     * @param credential the verifiable credential as a {@code Map<String, Object>}
     * @return {@code true} if the credential is valid; {@code false} otherwise
     * @throws Exception if the verification request fails
     */
    public static boolean isCredentialValid(Map<String, Object> credential) throws Exception {
        VerifyCredentialInput input = new VerifyCredentialInput().addVerifiableCredentialsItem(credential);
        VerifyCredentialOutput result = getVerificationApi().verifyCredentials(input);
        return Boolean.TRUE.equals(result.getIsValid());
    }

    /**
     * Verifies the validity of a Linked Data Proof (LDP) verifiable credential using the v2 API.
     *
     * <p>
     * This method validates LDP credentials that use cryptographic proof mechanisms
     * such as ECDSA signatures embedded in the credential's proof field.
     *
     * @param credential the LDP verifiable credential as a {@code Map<String, Object>}
     * @return {@code true} if the credential is valid; {@code false} otherwise
     * @throws Exception if the verification request fails
     */
    public static boolean isLdpCredentialV2Valid(Map<String, Object> credential) throws Exception {
        VerifyCredentialV2Input input = new VerifyCredentialV2Input();
        input.setLdpVcs(List.of(credential));
        VerifyCredentialOutput result = getVerificationApi().verifyCredentialsV2(input);
        return Boolean.TRUE.equals(result.getIsValid());
    }

    /**
     * Verifies the validity of a JWT or SD-JWT verifiable credential using the v2 API.
     *
     * <p>
     * This method validates JWT-based credentials including standard JWTs and
     * Selective Disclosure JWTs (SD-JWT) which support privacy-preserving credential sharing.
     *
     * @param credential the JWT or SD-JWT verifiable credential as a string
     * @return {@code true} if the credential is valid; {@code false} otherwise
     * @throws Exception if the verification request fails
     */
    public static boolean isJwtCredentialV2Valid(@javax.annotation.Nonnull String credential) throws Exception {
        VerifyCredentialV2Input input = new VerifyCredentialV2Input().addJwtVcsItem(credential);
        VerifyCredentialOutput result = getVerificationApi().verifyCredentialsV2(input);
        return Boolean.TRUE.equals(result.getIsValid());
    }

    /**
     * Verifies the validity of a Linked Data Proof (LDP) verifiable presentation using the v2 API.
     *
     * <p>
     * Validates the presentation's cryptographic proof, checks the holder's signature,
     * and ensures the presentation matches the specified domain and challenge.
     *
     * @param vp        the LDP verifiable presentation containing one or more credentials
     * @param domain    the expected domain associated with the presentation
     * @param challenge the challenge value used during presentation creation
     * @return {@code true} if the presentation is valid; {@code false} otherwise
     * @throws Exception if the verification request fails
     */
    public static boolean isLdpPresentationV2Valid(Object vp, String domain, String challenge) throws Exception {
        VerifyPresentationV2Input input = new VerifyPresentationV2Input()
                .addDomainItem(domain);
        input.setChallenge(challenge);

        input.setVerifiablePresentation(vp);
        input.setDcqlQuery(null);
        VerifyPresentationOutput result = getVerificationApi().verifyPresentationV2(input);
        return Boolean.TRUE.equals(result.getIsValid());
    }
}
