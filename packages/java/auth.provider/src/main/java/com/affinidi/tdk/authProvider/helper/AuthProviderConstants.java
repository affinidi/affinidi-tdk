package com.affinidi.tdk.authProvider.helper;

public interface AuthProviderConstants {
    public static final String publicKeyPath = "/iam/.well-known/jwks.json";
    public static final String projectScopeTokenApiPath = "/iam/v1/sts/create-project-scoped-token";
    public static final String contentTypeHeader = "Content-Type";
    public static final String applicationJsonContentType = "application/json";

    public static final String keyIdPropertyNameinEnv = "KEY_ID";
    public static final String tokenIdPropertyNameinEnv = "TOKEN_ID";
    public static final String passphrasePropertyNameinEnv = "PASSPHRASE";
    public static final String privateKeyPropertyNameinEnv = "PRIVATE_KEY";
    public static final String projectIdPropertyNameinEnv = "PROJECT_ID";
    
}
