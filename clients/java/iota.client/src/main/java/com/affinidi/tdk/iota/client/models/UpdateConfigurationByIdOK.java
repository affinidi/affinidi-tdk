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
 * UpdateConfigurationByIdOK
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-12-20T07:42:30.473408518Z[Etc/UTC]", comments = "Generator version: 7.9.0")
public class UpdateConfigurationByIdOK {
  public static final String SERIALIZED_NAME_UPDATE_CONFIGURATION_BY_ID_OK = "updateConfigurationByIdOk";
  @SerializedName(SERIALIZED_NAME_UPDATE_CONFIGURATION_BY_ID_OK)
  private String updateConfigurationByIdOk;

  public UpdateConfigurationByIdOK() {
  }

  public UpdateConfigurationByIdOK updateConfigurationByIdOk(String updateConfigurationByIdOk) {
    this.updateConfigurationByIdOk = updateConfigurationByIdOk;
    return this;
  }

  /**
   * Get updateConfigurationByIdOk
   * @return updateConfigurationByIdOk
   */
  @javax.annotation.Nullable
  public String getUpdateConfigurationByIdOk() {
    return updateConfigurationByIdOk;
  }

  public void setUpdateConfigurationByIdOk(String updateConfigurationByIdOk) {
    this.updateConfigurationByIdOk = updateConfigurationByIdOk;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    UpdateConfigurationByIdOK updateConfigurationByIdOK = (UpdateConfigurationByIdOK) o;
    return Objects.equals(this.updateConfigurationByIdOk, updateConfigurationByIdOK.updateConfigurationByIdOk);
  }

  @Override
  public int hashCode() {
    return Objects.hash(updateConfigurationByIdOk);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class UpdateConfigurationByIdOK {\n");
    sb.append("    updateConfigurationByIdOk: ").append(toIndentedString(updateConfigurationByIdOk)).append("\n");
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
    openapiFields.add("updateConfigurationByIdOk");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to UpdateConfigurationByIdOK
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!UpdateConfigurationByIdOK.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in UpdateConfigurationByIdOK is not found in the empty JSON string", UpdateConfigurationByIdOK.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!UpdateConfigurationByIdOK.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `UpdateConfigurationByIdOK` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if ((jsonObj.get("updateConfigurationByIdOk") != null && !jsonObj.get("updateConfigurationByIdOk").isJsonNull()) && !jsonObj.get("updateConfigurationByIdOk").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `updateConfigurationByIdOk` to be a primitive type in the JSON string but got `%s`", jsonObj.get("updateConfigurationByIdOk").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!UpdateConfigurationByIdOK.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'UpdateConfigurationByIdOK' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<UpdateConfigurationByIdOK> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(UpdateConfigurationByIdOK.class));

       return (TypeAdapter<T>) new TypeAdapter<UpdateConfigurationByIdOK>() {
           @Override
           public void write(JsonWriter out, UpdateConfigurationByIdOK value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public UpdateConfigurationByIdOK read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of UpdateConfigurationByIdOK given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of UpdateConfigurationByIdOK
   * @throws IOException if the JSON string is invalid with respect to UpdateConfigurationByIdOK
   */
  public static UpdateConfigurationByIdOK fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, UpdateConfigurationByIdOK.class);
  }

  /**
   * Convert an instance of UpdateConfigurationByIdOK to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}
