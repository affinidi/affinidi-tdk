/*
 * IotaService
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: info@affinidi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.affinidi.tdk.iota.client.models;

import java.util.Objects;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.Arrays;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.affinidi.tdk.iota.client.JSON;

/**
 * PrepareRequest
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-12-20T07:42:30.473408518Z[Etc/UTC]", comments = "Generator version: 7.9.0")
public class PrepareRequest {
  public static final String SERIALIZED_NAME_CONNECTION_CLIENT_ID = "connectionClientId";
  @SerializedName(SERIALIZED_NAME_CONNECTION_CLIENT_ID)
  private String connectionClientId;

  public static final String SERIALIZED_NAME_QUERY_ID = "queryId";
  @SerializedName(SERIALIZED_NAME_QUERY_ID)
  private String queryId;

  public static final String SERIALIZED_NAME_CORRELATION_ID = "correlationId";
  @SerializedName(SERIALIZED_NAME_CORRELATION_ID)
  private String correlationId;

  public static final String SERIALIZED_NAME_TOKEN_MAX_AGE = "tokenMaxAge";
  @SerializedName(SERIALIZED_NAME_TOKEN_MAX_AGE)
  private BigDecimal tokenMaxAge;

  public static final String SERIALIZED_NAME_AUDIENCE = "audience";
  @SerializedName(SERIALIZED_NAME_AUDIENCE)
  private String audience;

  public PrepareRequest() {
  }

  public PrepareRequest connectionClientId(String connectionClientId) {
    this.connectionClientId = connectionClientId;
    return this;
  }

  /**
   * Get connectionClientId
   * @return connectionClientId
   */
  @javax.annotation.Nonnull
  public String getConnectionClientId() {
    return connectionClientId;
  }

  public void setConnectionClientId(String connectionClientId) {
    this.connectionClientId = connectionClientId;
  }


  public PrepareRequest queryId(String queryId) {
    this.queryId = queryId;
    return this;
  }

  /**
   * Get queryId
   * @return queryId
   */
  @javax.annotation.Nonnull
  public String getQueryId() {
    return queryId;
  }

  public void setQueryId(String queryId) {
    this.queryId = queryId;
  }


  public PrepareRequest correlationId(String correlationId) {
    this.correlationId = correlationId;
    return this;
  }

  /**
   * A unique, randomly generated identifier that correlates the request and response in the data-sharing request flow.
   * @return correlationId
   */
  @javax.annotation.Nonnull
  public String getCorrelationId() {
    return correlationId;
  }

  public void setCorrelationId(String correlationId) {
    this.correlationId = correlationId;
  }


  public PrepareRequest tokenMaxAge(BigDecimal tokenMaxAge) {
    this.tokenMaxAge = tokenMaxAge;
    return this;
  }

  /**
   * This is the lifetime of the signed request token during the data-sharing flow.
   * @return tokenMaxAge
   */
  @javax.annotation.Nullable
  public BigDecimal getTokenMaxAge() {
    return tokenMaxAge;
  }

  public void setTokenMaxAge(BigDecimal tokenMaxAge) {
    this.tokenMaxAge = tokenMaxAge;
  }


  public PrepareRequest audience(String audience) {
    this.audience = audience;
    return this;
  }

  /**
   * Get audience
   * @return audience
   */
  @javax.annotation.Nullable
  public String getAudience() {
    return audience;
  }

  public void setAudience(String audience) {
    this.audience = audience;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    PrepareRequest prepareRequest = (PrepareRequest) o;
    return Objects.equals(this.connectionClientId, prepareRequest.connectionClientId) &&
        Objects.equals(this.queryId, prepareRequest.queryId) &&
        Objects.equals(this.correlationId, prepareRequest.correlationId) &&
        Objects.equals(this.tokenMaxAge, prepareRequest.tokenMaxAge) &&
        Objects.equals(this.audience, prepareRequest.audience);
  }

  @Override
  public int hashCode() {
    return Objects.hash(connectionClientId, queryId, correlationId, tokenMaxAge, audience);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PrepareRequest {\n");
    sb.append("    connectionClientId: ").append(toIndentedString(connectionClientId)).append("\n");
    sb.append("    queryId: ").append(toIndentedString(queryId)).append("\n");
    sb.append("    correlationId: ").append(toIndentedString(correlationId)).append("\n");
    sb.append("    tokenMaxAge: ").append(toIndentedString(tokenMaxAge)).append("\n");
    sb.append("    audience: ").append(toIndentedString(audience)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


  public static HashSet<String> openapiFields;
  public static HashSet<String> openapiRequiredFields;

  static {
    // a set of all properties/fields (JSON key names)
    openapiFields = new HashSet<String>();
    openapiFields.add("connectionClientId");
    openapiFields.add("queryId");
    openapiFields.add("correlationId");
    openapiFields.add("tokenMaxAge");
    openapiFields.add("audience");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("connectionClientId");
    openapiRequiredFields.add("queryId");
    openapiRequiredFields.add("correlationId");
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to PrepareRequest
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!PrepareRequest.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in PrepareRequest is not found in the empty JSON string", PrepareRequest.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!PrepareRequest.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `PrepareRequest` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : PrepareRequest.openapiRequiredFields) {
        if (jsonElement.getAsJsonObject().get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if (!jsonObj.get("connectionClientId").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `connectionClientId` to be a primitive type in the JSON string but got `%s`", jsonObj.get("connectionClientId").toString()));
      }
      if (!jsonObj.get("queryId").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `queryId` to be a primitive type in the JSON string but got `%s`", jsonObj.get("queryId").toString()));
      }
      if (!jsonObj.get("correlationId").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `correlationId` to be a primitive type in the JSON string but got `%s`", jsonObj.get("correlationId").toString()));
      }
      if ((jsonObj.get("audience") != null && !jsonObj.get("audience").isJsonNull()) && !jsonObj.get("audience").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `audience` to be a primitive type in the JSON string but got `%s`", jsonObj.get("audience").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!PrepareRequest.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'PrepareRequest' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<PrepareRequest> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(PrepareRequest.class));

       return (TypeAdapter<T>) new TypeAdapter<PrepareRequest>() {
           @Override
           public void write(JsonWriter out, PrepareRequest value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public PrepareRequest read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of PrepareRequest given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of PrepareRequest
   * @throws IOException if the JSON string is invalid with respect to PrepareRequest
   */
  public static PrepareRequest fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, PrepareRequest.class);
  }

  /**
   * Convert an instance of PrepareRequest to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}
