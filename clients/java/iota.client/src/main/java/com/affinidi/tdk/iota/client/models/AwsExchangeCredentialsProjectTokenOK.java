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
import com.affinidi.tdk.iota.client.models.AwsExchangeCredentialsProjectTokenOKCredentials;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
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
 * AwsExchangeCredentialsProjectTokenOK
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-12-20T07:42:30.473408518Z[Etc/UTC]", comments = "Generator version: 7.9.0")
public class AwsExchangeCredentialsProjectTokenOK {
  public static final String SERIALIZED_NAME_CONNECTION_CLIENT_ID = "connectionClientId";
  @SerializedName(SERIALIZED_NAME_CONNECTION_CLIENT_ID)
  private String connectionClientId;

  public static final String SERIALIZED_NAME_CREDENTIALS = "credentials";
  @SerializedName(SERIALIZED_NAME_CREDENTIALS)
  private AwsExchangeCredentialsProjectTokenOKCredentials credentials;

  public AwsExchangeCredentialsProjectTokenOK() {
  }

  public AwsExchangeCredentialsProjectTokenOK connectionClientId(String connectionClientId) {
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


  public AwsExchangeCredentialsProjectTokenOK credentials(AwsExchangeCredentialsProjectTokenOKCredentials credentials) {
    this.credentials = credentials;
    return this;
  }

  /**
   * Get credentials
   * @return credentials
   */
  @javax.annotation.Nonnull
  public AwsExchangeCredentialsProjectTokenOKCredentials getCredentials() {
    return credentials;
  }

  public void setCredentials(AwsExchangeCredentialsProjectTokenOKCredentials credentials) {
    this.credentials = credentials;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    AwsExchangeCredentialsProjectTokenOK awsExchangeCredentialsProjectTokenOK = (AwsExchangeCredentialsProjectTokenOK) o;
    return Objects.equals(this.connectionClientId, awsExchangeCredentialsProjectTokenOK.connectionClientId) &&
        Objects.equals(this.credentials, awsExchangeCredentialsProjectTokenOK.credentials);
  }

  @Override
  public int hashCode() {
    return Objects.hash(connectionClientId, credentials);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AwsExchangeCredentialsProjectTokenOK {\n");
    sb.append("    connectionClientId: ").append(toIndentedString(connectionClientId)).append("\n");
    sb.append("    credentials: ").append(toIndentedString(credentials)).append("\n");
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
    openapiFields.add("credentials");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("connectionClientId");
    openapiRequiredFields.add("credentials");
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to AwsExchangeCredentialsProjectTokenOK
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!AwsExchangeCredentialsProjectTokenOK.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in AwsExchangeCredentialsProjectTokenOK is not found in the empty JSON string", AwsExchangeCredentialsProjectTokenOK.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!AwsExchangeCredentialsProjectTokenOK.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `AwsExchangeCredentialsProjectTokenOK` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : AwsExchangeCredentialsProjectTokenOK.openapiRequiredFields) {
        if (jsonElement.getAsJsonObject().get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if (!jsonObj.get("connectionClientId").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `connectionClientId` to be a primitive type in the JSON string but got `%s`", jsonObj.get("connectionClientId").toString()));
      }
      // validate the required field `credentials`
      AwsExchangeCredentialsProjectTokenOKCredentials.validateJsonElement(jsonObj.get("credentials"));
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!AwsExchangeCredentialsProjectTokenOK.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'AwsExchangeCredentialsProjectTokenOK' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<AwsExchangeCredentialsProjectTokenOK> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(AwsExchangeCredentialsProjectTokenOK.class));

       return (TypeAdapter<T>) new TypeAdapter<AwsExchangeCredentialsProjectTokenOK>() {
           @Override
           public void write(JsonWriter out, AwsExchangeCredentialsProjectTokenOK value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public AwsExchangeCredentialsProjectTokenOK read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of AwsExchangeCredentialsProjectTokenOK given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of AwsExchangeCredentialsProjectTokenOK
   * @throws IOException if the JSON string is invalid with respect to AwsExchangeCredentialsProjectTokenOK
   */
  public static AwsExchangeCredentialsProjectTokenOK fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, AwsExchangeCredentialsProjectTokenOK.class);
  }

  /**
   * Convert an instance of AwsExchangeCredentialsProjectTokenOK to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}
