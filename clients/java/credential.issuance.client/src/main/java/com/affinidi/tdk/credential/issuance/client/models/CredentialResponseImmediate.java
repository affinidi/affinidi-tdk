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
import com.affinidi.tdk.credential.issuance.client.models.CredentialResponseImmediateCNonceExpiresIn;
import com.affinidi.tdk.credential.issuance.client.models.CredentialResponseImmediateCredential;
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

import com.affinidi.tdk.credential.issuance.client.JSON;

/**
 * CredentialResponseImmediate
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-12-20T07:40:48.329558310Z[Etc/UTC]", comments = "Generator version: 7.9.0")
public class CredentialResponseImmediate {
  public static final String SERIALIZED_NAME_CREDENTIAL = "credential";
  @SerializedName(SERIALIZED_NAME_CREDENTIAL)
  private CredentialResponseImmediateCredential credential;

  public static final String SERIALIZED_NAME_C_NONCE = "c_nonce";
  @SerializedName(SERIALIZED_NAME_C_NONCE)
  private String cNonce;

  public static final String SERIALIZED_NAME_C_NONCE_EXPIRES_IN = "c_nonce_expires_in";
  @SerializedName(SERIALIZED_NAME_C_NONCE_EXPIRES_IN)
  private CredentialResponseImmediateCNonceExpiresIn cNonceExpiresIn;

  public CredentialResponseImmediate() {
  }

  public CredentialResponseImmediate credential(CredentialResponseImmediateCredential credential) {
    this.credential = credential;
    return this;
  }

  /**
   * Get credential
   * @return credential
   */
  @javax.annotation.Nonnull
  public CredentialResponseImmediateCredential getCredential() {
    return credential;
  }

  public void setCredential(CredentialResponseImmediateCredential credential) {
    this.credential = credential;
  }


  public CredentialResponseImmediate cNonce(String cNonce) {
    this.cNonce = cNonce;
    return this;
  }

  /**
   * String containing a nonce to be used when creating a proof of possession of the key proof
   * @return cNonce
   */
  @javax.annotation.Nonnull
  public String getcNonce() {
    return cNonce;
  }

  public void setcNonce(String cNonce) {
    this.cNonce = cNonce;
  }


  public CredentialResponseImmediate cNonceExpiresIn(CredentialResponseImmediateCNonceExpiresIn cNonceExpiresIn) {
    this.cNonceExpiresIn = cNonceExpiresIn;
    return this;
  }

  /**
   * Get cNonceExpiresIn
   * @return cNonceExpiresIn
   */
  @javax.annotation.Nonnull
  public CredentialResponseImmediateCNonceExpiresIn getcNonceExpiresIn() {
    return cNonceExpiresIn;
  }

  public void setcNonceExpiresIn(CredentialResponseImmediateCNonceExpiresIn cNonceExpiresIn) {
    this.cNonceExpiresIn = cNonceExpiresIn;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    CredentialResponseImmediate credentialResponseImmediate = (CredentialResponseImmediate) o;
    return Objects.equals(this.credential, credentialResponseImmediate.credential) &&
        Objects.equals(this.cNonce, credentialResponseImmediate.cNonce) &&
        Objects.equals(this.cNonceExpiresIn, credentialResponseImmediate.cNonceExpiresIn);
  }

  @Override
  public int hashCode() {
    return Objects.hash(credential, cNonce, cNonceExpiresIn);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CredentialResponseImmediate {\n");
    sb.append("    credential: ").append(toIndentedString(credential)).append("\n");
    sb.append("    cNonce: ").append(toIndentedString(cNonce)).append("\n");
    sb.append("    cNonceExpiresIn: ").append(toIndentedString(cNonceExpiresIn)).append("\n");
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
    openapiFields.add("credential");
    openapiFields.add("c_nonce");
    openapiFields.add("c_nonce_expires_in");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("credential");
    openapiRequiredFields.add("c_nonce");
    openapiRequiredFields.add("c_nonce_expires_in");
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to CredentialResponseImmediate
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!CredentialResponseImmediate.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in CredentialResponseImmediate is not found in the empty JSON string", CredentialResponseImmediate.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!CredentialResponseImmediate.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `CredentialResponseImmediate` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : CredentialResponseImmediate.openapiRequiredFields) {
        if (jsonElement.getAsJsonObject().get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      // validate the required field `credential`
      CredentialResponseImmediateCredential.validateJsonElement(jsonObj.get("credential"));
      if (!jsonObj.get("c_nonce").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `c_nonce` to be a primitive type in the JSON string but got `%s`", jsonObj.get("c_nonce").toString()));
      }
      // validate the required field `c_nonce_expires_in`
      CredentialResponseImmediateCNonceExpiresIn.validateJsonElement(jsonObj.get("c_nonce_expires_in"));
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!CredentialResponseImmediate.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'CredentialResponseImmediate' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<CredentialResponseImmediate> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(CredentialResponseImmediate.class));

       return (TypeAdapter<T>) new TypeAdapter<CredentialResponseImmediate>() {
           @Override
           public void write(JsonWriter out, CredentialResponseImmediate value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public CredentialResponseImmediate read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of CredentialResponseImmediate given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of CredentialResponseImmediate
   * @throws IOException if the JSON string is invalid with respect to CredentialResponseImmediate
   */
  public static CredentialResponseImmediate fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, CredentialResponseImmediate.class);
  }

  /**
   * Convert an instance of CredentialResponseImmediate to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}
