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

import com.fasterxml.jackson.core.type.TypeReference;

import com.affinidi.tdk.credential.verification.client.ApiException;
import com.affinidi.tdk.credential.verification.client.ApiClient;
import com.affinidi.tdk.credential.verification.client.BaseApi;
import com.affinidi.tdk.credential.verification.client.Configuration;
import com.affinidi.tdk.credential.verification.client.Pair;

import com.affinidi.tdk.credential.verification.client.models.InvalidParameterError;
import com.affinidi.tdk.credential.verification.client.models.NotFoundError;
import com.affinidi.tdk.credential.verification.client.models.VerifyCredentialInput;
import com.affinidi.tdk.credential.verification.client.models.VerifyCredentialOutput;
import com.affinidi.tdk.credential.verification.client.models.VerifyPresentationInput;
import com.affinidi.tdk.credential.verification.client.models.VerifyPresentationOutput;


import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringJoiner;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.13.0")
public class DefaultApi extends BaseApi {

  public DefaultApi() {
    super(Configuration.getDefaultApiClient());
  }

  public DefaultApi(ApiClient apiClient) {
    super(apiClient);
  }

  /**
   * Verifying VC
   * Verifying Verifiable Credentials (signatures)  &#x60;isValid&#x60; - true if all credentials verified &#x60;errors&#x60; contains list of error messages for invalid credentials.
   * @param verifyCredentialInput VerifyCredentials (required)
   * @return VerifyCredentialOutput
   * @throws ApiException if fails to make API call
   */
  public VerifyCredentialOutput verifyCredentials(@javax.annotation.Nonnull VerifyCredentialInput verifyCredentialInput) throws ApiException {
    return this.verifyCredentials(verifyCredentialInput, Collections.emptyMap());
  }


  /**
   * Verifying VC
   * Verifying Verifiable Credentials (signatures)  &#x60;isValid&#x60; - true if all credentials verified &#x60;errors&#x60; contains list of error messages for invalid credentials.
   * @param verifyCredentialInput VerifyCredentials (required)
   * @param additionalHeaders additionalHeaders for this call
   * @return VerifyCredentialOutput
   * @throws ApiException if fails to make API call
   */
  public VerifyCredentialOutput verifyCredentials(@javax.annotation.Nonnull VerifyCredentialInput verifyCredentialInput, Map<String, String> additionalHeaders) throws ApiException {
    Object localVarPostBody = verifyCredentialInput;
    
    // verify the required parameter 'verifyCredentialInput' is set
    if (verifyCredentialInput == null) {
      throw new ApiException(400, "Missing the required parameter 'verifyCredentialInput' when calling verifyCredentials");
    }
    
    // create path and map variables
    String localVarPath = "/v1/verifier/verify-vcs";

    StringJoiner localVarQueryStringJoiner = new StringJoiner("&");
    String localVarQueryParameterBaseName;
    List<Pair> localVarQueryParams = new ArrayList<Pair>();
    List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
    Map<String, String> localVarHeaderParams = new HashMap<String, String>();
    Map<String, String> localVarCookieParams = new HashMap<String, String>();
    Map<String, Object> localVarFormParams = new HashMap<String, Object>();

    
    localVarHeaderParams.putAll(additionalHeaders);

    
    
    final String[] localVarAccepts = {
      "application/json"
    };
    final String localVarAccept = apiClient.selectHeaderAccept(localVarAccepts);

    final String[] localVarContentTypes = {
      "application/json"
    };
    final String localVarContentType = apiClient.selectHeaderContentType(localVarContentTypes);

    String[] localVarAuthNames = new String[] { "ProjectTokenAuth" };

    TypeReference<VerifyCredentialOutput> localVarReturnType = new TypeReference<VerifyCredentialOutput>() {};
    return apiClient.invokeAPI(
        localVarPath,
        "POST",
        localVarQueryParams,
        localVarCollectionQueryParams,
        localVarQueryStringJoiner.toString(),
        localVarPostBody,
        localVarHeaderParams,
        localVarCookieParams,
        localVarFormParams,
        localVarAccept,
        localVarContentType,
        localVarAuthNames,
        localVarReturnType
    );
  }

