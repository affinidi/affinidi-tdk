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
 * CallbackResponseOK
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-12-20T07:42:30.473408518Z[Etc/UTC]", comments = "Generator version: 7.9.0")
public class CallbackResponseOK {
  public static final String SERIALIZED_NAME_REDIRECT_URI = "redirect_uri";
  @SerializedName(SERIALIZED_NAME_REDIRECT_URI)
  private String redirectUri;

  public static final String SERIALIZED_NAME_RESPONSE_CODE = "response_code";
  @SerializedName(SERIALIZED_NAME_RESPONSE_CODE)
  private String responseCode;

  public static final String SERIALIZED_NAME_MESSAGE = "message";
  @SerializedName(SERIALIZED_NAME_MESSAGE)
  private String message;

  public CallbackResponseOK() {
  }

  public CallbackResponseOK redirectUri(String redirectUri) {
    this.redirectUri = redirectUri;
    return this;
  }

  /**
   * The URL to which Affinidi Vault will redirect the user.
   * @return redirectUri
   */
  @javax.annotation.Nullable
  public String getRedirectUri() {
    return redirectUri;
  }

  public void setRedirectUri(String redirectUri) {
    this.redirectUri = redirectUri;
  }


  public CallbackResponseOK responseCode(String responseCode) {
    this.responseCode = responseCode;
    return this;
  }

  /**
   * A unique identifier to fetch the callback response data. Send this value together with the transactionId to successfully fetch the data.
   * @return responseCode
   */
  @javax.annotation.Nullable
  public String getResponseCode() {
    return responseCode;
  }

  public void setResponseCode(String responseCode) {
    this.responseCode = responseCode;
  }


  public CallbackResponseOK message(String message) {
    this.message = message;
    return this;
  }

  /**
   * A message to the Affinidi Vault indicating that the update was successful.
   * @return message
   */
  @javax.annotation.Nonnull
  public String getMessage() {
    return message;
  }

  public void setMessage(String message) {
    this.message = message;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    CallbackResponseOK callbackResponseOK = (CallbackResponseOK) o;
    return Objects.equals(this.redirectUri, callbackResponseOK.redirectUri) &&
        Objects.equals(this.responseCode, callbackResponseOK.responseCode) &&
        Objects.equals(this.message, callbackResponseOK.message);
  }

  @Override
  public int hashCode() {
    return Objects.hash(redirectUri, responseCode, message);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CallbackResponseOK {\n");
    sb.append("    redirectUri: ").append(toIndentedString(redirectUri)).append("\n");
    sb.append("    responseCode: ").append(toIndentedString(responseCode)).append("\n");
    sb.append("    message: ").append(toIndentedString(message)).append("\n");
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
    openapiFields.add("redirect_uri");
    openapiFields.add("response_code");
    openapiFields.add("message");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("message");
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to CallbackResponseOK
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!CallbackResponseOK.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in CallbackResponseOK is not found in the empty JSON string", CallbackResponseOK.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!CallbackResponseOK.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `CallbackResponseOK` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : CallbackResponseOK.openapiRequiredFields) {
        if (jsonElement.getAsJsonObject().get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if ((jsonObj.get("redirect_uri") != null && !jsonObj.get("redirect_uri").isJsonNull()) && !jsonObj.get("redirect_uri").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `redirect_uri` to be a primitive type in the JSON string but got `%s`", jsonObj.get("redirect_uri").toString()));
      }
      if ((jsonObj.get("response_code") != null && !jsonObj.get("response_code").isJsonNull()) && !jsonObj.get("response_code").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `response_code` to be a primitive type in the JSON string but got `%s`", jsonObj.get("response_code").toString()));
      }
      if (!jsonObj.get("message").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `message` to be a primitive type in the JSON string but got `%s`", jsonObj.get("message").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!CallbackResponseOK.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'CallbackResponseOK' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<CallbackResponseOK> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(CallbackResponseOK.class));

       return (TypeAdapter<T>) new TypeAdapter<CallbackResponseOK>() {
           @Override
           public void write(JsonWriter out, CallbackResponseOK value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public CallbackResponseOK read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of CallbackResponseOK given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of CallbackResponseOK
   * @throws IOException if the JSON string is invalid with respect to CallbackResponseOK
   */
  public static CallbackResponseOK fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, CallbackResponseOK.class);
  }

  /**
   * Convert an instance of CallbackResponseOK to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}
