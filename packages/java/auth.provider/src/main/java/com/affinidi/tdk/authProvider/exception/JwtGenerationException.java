package com.affinidi.tdk.authProvider.exception;

public class JwtGenerationException extends GenericAuthProviderException {

    public JwtGenerationException(String errorMessage) {
        super(errorMessage);
    }
}
