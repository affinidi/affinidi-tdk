/*
 * CloudWalletEssentials
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: info@affinidi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.affinidi.tdk.wallets.client.models;

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

import com.affinidi.tdk.wallets.client.JSON;

/**
 * WalletDtoKeysInner
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-12-20T07:42:04.611339126Z[Etc/UTC]", comments = "Generator version: 7.9.0")
public class WalletDtoKeysInner {
  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private String id;

  public static final String SERIALIZED_NAME_ARI = "ari";
  @SerializedName(SERIALIZED_NAME_ARI)
  private String ari;

  public WalletDtoKeysInner() {
  }

  public WalletDtoKeysInner id(String id) {
    this.id = id;
    return this;
  }

  /**
   * id of linked key
   * @return id
   */
  @javax.annotation.Nullable
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }


  public WalletDtoKeysInner ari(String ari) {
    this.ari = ari;
    return this;
  }

  /**
   * ari of linked key
   * @return ari
   */
  @javax.annotation.Nullable
  public String getAri() {
    return ari;
  }

  public void setAri(String ari) {
    this.ari = ari;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    WalletDtoKeysInner walletDtoKeysInner = (WalletDtoKeysInner) o;
    return Objects.equals(this.id, walletDtoKeysInner.id) &&
        Objects.equals(this.ari, walletDtoKeysInner.ari);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, ari);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class WalletDtoKeysInner {\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    ari: ").append(toIndentedString(ari)).append("\n");
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
    openapiFields.add("id");
    openapiFields.add("ari");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to WalletDtoKeysInner
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!WalletDtoKeysInner.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in WalletDtoKeysInner is not found in the empty JSON string", WalletDtoKeysInner.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!WalletDtoKeysInner.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `WalletDtoKeysInner` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if ((jsonObj.get("id") != null && !jsonObj.get("id").isJsonNull()) && !jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
      if ((jsonObj.get("ari") != null && !jsonObj.get("ari").isJsonNull()) && !jsonObj.get("ari").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `ari` to be a primitive type in the JSON string but got `%s`", jsonObj.get("ari").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!WalletDtoKeysInner.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'WalletDtoKeysInner' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<WalletDtoKeysInner> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(WalletDtoKeysInner.class));

       return (TypeAdapter<T>) new TypeAdapter<WalletDtoKeysInner>() {
           @Override
           public void write(JsonWriter out, WalletDtoKeysInner value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public WalletDtoKeysInner read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of WalletDtoKeysInner given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of WalletDtoKeysInner
   * @throws IOException if the JSON string is invalid with respect to WalletDtoKeysInner
   */
  public static WalletDtoKeysInner fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, WalletDtoKeysInner.class);
  }

  /**
   * Convert an instance of WalletDtoKeysInner to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}
