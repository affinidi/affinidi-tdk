package com.affinidi.tdk.authProvider.exception;

public class AccessTokenGenerationException extends Exception{

    public AccessTokenGenerationException(String errorMessage) {
        super(errorMessage);
    }
}

