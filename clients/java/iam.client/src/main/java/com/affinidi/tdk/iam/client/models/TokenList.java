/*
 * Iam
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: info@affinidi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.affinidi.tdk.iam.client.models;

import java.util.Objects;
import com.affinidi.tdk.iam.client.models.TokenDto;
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

import com.affinidi.tdk.iam.client.JSON;

/**
 * TokenList
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-12-20T07:41:15.044548999Z[Etc/UTC]", comments = "Generator version: 7.9.0")
public class TokenList {
  public static final String SERIALIZED_NAME_TOKENS = "tokens";
  @SerializedName(SERIALIZED_NAME_TOKENS)
  private List<TokenDto> tokens = new ArrayList<>();

  public static final String SERIALIZED_NAME_LAST_EVALUATED_KEY = "lastEvaluatedKey";
  @SerializedName(SERIALIZED_NAME_LAST_EVALUATED_KEY)
  private String lastEvaluatedKey;

  public TokenList() {
  }

  public TokenList tokens(List<TokenDto> tokens) {
    this.tokens = tokens;
    return this;
  }

  public TokenList addTokensItem(TokenDto tokensItem) {
    if (this.tokens == null) {
      this.tokens = new ArrayList<>();
    }
    this.tokens.add(tokensItem);
    return this;
  }

  /**
   * Get tokens
   * @return tokens
   */
  @javax.annotation.Nonnull
  public List<TokenDto> getTokens() {
    return tokens;
  }

  public void setTokens(List<TokenDto> tokens) {
    this.tokens = tokens;
  }


  public TokenList lastEvaluatedKey(String lastEvaluatedKey) {
    this.lastEvaluatedKey = lastEvaluatedKey;
    return this;
  }

  /**
   * Get lastEvaluatedKey
   * @return lastEvaluatedKey
   */
  @javax.annotation.Nullable
  public String getLastEvaluatedKey() {
    return lastEvaluatedKey;
  }

  public void setLastEvaluatedKey(String lastEvaluatedKey) {
    this.lastEvaluatedKey = lastEvaluatedKey;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    TokenList tokenList = (TokenList) o;
    return Objects.equals(this.tokens, tokenList.tokens) &&
        Objects.equals(this.lastEvaluatedKey, tokenList.lastEvaluatedKey);
  }

  @Override
  public int hashCode() {
    return Objects.hash(tokens, lastEvaluatedKey);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class TokenList {\n");
    sb.append("    tokens: ").append(toIndentedString(tokens)).append("\n");
    sb.append("    lastEvaluatedKey: ").append(toIndentedString(lastEvaluatedKey)).append("\n");
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
    openapiFields.add("tokens");
    openapiFields.add("lastEvaluatedKey");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("tokens");
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to TokenList
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!TokenList.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in TokenList is not found in the empty JSON string", TokenList.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!TokenList.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `TokenList` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : TokenList.openapiRequiredFields) {
        if (jsonElement.getAsJsonObject().get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      // ensure the json data is an array
      if (!jsonObj.get("tokens").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `tokens` to be an array in the JSON string but got `%s`", jsonObj.get("tokens").toString()));
      }

      JsonArray jsonArraytokens = jsonObj.getAsJsonArray("tokens");
      // validate the required field `tokens` (array)
      for (int i = 0; i < jsonArraytokens.size(); i++) {
        TokenDto.validateJsonElement(jsonArraytokens.get(i));
      };
      if ((jsonObj.get("lastEvaluatedKey") != null && !jsonObj.get("lastEvaluatedKey").isJsonNull()) && !jsonObj.get("lastEvaluatedKey").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `lastEvaluatedKey` to be a primitive type in the JSON string but got `%s`", jsonObj.get("lastEvaluatedKey").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!TokenList.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'TokenList' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<TokenList> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(TokenList.class));

       return (TypeAdapter<T>) new TypeAdapter<TokenList>() {
           @Override
           public void write(JsonWriter out, TokenList value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public TokenList read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of TokenList given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of TokenList
   * @throws IOException if the JSON string is invalid with respect to TokenList
   */
  public static TokenList fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, TokenList.class);
  }

  /**
   * Convert an instance of TokenList to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}
