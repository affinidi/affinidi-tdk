/*
 * Iam
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: info@affinidi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.affinidi.tdk.iam.client.apis;

import com.affinidi.tdk.iam.client.ApiException;
import com.affinidi.tdk.iam.client.models.ConsumerAuthTokenEndpointInput;
import com.affinidi.tdk.iam.client.models.ConsumerAuthTokenEndpointOutput;
import com.affinidi.tdk.iam.client.models.InvalidDIDError;
import com.affinidi.tdk.iam.client.models.UnauthorizedError;
import com.affinidi.tdk.iam.client.models.UnexpectedError;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for ConsumerAuthApi
 */
@Disabled
public class ConsumerAuthApiTest {

    private final ConsumerAuthApi api = new ConsumerAuthApi();

    /**
     * The Consumer OAuth 2.0 Token Endpoint
     *
     * Use open source libraries to perform OAuth 2.0 and OpenID Connect available for any programming language. You can find a list of libraries here https://oauth.net/code/  The Ory SDK is not yet able to this endpoint properly.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void consumerAuthTokenEndpointTest() throws ApiException {
        ConsumerAuthTokenEndpointInput consumerAuthTokenEndpointInput = null;
        ConsumerAuthTokenEndpointOutput response = api.consumerAuthTokenEndpoint(consumerAuthTokenEndpointInput);
        // TODO: test validations
    }

}