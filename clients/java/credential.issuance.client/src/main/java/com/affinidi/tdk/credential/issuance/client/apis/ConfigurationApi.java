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

import com.fasterxml.jackson.core.type.TypeReference;

import com.affinidi.tdk.credential.issuance.client.ApiException;
import com.affinidi.tdk.credential.issuance.client.ApiClient;
import com.affinidi.tdk.credential.issuance.client.BaseApi;
import com.affinidi.tdk.credential.issuance.client.Configuration;
import com.affinidi.tdk.credential.issuance.client.Pair;

import com.affinidi.tdk.credential.issuance.client.models.CreateIssuanceConfig400Response;
import com.affinidi.tdk.credential.issuance.client.models.CreateIssuanceConfigInput;
import com.affinidi.tdk.credential.issuance.client.models.InvalidParameterError;
import com.affinidi.tdk.credential.issuance.client.models.IssuanceConfigDto;
import com.affinidi.tdk.credential.issuance.client.models.IssuanceConfigListResponse;
import com.affinidi.tdk.credential.issuance.client.models.NotFoundError;
import com.affinidi.tdk.credential.issuance.client.models.UpdateIssuanceConfigInput;


import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringJoiner;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.13.0")
public class ConfigurationApi extends BaseApi {

  public ConfigurationApi() {
    super(Configuration.getDefaultApiClient());
  }

  public ConfigurationApi(ApiClient apiClient) {
    super(apiClient);
  }

  /**
   * 
   * Create issuance configuration, project have only one configuration
   * @param createIssuanceConfigInput Request body of create configuration (required)
   * @return IssuanceConfigDto
   * @throws ApiException if fails to make API call
   */
  public IssuanceConfigDto createIssuanceConfig(@javax.annotation.Nonnull CreateIssuanceConfigInput createIssuanceConfigInput) throws ApiException {
    return this.createIssuanceConfig(createIssuanceConfigInput, Collections.emptyMap());
  }


  /**
   * 
   * Create issuance configuration, project have only one configuration
   * @param createIssuanceConfigInput Request body of create configuration (required)
   * @param additionalHeaders additionalHeaders for this call
   * @return IssuanceConfigDto
   * @throws ApiException if fails to make API call
   */
  public IssuanceConfigDto createIssuanceConfig(@javax.annotation.Nonnull CreateIssuanceConfigInput createIssuanceConfigInput, Map<String, String> additionalHeaders) throws ApiException {
    Object localVarPostBody = createIssuanceConfigInput;
    
    // verify the required parameter 'createIssuanceConfigInput' is set
    if (createIssuanceConfigInput == null) {
      throw new ApiException(400, "Missing the required parameter 'createIssuanceConfigInput' when calling createIssuanceConfig");
    }
    
    // create path and map variables
    String localVarPath = "/v1/configurations";

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

    TypeReference<IssuanceConfigDto> localVarReturnType = new TypeReference<IssuanceConfigDto>() {};
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
   * 
   * Delete project issuance configuration
   * @param configurationId The id of the issuance configuration (required)
   * @throws ApiException if fails to make API call
   */
  public void deleteIssuanceConfigById(@javax.annotation.Nonnull String configurationId) throws ApiException {
    this.deleteIssuanceConfigById(configurationId, Collections.emptyMap());
  }


  /**
   * 
   * Delete project issuance configuration
   * @param configurationId The id of the issuance configuration (required)
   * @param additionalHeaders additionalHeaders for this call
   * @throws ApiException if fails to make API call
   */
  public void deleteIssuanceConfigById(@javax.annotation.Nonnull String configurationId, Map<String, String> additionalHeaders) throws ApiException {
    Object localVarPostBody = null;
    
    // verify the required parameter 'configurationId' is set
    if (configurationId == null) {
      throw new ApiException(400, "Missing the required parameter 'configurationId' when calling deleteIssuanceConfigById");
    }
    
    // create path and map variables
    String localVarPath = "/v1/configurations/{configurationId}"
      .replaceAll("\\{" + "configurationId" + "\\}", apiClient.escapeString(apiClient.parameterToString(configurationId)));

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
      
    };
    final String localVarContentType = apiClient.selectHeaderContentType(localVarContentTypes);

    String[] localVarAuthNames = new String[] { "ProjectTokenAuth" };

    apiClient.invokeAPI(
        localVarPath,
        "DELETE",
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
        null
    );
  }

  /**
   * 
   * Get issuance configuration by id
   * @param configurationId The id of the issuance configuration (required)
   * @return IssuanceConfigDto
   * @throws ApiException if fails to make API call
   */
  public IssuanceConfigDto getIssuanceConfigById(@javax.annotation.Nonnull String configurationId) throws ApiException {
    return this.getIssuanceConfigById(configurationId, Collections.emptyMap());
  }


