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
import com.affinidi.tdk.credential.issuance.client.models.IssuanceConfigMiniDto;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

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
 * IssuanceConfigListResponse
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-12-20T07:40:48.329558310Z[Etc/UTC]", comments = "Generator version: 7.9.0")
public class IssuanceConfigListResponse {
  public static final String SERIALIZED_NAME_CONFIGURATIONS = "configurations";
  @SerializedName(SERIALIZED_NAME_CONFIGURATIONS)
  private List<IssuanceConfigMiniDto> configurations = new ArrayList<>();

  public IssuanceConfigListResponse() {
  }

  public IssuanceConfigListResponse configurations(List<IssuanceConfigMiniDto> configurations) {
    this.configurations = configurations;
    return this;
  }

  public IssuanceConfigListResponse addConfigurationsItem(IssuanceConfigMiniDto configurationsItem) {
    if (this.configurations == null) {
      this.configurations = new ArrayList<>();
    }
    this.configurations.add(configurationsItem);
    return this;
  }

  /**
   * Get configurations
   * @return configurations
   */
  @javax.annotation.Nonnull
  public List<IssuanceConfigMiniDto> getConfigurations() {
    return configurations;
  }

  public void setConfigurations(List<IssuanceConfigMiniDto> configurations) {
    this.configurations = configurations;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    IssuanceConfigListResponse issuanceConfigListResponse = (IssuanceConfigListResponse) o;
    return Objects.equals(this.configurations, issuanceConfigListResponse.configurations);
  }

  @Override
  public int hashCode() {
    return Objects.hash(configurations);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class IssuanceConfigListResponse {\n");
    sb.append("    configurations: ").append(toIndentedString(configurations)).append("\n");
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
    openapiFields.add("configurations");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("configurations");
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to IssuanceConfigListResponse
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!IssuanceConfigListResponse.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in IssuanceConfigListResponse is not found in the empty JSON string", IssuanceConfigListResponse.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!IssuanceConfigListResponse.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `IssuanceConfigListResponse` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : IssuanceConfigListResponse.openapiRequiredFields) {
        if (jsonElement.getAsJsonObject().get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      // ensure the json data is an array
      if (!jsonObj.get("configurations").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `configurations` to be an array in the JSON string but got `%s`", jsonObj.get("configurations").toString()));
      }

      JsonArray jsonArrayconfigurations = jsonObj.getAsJsonArray("configurations");
      // validate the required field `configurations` (array)
      for (int i = 0; i < jsonArrayconfigurations.size(); i++) {
        IssuanceConfigMiniDto.validateJsonElement(jsonArrayconfigurations.get(i));
      };
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!IssuanceConfigListResponse.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'IssuanceConfigListResponse' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<IssuanceConfigListResponse> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(IssuanceConfigListResponse.class));

       return (TypeAdapter<T>) new TypeAdapter<IssuanceConfigListResponse>() {
           @Override
           public void write(JsonWriter out, IssuanceConfigListResponse value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public IssuanceConfigListResponse read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of IssuanceConfigListResponse given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of IssuanceConfigListResponse
   * @throws IOException if the JSON string is invalid with respect to IssuanceConfigListResponse
   */
  public static IssuanceConfigListResponse fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, IssuanceConfigListResponse.class);
  }

  /**
   * Convert an instance of IssuanceConfigListResponse to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}
