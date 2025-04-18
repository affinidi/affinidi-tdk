/*
 * VerificationService
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: info@affinidi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.affinidi.tdk.credential.verification.client.apis;

import com.affinidi.tdk.credential.verification.client.ApiException;
import com.affinidi.tdk.credential.verification.client.models.InvalidParameterError;
import com.affinidi.tdk.credential.verification.client.models.NotFoundError;
import com.affinidi.tdk.credential.verification.client.models.VerifyCredentialInput;
import com.affinidi.tdk.credential.verification.client.models.VerifyCredentialOutput;
import com.affinidi.tdk.credential.verification.client.models.VerifyPresentationInput;
import com.affinidi.tdk.credential.verification.client.models.VerifyPresentationOutput;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import java.time.LocalDate;
import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for DefaultApi
 */
@Disabled
public class DefaultApiTest {

    private final DefaultApi api = new DefaultApi();

    /**
     * Verifying VC
     *
     * Verifying Verifiable Credentials (signatures)  &#x60;isValid&#x60; - true if all credentials verified &#x60;errors&#x60; contains list of error messages for invalid credentials.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void verifyCredentialsTest() throws ApiException {
        VerifyCredentialInput verifyCredentialInput = null;
        VerifyCredentialOutput response = api.verifyCredentials(verifyCredentialInput);

        // TODO: test validations
    }
    /**
     * Verifying VP
     *
     * Verifying Verifiable Presentation (signatures)  &#x60;isValid&#x60; - true if presentation verified &#x60;error&#x60; verificaction error.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void verifyPresentationTest() throws ApiException {
        VerifyPresentationInput verifyPresentationInput = null;
        VerifyPresentationOutput response = api.verifyPresentation(verifyPresentationInput);

        // TODO: test validations
    }
}
