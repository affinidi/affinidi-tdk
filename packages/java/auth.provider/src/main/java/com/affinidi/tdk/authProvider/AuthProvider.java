package com.affinidi.tdk.authProvider;

import java.security.AlgorithmParameters;
import java.security.Key;
import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.Base64;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.crypto.Cipher;
import javax.crypto.EncryptedPrivateKeyInfo;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;

import com.affinidi.tdk.common.EnvironmentUtil;
import io.jsonwebtoken.Jwts;

public class AuthProvider {

    private final String projectId;
    private final String tokenId;
    private final String privateKey;
    private final String keyId;
    private final String passphrase;
    private final String apiGatewayUrl;
    private final String tokenEndPoint;
    private String publicKey;
    private String projectScopeToken;

    AuthProvider(Configurations configurations) {
        this.projectId = configurations.projectId;
        this.tokenId = configurations.tokenId;
        this.privateKey = configurations.privateKey;
        this.keyId = configurations.keyId;
        this.passphrase = configurations.passphrase;
        EnvironmentUtil eUtil = new EnvironmentUtil();
        this.apiGatewayUrl = eUtil.getApiGatewayUrlForEnvironment();
        this.tokenEndPoint = eUtil.getElementAuthTokenUrlForEnvironment();
    }

    public boolean shouldRefreshToken() {
        // TODO Implement shouldRefreshToken
        return false;
    }

    public String fetchProjectScopedToken() {
        boolean tokenFetchRequired = shouldRefreshToken();
        if (tokenFetchRequired) {
            this.projectScopeToken = fetchProjectScopedToken(apiGatewayUrl, projectId, tokenId, apiGatewayUrl,
                    privateKey, passphrase, keyId);
        }
        return this.projectScopeToken;
    }

    public String getUserAccessToken(String audience) {
        // TODO Implement getUserAccessToken
        return null;
    }

    private String fetchProjectScopedToken(String apiGatewayUrl, String projectId, String tokenId,
            String audience, String privateKey, String passphrase, String keyId) {

        // TODO Implement fetchProjectScopedToken
        return null;
    }

    public class SignPayload {
        private String tokenId;
        private String privateKey;
        private String passphrase;
        private String keyId;
        private String audience;

        public SignPayload(String tokenId, String privateKey, String passphrase,
                String keyId, String audience) {
            this.tokenId = tokenId;
            this.privateKey = privateKey;
            this.passphrase = passphrase;
            this.keyId = keyId;
            this.audience = audience;
        }

        public String getTokenId() {
            return tokenId;
        }

        public String getPrivateKey() {
            return privateKey;
        }

        public String getPassphrase() {
            return passphrase;
        }

        public String getKeyId() {
            return keyId;
        }

        public String getAudience() {
            return audience;
        }
    }

    private String signIotaJwt(String projectId, String iotaConfigId,
            String iotaSessionId, SignPayload signPayload) throws Exception {
        long issueTimeInSeconds = System.currentTimeMillis() / 1000;

        Map<String, Object> claims = new HashMap<>();
        claims.put("iss", signPayload.getTokenId());
        claims.put("sub", signPayload.getTokenId());
        claims.put("kid", signPayload.getTokenId());
        claims.put("aud", signPayload.getAudience());
        claims.put("jti", UUID.randomUUID().toString());
        claims.put("exp", issueTimeInSeconds + (5 * 60));
        claims.put("iat", issueTimeInSeconds);
        claims.put("project_id", projectId);
        claims.put("iota_configuration_id", iotaConfigId);
        claims.put("iota_session_id", iotaSessionId);
        claims.put("scope", "iota_channel");

        if (!passphrase.isEmpty()) {
            PrivateKey privateKey = getPrivateKeyFromString(signPayload.getPrivateKey());
            return generateJwt(privateKey, claims);
        } else {
            PrivateKey privateKey = getEncryptedPrivateKeyFromString(signPayload.getPrivateKey(),
                    signPayload.getPassphrase());
            return generateJwt(privateKey, claims);
        }

    }

    private static String generateJwt(PrivateKey privateKey, Map<String, Object> claims) {
        return Jwts.builder()
                .claims(claims)
                .signWith(privateKey, Jwts.SIG.RS256)
                .compact();
    }

    private static PrivateKey getPrivateKeyFromString(String privateKeyPEM) throws Exception {
        String privateKeyContent = privateKeyPEM
                .replace("-----BEGIN PRIVATE KEY-----", "")
                .replace("-----END PRIVATE KEY-----", "")
                .replaceAll("\\s", "");

        byte[] encoded = Base64.getDecoder().decode(privateKeyContent);
        KeyFactory keyFactory = KeyFactory.getInstance("RSA");
        PKCS8EncodedKeySpec keySpec = new PKCS8EncodedKeySpec(encoded);
        return keyFactory.generatePrivate(keySpec);
    }

    private static PrivateKey getEncryptedPrivateKeyFromString(String encryptedPrivateKeyPEM, String password)
            throws Exception {
        String privateKeyContent = encryptedPrivateKeyPEM
                .replace("-----BEGIN ENCRYPTED PRIVATE KEY-----", "")
                .replace("-----END ENCRYPTED PRIVATE KEY-----", "");

        byte[] encodedKey = Base64.getDecoder().decode(privateKeyContent);
        EncryptedPrivateKeyInfo encryptedPrivateKeyInfo = new EncryptedPrivateKeyInfo(encodedKey);
        Cipher cipher = Cipher.getInstance(encryptedPrivateKeyInfo.getAlgName());
        PBEKeySpec pbeKeySpec = new PBEKeySpec(password.toCharArray());
        SecretKeyFactory secFac = SecretKeyFactory.getInstance(encryptedPrivateKeyInfo.getAlgName());
        Key pbeKey = secFac.generateSecret(pbeKeySpec);
        AlgorithmParameters algParams = encryptedPrivateKeyInfo.getAlgParameters();
        cipher.init(Cipher.DECRYPT_MODE, pbeKey, algParams);
        PKCS8EncodedKeySpec pkcs8KeySpec = encryptedPrivateKeyInfo.getKeySpec(cipher);
        KeyFactory keyFactory = KeyFactory.getInstance("RSA");

        return keyFactory.generatePrivate(pkcs8KeySpec);
    }

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

        public AuthProvider build() throws Exception {
            if (this.projectId == null || this.privateKey == null || this.tokenId == null) {
                throw new Exception("Cannot create Auth provider without projectId, privateKey and toeknId");
            }
            return new AuthProvider(this);
        }

    }

    public String getProjectId() {
        return projectId;
    }

    public String getTokenId() {
        return tokenId;
    }

    public String getPrivateKey() {
        return privateKey;
    }

    public String getKeyId() {
        return keyId;
    }

    public String getPassphrase() {
        return passphrase;
    }

    public String getApiGatewayUrl() {
        return apiGatewayUrl;
    }

    public String getTokenEndPoint() {
        return tokenEndPoint;
    }

    public String getPublicKey() {
        return publicKey;
    }

    public void setPublicKey(String publicKey) {
        this.publicKey = publicKey;
    }

    public String getProjectScopeToken() {
        return projectScopeToken;
    }

    public void setProjectScopeToken(String projectScopeToken) {
        this.projectScopeToken = projectScopeToken;
    }
}
