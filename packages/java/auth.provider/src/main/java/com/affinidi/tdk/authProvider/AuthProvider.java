package com.affinidi.tdk.authProvider;

import com.affinidi.tdk.common.EnvironmentUtil;

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

    AuthProvider(Configurations configurations){
        this.projectId = configurations.projectId;
        this.tokenId = configurations.tokenId;
        this.privateKey = configurations.privateKey;
        this.keyId = configurations.keyId;
        this.passphrase = configurations.passphrase;
        EnvironmentUtil eUtil = new EnvironmentUtil();
        this.apiGatewayUrl = eUtil.getApiGatewayUrlForEnvironment();
        this.tokenEndPoint = eUtil.getElementAuthTokenUrlForEnvironment();
    }

    public boolean shouldRefreshToken(){
        // TODO Implement shouldRefreshToken
            return false;
    }

    public String fetchProjectScopedToken(){
        boolean tokenFetchRequired = shouldRefreshToken();
        if(tokenFetchRequired){
            this.projectScopeToken = fetchProjectScopedToken(apiGatewayUrl, projectId, tokenId, apiGatewayUrl, privateKey, passphrase, keyId);
        }
        return this.projectScopeToken;
    }

    public String getUserAccessToken(String audience){
        // TODO Implement getUserAccessToken
        return null;
    }

    private String fetchProjectScopedToken(String apiGatewayUrl, String projectId, String tokenId, 
                                                        String audience, String privateKey, String passphrase, String keyId){
                                                     
        // TODO Implement fetchProjectScopedToken
        return null;
    }

    public static class Configurations{
        private String projectId;
        private String tokenId;
        private String privateKey;
        private String keyId;
        private String passphrase;

        public Configurations projectId(String projectId){
            this.projectId = projectId;
            return this;
        }
        public Configurations tokenId(String tokenId){
            this.tokenId = tokenId;
            return this;
        }
        public Configurations privateKey(String privateKey){
            this.privateKey = privateKey;
            return this;
        }
        public Configurations keyId(String keyId){
            this.keyId = keyId;
            return this;
        }
        public Configurations passphrase(String passphrase){
            this.passphrase = passphrase;
            return this;
        }

        public AuthProvider build() throws Exception{
            if(this.projectId == null || this.privateKey == null || this.tokenId == null){
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
