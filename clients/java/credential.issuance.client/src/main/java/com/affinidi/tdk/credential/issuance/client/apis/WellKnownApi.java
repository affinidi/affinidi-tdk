/*
 * CredentialIssuanceService
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: info@affinidi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.affinidi.tdk.credential.issuance.client.apis;

import com.affinidi.tdk.credential.issuance.client.ApiCallback;
import com.affinidi.tdk.credential.issuance.client.ApiClient;
import com.affinidi.tdk.credential.issuance.client.ApiException;
import com.affinidi.tdk.credential.issuance.client.ApiResponse;
import com.affinidi.tdk.credential.issuance.client.Configuration;
import com.affinidi.tdk.credential.issuance.client.Pair;
import com.affinidi.tdk.credential.issuance.client.ProgressRequestBody;
import com.affinidi.tdk.credential.issuance.client.ProgressResponseBody;

import com.google.gson.reflect.TypeToken;

import java.io.IOException;


import com.affinidi.tdk.credential.issuance.client.models.WellKnownOpenIdCredentialIssuerResponse;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class WellKnownApi {
    private ApiClient localVarApiClient;
    private int localHostIndex;
    private String localCustomBaseUrl;

    public WellKnownApi() {
        this(Configuration.getDefaultApiClient());
    }

    public WellKnownApi(ApiClient apiClient) {
        this.localVarApiClient = apiClient;
    }

    public ApiClient getApiClient() {
        return localVarApiClient;
    }

    public void setApiClient(ApiClient apiClient) {
        this.localVarApiClient = apiClient;
    }

    public int getHostIndex() {
        return localHostIndex;
    }

    public void setHostIndex(int hostIndex) {
        this.localHostIndex = hostIndex;
    }

    public String getCustomBaseUrl() {
        return localCustomBaseUrl;
    }

    public void setCustomBaseUrl(String customBaseUrl) {
        this.localCustomBaseUrl = customBaseUrl;
    }

    /**
     * Build call for getWellKnownOpenIdCredentialIssuer
     * @param projectId Affinidi project id (required)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Credential issuer Metadata and capabilities </td><td>  * Access-Control-Allow-Origin -  <br>  * Access-Control-Allow-Methods -  <br>  * Access-Control-Allow-Headers -  <br>  </td></tr>
     </table>
     */
    public okhttp3.Call getWellKnownOpenIdCredentialIssuerCall(String projectId, final ApiCallback _callback) throws ApiException {
        String basePath = null;
        // Operation Servers
        String[] localBasePaths = new String[] {  };

        // Determine Base Path to Use
        if (localCustomBaseUrl != null){
            basePath = localCustomBaseUrl;
        } else if ( localBasePaths.length > 0 ) {
            basePath = localBasePaths[localHostIndex];
        } else {
            basePath = null;
        }

        Object localVarPostBody = null;

        // create path and map variables
        String localVarPath = "/v1/{projectId}/.well-known/openid-credential-issuer"
            .replace("{" + "projectId" + "}", localVarApiClient.escapeString(projectId.toString()));

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        if (localVarContentType != null) {
            localVarHeaderParams.put("Content-Type", localVarContentType);
        }

        String[] localVarAuthNames = new String[] {  };
        return localVarApiClient.buildCall(basePath, localVarPath, "GET", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarCookieParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call getWellKnownOpenIdCredentialIssuerValidateBeforeCall(String projectId, final ApiCallback _callback) throws ApiException {
        // verify the required parameter 'projectId' is set
        if (projectId == null) {
            throw new ApiException("Missing the required parameter 'projectId' when calling getWellKnownOpenIdCredentialIssuer(Async)");
        }

        return getWellKnownOpenIdCredentialIssuerCall(projectId, _callback);

    }

    /**
     * 
     * 
     * @param projectId Affinidi project id (required)
     * @return WellKnownOpenIdCredentialIssuerResponse
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Credential issuer Metadata and capabilities </td><td>  * Access-Control-Allow-Origin -  <br>  * Access-Control-Allow-Methods -  <br>  * Access-Control-Allow-Headers -  <br>  </td></tr>
     </table>
     */
    public WellKnownOpenIdCredentialIssuerResponse getWellKnownOpenIdCredentialIssuer(String projectId) throws ApiException {
        ApiResponse<WellKnownOpenIdCredentialIssuerResponse> localVarResp = getWellKnownOpenIdCredentialIssuerWithHttpInfo(projectId);
        return localVarResp.getData();
    }

    /**
     * 
     * 
     * @param projectId Affinidi project id (required)
     * @return ApiResponse&lt;WellKnownOpenIdCredentialIssuerResponse&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Credential issuer Metadata and capabilities </td><td>  * Access-Control-Allow-Origin -  <br>  * Access-Control-Allow-Methods -  <br>  * Access-Control-Allow-Headers -  <br>  </td></tr>
     </table>
     */
    public ApiResponse<WellKnownOpenIdCredentialIssuerResponse> getWellKnownOpenIdCredentialIssuerWithHttpInfo(String projectId) throws ApiException {
        okhttp3.Call localVarCall = getWellKnownOpenIdCredentialIssuerValidateBeforeCall(projectId, null);
        Type localVarReturnType = new TypeToken<WellKnownOpenIdCredentialIssuerResponse>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     *  (asynchronously)
     * 
     * @param projectId Affinidi project id (required)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Credential issuer Metadata and capabilities </td><td>  * Access-Control-Allow-Origin -  <br>  * Access-Control-Allow-Methods -  <br>  * Access-Control-Allow-Headers -  <br>  </td></tr>
     </table>
     */
    public okhttp3.Call getWellKnownOpenIdCredentialIssuerAsync(String projectId, final ApiCallback<WellKnownOpenIdCredentialIssuerResponse> _callback) throws ApiException {

        okhttp3.Call localVarCall = getWellKnownOpenIdCredentialIssuerValidateBeforeCall(projectId, _callback);
        Type localVarReturnType = new TypeToken<WellKnownOpenIdCredentialIssuerResponse>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
}