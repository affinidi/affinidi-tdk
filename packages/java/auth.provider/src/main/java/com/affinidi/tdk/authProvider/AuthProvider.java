package com.affinidi.tdk.authProvider;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;

import org.apache.hc.client5.http.classic.methods.HttpPost;
import org.apache.hc.client5.http.entity.UrlEncodedFormEntity;
import org.apache.hc.client5.http.impl.classic.CloseableHttpClient;
import org.apache.hc.client5.http.impl.classic.HttpClients;
import org.apache.hc.core5.http.HttpEntity;
import org.apache.hc.core5.http.NameValuePair;
import org.apache.hc.core5.http.io.entity.EntityUtils;
import org.apache.hc.core5.http.message.BasicNameValuePair;

import com.affinidi.tdk.authProvider.exception.AccessTokenGenerationException;
import com.affinidi.tdk.authProvider.exception.ConfigurationException;
import com.affinidi.tdk.authProvider.exception.JwtGenerationException;
import com.affinidi.tdk.authProvider.exception.PSTGenerationException;
import com.affinidi.tdk.authProvider.helper.AuthProviderConstants;
import com.affinidi.tdk.authProvider.helper.JwtUtil;
import com.affinidi.tdk.authProvider.types.IotaJwtOutput;
import com.affinidi.tdk.common.EnvironmentUtil;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

/**
 * This class provides utility functions in order to generate projectScopeToken required to call Affinidi Services.
 */
public class AuthProvider {

    /**
     * Gson is thread safe.
     */
    private static final Gson GSON = new Gson();

    private final String projectId;
    private final String tokenId;
    private final String privateKey;
    private final String keyId;
    private final String passphrase;
    private final String tokenEndPoint;
    private final String apiGatewayUrl;

    private String projectScopeToken;

    private AuthProvider(Configurations configurations) {
        this.projectId = configurations.projectId;
        this.tokenId = configurations.tokenId;
        this.privateKey = configurations.privateKey;
        this.keyId = configurations.keyId;
        this.passphrase = configurations.passphrase;
        this.tokenEndPoint = EnvironmentUtil.getElementAuthTokenUrlForEnvironment();
        this.apiGatewayUrl = EnvironmentUtil.getApiGatewayUrlForEnvironment();
    }

    /**
     * This method identifies if the current AuthProvider has a valid existing projectScopeToken or not. This helps to
     * reuse the valid tokens without always generating a new.
     *
     * The validation involves verifying token's signature against the public (verification) key; validating token's
     * expiration or malformation.
     *
     * @return boolean
     */
    public boolean shouldRefreshToken() {
        return (this.projectScopeToken == null)
                || !(JwtUtil.validProjectTokenPresent(this.projectScopeToken, this.apiGatewayUrl));
    }

    /**
     * This method generates a projectScopeToken required to call Affinidi services.
     *
     * In case there is an existing projectScopeToken in the authProvider instance; it is first validated and a new one
     * is generated only if needed.
     *
     * Refer {@link JwtUtil#validProjectTokenPresent(String, String)} for validation details
     *
     * @return String
     *
     * @throws PSTGenerationException
     *             incase access_token generation has issues or projectScopeToken end point
     */
    public String fetchProjectScopedToken() throws PSTGenerationException {
        if (shouldRefreshToken()) {
            this.projectScopeToken = getProjectScopedToken();
        }
        return this.projectScopeToken;
    }

