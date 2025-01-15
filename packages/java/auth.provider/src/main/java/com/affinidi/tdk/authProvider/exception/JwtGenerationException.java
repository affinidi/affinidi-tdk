package com.affinidi.tdk.authProvider.exception;

public class JwtGenerationException extends Exception{

    public JwtGenerationException(String errorMessage) {
        super(errorMessage);
    }
}

