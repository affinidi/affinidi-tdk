package com.affinidi.tdk.authProvider.helper;

public interface AuthProviderConstants {

    public static final String PUBLIC_KEY_PATH = "/iam/.well-known/jwks.json";
    public static final String PROJECT_SCOPE_TOKEN_API_PATH = "/iam/v1/sts/create-project-scoped-token";
    public static final String CONTENT_TYPE_HEADER = "Content-Type";
    public static final String APPLICATION_JSON_CONTENT_TYPE = "application/json";
    public static final String APPLICATION_URL_ENCODED_CONTENT_TYPE = "application/x-www-form-urlencoded";

    public static final String KEY_ID_PROPERTY_NAME_IN_ENV = "KEY_ID";
    public static final String TOKEN_ID_PROPERTY_NAME_IN_ENV = "TOKEN_ID";
    public static final String PASSPHRASE_PROPERTY_NAME_IN_ENV = "PASSPHRASE";
    public static final String PRIVATE_KEY_PROPERTY_NAME_IN_ENV = "PRIVATE_KEY";
    public static final String PROJECT_ID_PROPERTY_NAME_IN_ENV = "PROJECT_ID";

    // Error messages:
    public static final String COULD_NOT_DERIVE_PRIVATE_KEY_ERROR_MSG = "Could not derive private key out of the configurations.";
}