    /**
     * This method generates a user-access-token which is required as an API authorization token.
     *
     * @return String
     *
     * @throws AccessTokenGenerationException
     *             in case the access token could not be generated
     */
    public String getUserAccessToken() throws AccessTokenGenerationException {
        try {
            final String signedToken = JwtUtil.signPayload(this.tokenId, this.tokenEndPoint, this.privateKey,
                    this.passphrase, this.keyId);
            if (signedToken == null) {
                throw new JwtGenerationException("Could not generate signed JWT from the configurations ");
            }
            final HttpPost httpPost = new HttpPost(this.getTokenEndPoint());
            httpPost.setHeader(AuthProviderConstants.CONTENT_TYPE_HEADER,
                    AuthProviderConstants.APPLICATION_URL_ENCODED_CONTENT_TYPE);

            final List<NameValuePair> params = Arrays.asList(new BasicNameValuePair("grant_type", "client_credentials"),
                    new BasicNameValuePair("scope", "openid"),
                    new BasicNameValuePair("client_assertion_type",
                            "urn:ietf:params:oauth:client-assertion-type:jwt-bearer"),
                    new BasicNameValuePair("client_assertion", signedToken),
                    new BasicNameValuePair("client_id", this.tokenId));
            httpPost.setEntity(new UrlEncodedFormEntity(params));

            String userAccessToken = executeHttp(httpPost, "access_token");
            if (userAccessToken == null) {
                throw new AccessTokenGenerationException(
                        "getUserAccessToken : Could not retrieve access_token from the token end point");
            }
            return userAccessToken;
        } catch (JwtGenerationException | AccessTokenGenerationException | IOException jwtGenerationException) {
            throw new AccessTokenGenerationException(jwtGenerationException.getMessage());
        }
    }

    /**
     * This method generates a projectScopeToken for the configuration values associated to the AuthProvider.
     *
     * @return String
     *
     * @throws PSTGenerationException
     */
    private String getProjectScopedToken() throws PSTGenerationException {
        try {
            String userAccessToken = getUserAccessToken();

            final HttpPost httpPost = new HttpPost(apiGatewayUrl + AuthProviderConstants.PROJECT_SCOPE_TOKEN_API_PATH);

            final List<NameValuePair> params = Arrays.asList(new BasicNameValuePair("projectId", projectId));
            httpPost.setEntity(new UrlEncodedFormEntity(params));

            httpPost.setHeader("Authorization", "Bearer " + userAccessToken);
            httpPost.setHeader("Content-Type", "application/x-www-form-urlencoded");

            String token = executeHttp(httpPost, "accessToken");
            if (token == null) {
                throw new PSTGenerationException("getProjectScopedToken :  Could not retrieve accessToken from "
                        + (apiGatewayUrl + AuthProviderConstants.PROJECT_SCOPE_TOKEN_API_PATH));
            }
            return token;
        } catch (AccessTokenGenerationException | PSTGenerationException | IOException ex) {
            throw new PSTGenerationException(ex.getMessage());
        }
    }

    /**
     * This method generates a signed jwt for an iota session.
     *
     * @param iotaConfigId
     * @param did
     * @param iotaSessionId
     *
     * @return IotaJwtOutput
     *
     * @throws Exception
     */
    public IotaJwtOutput signIotaJwt(String iotaConfigId, String did, String iotaSessionId) throws Exception {

        String iotaTokenId = "token/" + tokenId;
        String iotaSessionID = (iotaSessionId != null) ? iotaSessionId : UUID.randomUUID().toString();

        String iotaJwt = JwtUtil.signIotaPayload(iotaTokenId, did, privateKey, passphrase, keyId, projectId,
                iotaConfigId, iotaSessionID);

        return new IotaJwtOutput(iotaSessionID, iotaJwt);
    }

    private String executeHttp(final HttpPost httpPost, String memberName) throws IOException {
        try (CloseableHttpClient client = HttpClients.createSystem()) {
            return client.execute(httpPost, response -> {
                if (response.getCode() >= 200 && response.getCode() < 300) {
                    final HttpEntity responseEntity = response.getEntity();
                    final JsonElement responseAsJson = GSON.fromJson(EntityUtils.toString(responseEntity),
                            JsonElement.class);
                    final JsonObject responseObject = responseAsJson.isJsonObject() ? responseAsJson.getAsJsonObject()
                            : null;
                    if (responseObject != null && responseObject.get(memberName) != null) {
                        return responseObject.get(memberName).getAsString();
                    }
                }
                return null;
            });
        }
    }