  /**
   * Verifying VP
   * Verifying Verifiable Presentation (signatures)  &#x60;isValid&#x60; - true if presentation verified &#x60;error&#x60; verificaction error.
   * @param verifyPresentationInput VerifyPresentation (required)
   * @return VerifyPresentationOutput
   * @throws ApiException if fails to make API call
   */
  public VerifyPresentationOutput verifyPresentation(@javax.annotation.Nonnull VerifyPresentationInput verifyPresentationInput) throws ApiException {
    return this.verifyPresentation(verifyPresentationInput, Collections.emptyMap());
  }


  /**
   * Verifying VP
   * Verifying Verifiable Presentation (signatures)  &#x60;isValid&#x60; - true if presentation verified &#x60;error&#x60; verificaction error.
   * @param verifyPresentationInput VerifyPresentation (required)
   * @param additionalHeaders additionalHeaders for this call
   * @return VerifyPresentationOutput
   * @throws ApiException if fails to make API call
   */
  public VerifyPresentationOutput verifyPresentation(@javax.annotation.Nonnull VerifyPresentationInput verifyPresentationInput, Map<String, String> additionalHeaders) throws ApiException {
    Object localVarPostBody = verifyPresentationInput;
    
    // verify the required parameter 'verifyPresentationInput' is set
    if (verifyPresentationInput == null) {
      throw new ApiException(400, "Missing the required parameter 'verifyPresentationInput' when calling verifyPresentation");
    }
    
    // create path and map variables
    String localVarPath = "/v1/verifier/verify-vp";

    StringJoiner localVarQueryStringJoiner = new StringJoiner("&");
    String localVarQueryParameterBaseName;
    List<Pair> localVarQueryParams = new ArrayList<Pair>();
    List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
    Map<String, String> localVarHeaderParams = new HashMap<String, String>();
    Map<String, String> localVarCookieParams = new HashMap<String, String>();
    Map<String, Object> localVarFormParams = new HashMap<String, Object>();

    
    localVarHeaderParams.putAll(additionalHeaders);

    
    
    final String[] localVarAccepts = {
      "application/json"
    };
    final String localVarAccept = apiClient.selectHeaderAccept(localVarAccepts);

    final String[] localVarContentTypes = {
      "application/json"
    };
    final String localVarContentType = apiClient.selectHeaderContentType(localVarContentTypes);

    String[] localVarAuthNames = new String[] { "ProjectTokenAuth" };

    TypeReference<VerifyPresentationOutput> localVarReturnType = new TypeReference<VerifyPresentationOutput>() {};
    return apiClient.invokeAPI(
        localVarPath,
        "POST",
        localVarQueryParams,
        localVarCollectionQueryParams,
        localVarQueryStringJoiner.toString(),
        localVarPostBody,
        localVarHeaderParams,
        localVarCookieParams,
        localVarFormParams,
        localVarAccept,
        localVarContentType,
        localVarAuthNames,
        localVarReturnType
    );
  }

  @Override
  public <T> T invokeAPI(String url, String method, Object request, TypeReference<T> returnType, Map<String, String> additionalHeaders) throws ApiException {
    String localVarPath = url.replace(apiClient.getBaseURL(), "");
    StringJoiner localVarQueryStringJoiner = new StringJoiner("&");
    List<Pair> localVarQueryParams = new ArrayList<Pair>();
    List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
    Map<String, String> localVarHeaderParams = new HashMap<String, String>();
    Map<String, String> localVarCookieParams = new HashMap<String, String>();
    Map<String, Object> localVarFormParams = new HashMap<String, Object>();

    localVarHeaderParams.putAll(additionalHeaders);

    final String[] localVarAccepts = {
      "application/json"
    };
    final String localVarAccept = apiClient.selectHeaderAccept(localVarAccepts);

    final String[] localVarContentTypes = {
      "application/json"
    };
    final String localVarContentType = apiClient.selectHeaderContentType(localVarContentTypes);

    String[] localVarAuthNames = new String[] { "ProjectTokenAuth" };

    return apiClient.invokeAPI(
      localVarPath,
        method,
        localVarQueryParams,
        localVarCollectionQueryParams,
        localVarQueryStringJoiner.toString(),
        request,
        localVarHeaderParams,
        localVarCookieParams,
        localVarFormParams,
        localVarAccept,
        localVarContentType,
        localVarAuthNames,
        returnType
    );
  }
}
