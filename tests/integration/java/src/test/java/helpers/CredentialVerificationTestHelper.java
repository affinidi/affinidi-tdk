package helpers;

import com.affinidi.tdk.credential.verification.client.ApiClient;
import com.affinidi.tdk.credential.verification.client.Configuration;
import com.affinidi.tdk.credential.verification.client.apis.DefaultApi;
import com.affinidi.tdk.credential.verification.client.auth.ApiKeyAuth;
import com.affinidi.tdk.credential.verification.client.models.VerifyCredentialInput;
import com.affinidi.tdk.credential.verification.client.models.VerifyCredentialOutput;

import java.util.Map;

/**
 * Helper class for verifying credentials using the Credential Verification Client.
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
}