  /**
   * 
   * Get issuance configuration by id
   * @param configurationId The id of the issuance configuration (required)
   * @param additionalHeaders additionalHeaders for this call
   * @return IssuanceConfigDto
   * @throws ApiException if fails to make API call
   */
  public IssuanceConfigDto getIssuanceConfigById(@javax.annotation.Nonnull String configurationId, Map<String, String> additionalHeaders) throws ApiException {
    Object localVarPostBody = null;
    
    // verify the required parameter 'configurationId' is set
    if (configurationId == null) {
      throw new ApiException(400, "Missing the required parameter 'configurationId' when calling getIssuanceConfigById");
    }
    
    // create path and map variables
    String localVarPath = "/v1/configurations/{configurationId}"
      .replaceAll("\\{" + "configurationId" + "\\}", apiClient.escapeString(apiClient.parameterToString(configurationId)));

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
      
    };
    final String localVarContentType = apiClient.selectHeaderContentType(localVarContentTypes);

    String[] localVarAuthNames = new String[] { "ProjectTokenAuth" };

    TypeReference<IssuanceConfigDto> localVarReturnType = new TypeReference<IssuanceConfigDto>() {};
    return apiClient.invokeAPI(
        localVarPath,
        "GET",
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
   * 
   * Get issuance configuration for my selected project
   * @return IssuanceConfigListResponse
   * @throws ApiException if fails to make API call
   */
  public IssuanceConfigListResponse getIssuanceConfigList() throws ApiException {
    return this.getIssuanceConfigList(Collections.emptyMap());
  }


  /**
   * 
   * Get issuance configuration for my selected project
   * @param additionalHeaders additionalHeaders for this call
   * @return IssuanceConfigListResponse
   * @throws ApiException if fails to make API call
   */
  public IssuanceConfigListResponse getIssuanceConfigList(Map<String, String> additionalHeaders) throws ApiException {
    Object localVarPostBody = null;
    
    // create path and map variables
    String localVarPath = "/v1/configurations";

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
      
    };
    final String localVarContentType = apiClient.selectHeaderContentType(localVarContentTypes);

    String[] localVarAuthNames = new String[] { "ProjectTokenAuth" };

    TypeReference<IssuanceConfigListResponse> localVarReturnType = new TypeReference<IssuanceConfigListResponse>() {};
    return apiClient.invokeAPI(
        localVarPath,
        "GET",
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
   * 
   * Update issuance configuration
   * @param configurationId The id of the issuance configuration (required)
   * @param updateIssuanceConfigInput Request body of update configuration (required)
   * @return IssuanceConfigDto
   * @throws ApiException if fails to make API call
   */
  public IssuanceConfigDto updateIssuanceConfigById(@javax.annotation.Nonnull String configurationId, @javax.annotation.Nonnull UpdateIssuanceConfigInput updateIssuanceConfigInput) throws ApiException {
    return this.updateIssuanceConfigById(configurationId, updateIssuanceConfigInput, Collections.emptyMap());
  }


  /**
   * 
   * Update issuance configuration
   * @param configurationId The id of the issuance configuration (required)
   * @param updateIssuanceConfigInput Request body of update configuration (required)
   * @param additionalHeaders additionalHeaders for this call
   * @return IssuanceConfigDto
   * @throws ApiException if fails to make API call
   */
  public IssuanceConfigDto updateIssuanceConfigById(@javax.annotation.Nonnull String configurationId, @javax.annotation.Nonnull UpdateIssuanceConfigInput updateIssuanceConfigInput, Map<String, String> additionalHeaders) throws ApiException {
    Object localVarPostBody = updateIssuanceConfigInput;
    
    // verify the required parameter 'configurationId' is set
    if (configurationId == null) {
      throw new ApiException(400, "Missing the required parameter 'configurationId' when calling updateIssuanceConfigById");
    }
    
    // verify the required parameter 'updateIssuanceConfigInput' is set
    if (updateIssuanceConfigInput == null) {
      throw new ApiException(400, "Missing the required parameter 'updateIssuanceConfigInput' when calling updateIssuanceConfigById");
    }
    
    // create path and map variables
    String localVarPath = "/v1/configurations/{configurationId}"
      .replaceAll("\\{" + "configurationId" + "\\}", apiClient.escapeString(apiClient.parameterToString(configurationId)));

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

    TypeReference<IssuanceConfigDto> localVarReturnType = new TypeReference<IssuanceConfigDto>() {};
    return apiClient.invokeAPI(
        localVarPath,
        "PUT",
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
