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
 * CallbackInput
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-12-20T07:42:30.473408518Z[Etc/UTC]", comments = "Generator version: 7.9.0")
public class CallbackInput {
  public static final String SERIALIZED_NAME_STATE = "state";
  @SerializedName(SERIALIZED_NAME_STATE)
  private String state;

  public static final String SERIALIZED_NAME_PRESENTATION_SUBMISSION = "presentation_submission";
  @SerializedName(SERIALIZED_NAME_PRESENTATION_SUBMISSION)
  private String presentationSubmission;

  public static final String SERIALIZED_NAME_VP_TOKEN = "vp_token";
  @SerializedName(SERIALIZED_NAME_VP_TOKEN)
  private String vpToken;

  public static final String SERIALIZED_NAME_ERROR = "error";
  @SerializedName(SERIALIZED_NAME_ERROR)
  private String error;

  public static final String SERIALIZED_NAME_ERROR_DESCRIPTION = "error_description";
  @SerializedName(SERIALIZED_NAME_ERROR_DESCRIPTION)
  private String errorDescription;

  public static final String SERIALIZED_NAME_ONBOARDED = "onboarded";
  @SerializedName(SERIALIZED_NAME_ONBOARDED)
  private Boolean onboarded;

  public CallbackInput() {
  }

  public CallbackInput state(String state) {
    this.state = state;
    return this;
  }

  /**
   * A randomly generated string that follows a valid UUID (version 1-5) format to validate the session.
   * @return state
   */
  @javax.annotation.Nonnull
  public String getState() {
    return state;
  }

  public void setState(String state) {
    this.state = state;
  }


  public CallbackInput presentationSubmission(String presentationSubmission) {
    this.presentationSubmission = presentationSubmission;
    return this;
  }

  /**
   * A JSON string format that describes the link between the Verifiable Presentation and Presentation Definition for the verifier. The presentation submission follows the OID4VP standard.
   * @return presentationSubmission
   */
  @javax.annotation.Nullable
  public String getPresentationSubmission() {
    return presentationSubmission;
  }

  public void setPresentationSubmission(String presentationSubmission) {
    this.presentationSubmission = presentationSubmission;
  }


  public CallbackInput vpToken(String vpToken) {
    this.vpToken = vpToken;
    return this;
  }

  /**
   * A JSON string format containing the data the user consented to share in a Verifiable Presentation format. The VP Token follows the OID4VP standard.
   * @return vpToken
   */
  @javax.annotation.Nullable
  public String getVpToken() {
    return vpToken;
  }

  public void setVpToken(String vpToken) {
    this.vpToken = vpToken;
  }


  public CallbackInput error(String error) {
    this.error = error;
    return this;
  }

  /**
   * A short string indicating the error code reported by the service. It follows the OAuth 2.0 error code format (e.g., invalid_request, access_denied). The default is access_denied.
   * @return error
   */
  @javax.annotation.Nullable
  public String getError() {
    return error;
  }

  public void setError(String error) {
    this.error = error;
  }


  public CallbackInput errorDescription(String errorDescription) {
    this.errorDescription = errorDescription;
    return this;
  }

  /**
   * A human-readable description that provides detailed information about the error.
   * @return errorDescription
   */
  @javax.annotation.Nullable
  public String getErrorDescription() {
    return errorDescription;
  }

  public void setErrorDescription(String errorDescription) {
    this.errorDescription = errorDescription;
  }


  public CallbackInput onboarded(Boolean onboarded) {
    this.onboarded = onboarded;
    return this;
  }

  /**
   * It specifies whether the data sharing flow triggered an onboarding process to the Affinidi Vault [New User].
   * @return onboarded
   */
  @javax.annotation.Nullable
  public Boolean getOnboarded() {
    return onboarded;
  }

  public void setOnboarded(Boolean onboarded) {
    this.onboarded = onboarded;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    CallbackInput callbackInput = (CallbackInput) o;
    return Objects.equals(this.state, callbackInput.state) &&
        Objects.equals(this.presentationSubmission, callbackInput.presentationSubmission) &&
        Objects.equals(this.vpToken, callbackInput.vpToken) &&
        Objects.equals(this.error, callbackInput.error) &&
        Objects.equals(this.errorDescription, callbackInput.errorDescription) &&
        Objects.equals(this.onboarded, callbackInput.onboarded);
  }

  @Override
  public int hashCode() {
    return Objects.hash(state, presentationSubmission, vpToken, error, errorDescription, onboarded);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CallbackInput {\n");
    sb.append("    state: ").append(toIndentedString(state)).append("\n");
    sb.append("    presentationSubmission: ").append(toIndentedString(presentationSubmission)).append("\n");
    sb.append("    vpToken: ").append(toIndentedString(vpToken)).append("\n");
    sb.append("    error: ").append(toIndentedString(error)).append("\n");
    sb.append("    errorDescription: ").append(toIndentedString(errorDescription)).append("\n");
    sb.append("    onboarded: ").append(toIndentedString(onboarded)).append("\n");
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
    openapiFields.add("state");
    openapiFields.add("presentation_submission");
    openapiFields.add("vp_token");
    openapiFields.add("error");
    openapiFields.add("error_description");
    openapiFields.add("onboarded");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("state");
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to CallbackInput
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!CallbackInput.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in CallbackInput is not found in the empty JSON string", CallbackInput.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!CallbackInput.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `CallbackInput` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : CallbackInput.openapiRequiredFields) {
        if (jsonElement.getAsJsonObject().get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if (!jsonObj.get("state").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `state` to be a primitive type in the JSON string but got `%s`", jsonObj.get("state").toString()));
      }
      if ((jsonObj.get("presentation_submission") != null && !jsonObj.get("presentation_submission").isJsonNull()) && !jsonObj.get("presentation_submission").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `presentation_submission` to be a primitive type in the JSON string but got `%s`", jsonObj.get("presentation_submission").toString()));
      }
      if ((jsonObj.get("vp_token") != null && !jsonObj.get("vp_token").isJsonNull()) && !jsonObj.get("vp_token").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `vp_token` to be a primitive type in the JSON string but got `%s`", jsonObj.get("vp_token").toString()));
      }
      if ((jsonObj.get("error") != null && !jsonObj.get("error").isJsonNull()) && !jsonObj.get("error").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `error` to be a primitive type in the JSON string but got `%s`", jsonObj.get("error").toString()));
      }
      if ((jsonObj.get("error_description") != null && !jsonObj.get("error_description").isJsonNull()) && !jsonObj.get("error_description").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `error_description` to be a primitive type in the JSON string but got `%s`", jsonObj.get("error_description").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!CallbackInput.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'CallbackInput' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<CallbackInput> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(CallbackInput.class));

       return (TypeAdapter<T>) new TypeAdapter<CallbackInput>() {
           @Override
           public void write(JsonWriter out, CallbackInput value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public CallbackInput read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of CallbackInput given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of CallbackInput
   * @throws IOException if the JSON string is invalid with respect to CallbackInput
   */
  public static CallbackInput fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, CallbackInput.class);
  }

  /**
   * Convert an instance of CallbackInput to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}
