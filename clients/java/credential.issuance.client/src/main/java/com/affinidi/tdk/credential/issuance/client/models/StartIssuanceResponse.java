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


package com.affinidi.tdk.credential.issuance.client.models;

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

import com.affinidi.tdk.credential.issuance.client.JSON;

/**
 * StartIssuanceResponse
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-12-20T07:40:48.329558310Z[Etc/UTC]", comments = "Generator version: 7.9.0")
public class StartIssuanceResponse {
  public static final String SERIALIZED_NAME_CREDENTIAL_OFFER_URI = "credentialOfferUri";
  @SerializedName(SERIALIZED_NAME_CREDENTIAL_OFFER_URI)
  private String credentialOfferUri;

  public static final String SERIALIZED_NAME_TX_CODE = "txCode";
  @SerializedName(SERIALIZED_NAME_TX_CODE)
  private String txCode;

  public static final String SERIALIZED_NAME_ISSUANCE_ID = "issuanceId";
  @SerializedName(SERIALIZED_NAME_ISSUANCE_ID)
  private String issuanceId;

  public static final String SERIALIZED_NAME_EXPIRES_IN = "expiresIn";
  @SerializedName(SERIALIZED_NAME_EXPIRES_IN)
  private BigDecimal expiresIn;

  public StartIssuanceResponse() {
  }

  public StartIssuanceResponse credentialOfferUri(String credentialOfferUri) {
    this.credentialOfferUri = credentialOfferUri;
    return this;
  }

  /**
   * URL where wallet can view offer details
   * @return credentialOfferUri
   */
  @javax.annotation.Nonnull
  public String getCredentialOfferUri() {
    return credentialOfferUri;
  }

  public void setCredentialOfferUri(String credentialOfferUri) {
    this.credentialOfferUri = credentialOfferUri;
  }


  public StartIssuanceResponse txCode(String txCode) {
    this.txCode = txCode;
    return this;
  }

  /**
   * One time transaction code generated by CIS
   * @return txCode
   */
  @javax.annotation.Nullable
  public String getTxCode() {
    return txCode;
  }

  public void setTxCode(String txCode) {
    this.txCode = txCode;
  }


  public StartIssuanceResponse issuanceId(String issuanceId) {
    this.issuanceId = issuanceId;
    return this;
  }

  /**
   * Website&#39;s internal identifier. Website may use to get info about the status of issuance flow. If it is not provided, CIS will generate one.
   * @return issuanceId
   */
  @javax.annotation.Nonnull
  public String getIssuanceId() {
    return issuanceId;
  }

  public void setIssuanceId(String issuanceId) {
    this.issuanceId = issuanceId;
  }


  public StartIssuanceResponse expiresIn(BigDecimal expiresIn) {
    this.expiresIn = expiresIn;
    return this;
  }

  /**
   * Expire time in seconds
   * @return expiresIn
   */
  @javax.annotation.Nonnull
  public BigDecimal getExpiresIn() {
    return expiresIn;
  }

  public void setExpiresIn(BigDecimal expiresIn) {
    this.expiresIn = expiresIn;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    StartIssuanceResponse startIssuanceResponse = (StartIssuanceResponse) o;
    return Objects.equals(this.credentialOfferUri, startIssuanceResponse.credentialOfferUri) &&
        Objects.equals(this.txCode, startIssuanceResponse.txCode) &&
        Objects.equals(this.issuanceId, startIssuanceResponse.issuanceId) &&
        Objects.equals(this.expiresIn, startIssuanceResponse.expiresIn);
  }

  @Override
  public int hashCode() {
    return Objects.hash(credentialOfferUri, txCode, issuanceId, expiresIn);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class StartIssuanceResponse {\n");
    sb.append("    credentialOfferUri: ").append(toIndentedString(credentialOfferUri)).append("\n");
    sb.append("    txCode: ").append(toIndentedString(txCode)).append("\n");
    sb.append("    issuanceId: ").append(toIndentedString(issuanceId)).append("\n");
    sb.append("    expiresIn: ").append(toIndentedString(expiresIn)).append("\n");
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
    openapiFields.add("credentialOfferUri");
    openapiFields.add("txCode");
    openapiFields.add("issuanceId");
    openapiFields.add("expiresIn");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("credentialOfferUri");
    openapiRequiredFields.add("issuanceId");
    openapiRequiredFields.add("expiresIn");
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to StartIssuanceResponse
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!StartIssuanceResponse.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in StartIssuanceResponse is not found in the empty JSON string", StartIssuanceResponse.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!StartIssuanceResponse.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `StartIssuanceResponse` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : StartIssuanceResponse.openapiRequiredFields) {
        if (jsonElement.getAsJsonObject().get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if (!jsonObj.get("credentialOfferUri").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `credentialOfferUri` to be a primitive type in the JSON string but got `%s`", jsonObj.get("credentialOfferUri").toString()));
      }
      if ((jsonObj.get("txCode") != null && !jsonObj.get("txCode").isJsonNull()) && !jsonObj.get("txCode").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `txCode` to be a primitive type in the JSON string but got `%s`", jsonObj.get("txCode").toString()));
      }
      if (!jsonObj.get("issuanceId").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `issuanceId` to be a primitive type in the JSON string but got `%s`", jsonObj.get("issuanceId").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!StartIssuanceResponse.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'StartIssuanceResponse' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<StartIssuanceResponse> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(StartIssuanceResponse.class));

       return (TypeAdapter<T>) new TypeAdapter<StartIssuanceResponse>() {
           @Override
           public void write(JsonWriter out, StartIssuanceResponse value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public StartIssuanceResponse read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of StartIssuanceResponse given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of StartIssuanceResponse
   * @throws IOException if the JSON string is invalid with respect to StartIssuanceResponse
   */
  public static StartIssuanceResponse fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, StartIssuanceResponse.class);
  }

  /**
   * Convert an instance of StartIssuanceResponse to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}