    /**
     * This class provides a way to pass configurations to the AuthProvider It also helps to build an instance of
     * AuthProvider which uses these configurations.
     */
    public static class Configurations {

        private String projectId;
        private String tokenId;
        private String privateKey;
        private String keyId;
        private String passphrase;

        public Configurations projectId(String projectId) {
            this.projectId = projectId;
            return this;
        }

        public Configurations tokenId(String tokenId) {
            this.tokenId = tokenId;
            return this;
        }

        public Configurations privateKey(String privateKey) {
            this.privateKey = privateKey;
            return this;
        }

        public Configurations keyId(String keyId) {
            this.keyId = keyId;
            return this;
        }

        public Configurations passphrase(String passphrase) {
            this.passphrase = passphrase;
            return this;
        }

        /**
         * This method builds an instance of AuthProvider with the values passed through {@link Configuration}.
         *
         * @return
         *
         * @throws ConfigurationException
         */
        public AuthProvider build() throws ConfigurationException {
            if (this.projectId == null || this.privateKey == null || this.tokenId == null) {
                throw new ConfigurationException(
                        "Cannot create Auth provider without projectId, privateKey and toeknId");
            }
            return new AuthProvider(this);
        }

        /**
         * This method builds an instance of AuthProvider with the configuration values present in the .env file.
         *
         * @return
         *
         * @throws ConfigurationException
         */
        public AuthProvider buildWithEnv() throws ConfigurationException {

            if (this.projectId != null || this.privateKey != null || this.tokenId != null || this.passphrase != null
                    || this.privateKey != null) {
                throw new ConfigurationException("Please do not pass configurations values while using buildWithEnv. "
                        + " These values will picked from .env. Alternatively you may use build() in order to explicitly pass values");
            }

            this.keyId = EnvironmentUtil.getValueFromEnvConfig(AuthProviderConstants.KEY_ID_PROPERTY_NAME_IN_ENV);
            this.projectId = EnvironmentUtil
                    .getValueFromEnvConfig(AuthProviderConstants.PROJECT_ID_PROPERTY_NAME_IN_ENV);
            this.passphrase = EnvironmentUtil
                    .getValueFromEnvConfig(AuthProviderConstants.PASSPHRASE_PROPERTY_NAME_IN_ENV);
            this.tokenId = EnvironmentUtil.getValueFromEnvConfig(AuthProviderConstants.TOKEN_ID_PROPERTY_NAME_IN_ENV);
            this.privateKey = EnvironmentUtil
                    .getValueFromEnvConfig(AuthProviderConstants.PRIVATE_KEY_PROPERTY_NAME_IN_ENV);

            if (this.projectId == null || this.privateKey == null || this.tokenId == null) {
                throw new ConfigurationException(
                        "Cannot create Auth provider without projectId, privateKey and tokenId. Please ensure these values are configured in .env");
            }
            return new AuthProvider(this);
        }
    }

    /**
     * @return String
     */
    public String getProjectId() {
        return projectId;
    }

    /**
     * @return String
     */
    public String getTokenId() {
        return tokenId;
    }

    /**
     * @return String
     */
    public String getPrivateKey() {
        return privateKey;
    }

    /**
     * @return String
     */
    public String getKeyId() {
        return keyId;
    }

    /**
     * @return String
     */
    public String getPassphrase() {
        return passphrase;
    }

    /**
     * @return String
     */
    public String getApiGatewayUrl() {
        return apiGatewayUrl;
    }

    /**
     * @return String
     */
    public String getTokenEndPoint() {
        return tokenEndPoint;
    }

    /**
     * @return String
     */
    public String getProjectScopeToken() {
        return projectScopeToken;
    }
}
