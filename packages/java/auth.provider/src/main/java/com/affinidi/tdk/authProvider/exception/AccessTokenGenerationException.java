package com.affinidi.tdk.authProvider.exception;

public class AccessTokenGenerationException extends GenericAuthProviderException {

    public AccessTokenGenerationException(String errorMessage) {
        super(errorMessage);
    }
}
