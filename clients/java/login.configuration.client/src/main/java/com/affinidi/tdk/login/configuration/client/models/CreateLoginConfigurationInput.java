/*
 * OidcVpAdapterBackend
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: info@affinidi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.affinidi.tdk.login.configuration.client.models;

import java.util.Objects;
import com.affinidi.tdk.login.configuration.client.models.IdTokenMapping;
import com.affinidi.tdk.login.configuration.client.models.LoginConfigurationClientMetadataInput;
import com.affinidi.tdk.login.configuration.client.models.TokenEndpointAuthMethod;
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

import com.affinidi.tdk.login.configuration.client.JSON;

/**
 * CreateLoginConfigurationInput
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-12-20T07:40:19.236969578Z[Etc/UTC]", comments = "Generator version: 7.9.0")
public class CreateLoginConfigurationInput {
  public static final String SERIALIZED_NAME_NAME = "name";
  @SerializedName(SERIALIZED_NAME_NAME)
  private String name;

  public static final String SERIALIZED_NAME_DESCRIPTION = "description";
  @SerializedName(SERIALIZED_NAME_DESCRIPTION)
  private String description;

  public static final String SERIALIZED_NAME_REDIRECT_URIS = "redirectUris";
  @SerializedName(SERIALIZED_NAME_REDIRECT_URIS)
  private List<String> redirectUris = new ArrayList<>();

  public static final String SERIALIZED_NAME_POST_LOGOUT_REDIRECT_URIS = "postLogoutRedirectUris";
  @SerializedName(SERIALIZED_NAME_POST_LOGOUT_REDIRECT_URIS)
  private List<String> postLogoutRedirectUris = new ArrayList<>();

  public static final String SERIALIZED_NAME_VP_DEFINITION = "vpDefinition";
  @SerializedName(SERIALIZED_NAME_VP_DEFINITION)
  private String vpDefinition;

  public static final String SERIALIZED_NAME_PRESENTATION_DEFINITION = "presentationDefinition";
  @SerializedName(SERIALIZED_NAME_PRESENTATION_DEFINITION)
  private Object presentationDefinition;

  public static final String SERIALIZED_NAME_ID_TOKEN_MAPPING = "idTokenMapping";
  @SerializedName(SERIALIZED_NAME_ID_TOKEN_MAPPING)
  private IdTokenMapping idTokenMapping = new ArrayList<>();

  public static final String SERIALIZED_NAME_CLIENT_METADATA = "clientMetadata";
  @SerializedName(SERIALIZED_NAME_CLIENT_METADATA)
  private LoginConfigurationClientMetadataInput clientMetadata;

  /**
   * ID token claims output format. Default is array.
   */
  @JsonAdapter(ClaimFormatEnum.Adapter.class)
  public enum ClaimFormatEnum {
    ARRAY("array"),
    
    MAP("map");

    private String value;

    ClaimFormatEnum(String value) {
      this.value = value;
    }

    public String getValue() {
      return value;
    }

    @Override
    public String toString() {
      return String.valueOf(value);
    }

    public static ClaimFormatEnum fromValue(String value) {
      for (ClaimFormatEnum b : ClaimFormatEnum.values()) {
        if (b.value.equals(value)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }

    public static class Adapter extends TypeAdapter<ClaimFormatEnum> {
      @Override
      public void write(final JsonWriter jsonWriter, final ClaimFormatEnum enumeration) throws IOException {
        jsonWriter.value(enumeration.getValue());
      }

      @Override
      public ClaimFormatEnum read(final JsonReader jsonReader) throws IOException {
        String value =  jsonReader.nextString();
        return ClaimFormatEnum.fromValue(value);
      }
    }

    public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      String value = jsonElement.getAsString();
      ClaimFormatEnum.fromValue(value);
    }
  }

  public static final String SERIALIZED_NAME_CLAIM_FORMAT = "claimFormat";
  @SerializedName(SERIALIZED_NAME_CLAIM_FORMAT)
  private ClaimFormatEnum claimFormat;

  public static final String SERIALIZED_NAME_FAIL_ON_MAPPING_CONFLICT = "failOnMappingConflict";
  @SerializedName(SERIALIZED_NAME_FAIL_ON_MAPPING_CONFLICT)
  private Boolean failOnMappingConflict = true;

  public static final String SERIALIZED_NAME_SCOPE = "scope";
  @SerializedName(SERIALIZED_NAME_SCOPE)
  private String scope;

  public static final String SERIALIZED_NAME_TOKEN_ENDPOINT_AUTH_METHOD = "tokenEndpointAuthMethod";
  @SerializedName(SERIALIZED_NAME_TOKEN_ENDPOINT_AUTH_METHOD)
  private TokenEndpointAuthMethod tokenEndpointAuthMethod;

  public CreateLoginConfigurationInput() {
  }

  public CreateLoginConfigurationInput name(String name) {
    this.name = name;
    return this;
  }

  /**
   * User defined login configuration name
   * @return name
   */
  @javax.annotation.Nonnull
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public CreateLoginConfigurationInput description(String description) {
    this.description = description;
    return this;
  }

  /**
   * Get description
   * @return description
   */
  @javax.annotation.Nullable
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }


  public CreateLoginConfigurationInput redirectUris(List<String> redirectUris) {
    this.redirectUris = redirectUris;
    return this;
  }

  public CreateLoginConfigurationInput addRedirectUrisItem(String redirectUrisItem) {
    if (this.redirectUris == null) {
      this.redirectUris = new ArrayList<>();
    }
    this.redirectUris.add(redirectUrisItem);
    return this;
  }

  /**
   * OAuth 2.0 Redirect URIs
   * @return redirectUris
   */
  @javax.annotation.Nonnull
  public List<String> getRedirectUris() {
    return redirectUris;
  }

  public void setRedirectUris(List<String> redirectUris) {
    this.redirectUris = redirectUris;
  }


  public CreateLoginConfigurationInput postLogoutRedirectUris(List<String> postLogoutRedirectUris) {
    this.postLogoutRedirectUris = postLogoutRedirectUris;
    return this;
  }

  public CreateLoginConfigurationInput addPostLogoutRedirectUrisItem(String postLogoutRedirectUrisItem) {
    if (this.postLogoutRedirectUris == null) {
      this.postLogoutRedirectUris = new ArrayList<>();
    }
    this.postLogoutRedirectUris.add(postLogoutRedirectUrisItem);
    return this;
  }

  /**
   * Post Logout Redirect URIs, Used to redirect the user&#39;s browser to a specified URL after the logout process is complete. Must match the domain, port, scheme of at least one of the registered redirect URIs
   * @return postLogoutRedirectUris
   */
  @javax.annotation.Nullable
  public List<String> getPostLogoutRedirectUris() {
    return postLogoutRedirectUris;
  }

  public void setPostLogoutRedirectUris(List<String> postLogoutRedirectUris) {
    this.postLogoutRedirectUris = postLogoutRedirectUris;
  }


  public CreateLoginConfigurationInput vpDefinition(String vpDefinition) {
    this.vpDefinition = vpDefinition;
    return this;
  }

  /**
   * VP definition in JSON stringify format
   * @return vpDefinition
   */
  @javax.annotation.Nullable
  public String getVpDefinition() {
    return vpDefinition;
  }

  public void setVpDefinition(String vpDefinition) {
    this.vpDefinition = vpDefinition;
  }


  public CreateLoginConfigurationInput presentationDefinition(Object presentationDefinition) {
    this.presentationDefinition = presentationDefinition;
    return this;
  }

  /**
   * Presentation Definition
   * @return presentationDefinition
   */
  @javax.annotation.Nullable
  public Object getPresentationDefinition() {
    return presentationDefinition;
  }

  public void setPresentationDefinition(Object presentationDefinition) {
    this.presentationDefinition = presentationDefinition;
  }


  public CreateLoginConfigurationInput idTokenMapping(IdTokenMapping idTokenMapping) {
    this.idTokenMapping = idTokenMapping;
    return this;
  }

  /**
   * Get idTokenMapping
   * @return idTokenMapping
   */
  @javax.annotation.Nullable
  public IdTokenMapping getIdTokenMapping() {
    return idTokenMapping;
  }

  public void setIdTokenMapping(IdTokenMapping idTokenMapping) {
    this.idTokenMapping = idTokenMapping;
  }


  public CreateLoginConfigurationInput clientMetadata(LoginConfigurationClientMetadataInput clientMetadata) {
    this.clientMetadata = clientMetadata;
    return this;
  }

  /**
   * Get clientMetadata
   * @return clientMetadata
   */
  @javax.annotation.Nullable
  public LoginConfigurationClientMetadataInput getClientMetadata() {
    return clientMetadata;
  }

  public void setClientMetadata(LoginConfigurationClientMetadataInput clientMetadata) {
    this.clientMetadata = clientMetadata;
  }


  public CreateLoginConfigurationInput claimFormat(ClaimFormatEnum claimFormat) {
    this.claimFormat = claimFormat;
    return this;
  }

  /**
   * ID token claims output format. Default is array.
   * @return claimFormat
   */
  @javax.annotation.Nullable
  public ClaimFormatEnum getClaimFormat() {
    return claimFormat;
  }

  public void setClaimFormat(ClaimFormatEnum claimFormat) {
    this.claimFormat = claimFormat;
  }


  public CreateLoginConfigurationInput failOnMappingConflict(Boolean failOnMappingConflict) {
    this.failOnMappingConflict = failOnMappingConflict;
    return this;
  }

  /**
   * Interrupts login process if duplications of data fields names will be found
   * @return failOnMappingConflict
   */
  @javax.annotation.Nullable
  public Boolean getFailOnMappingConflict() {
    return failOnMappingConflict;
  }

  public void setFailOnMappingConflict(Boolean failOnMappingConflict) {
    this.failOnMappingConflict = failOnMappingConflict;
  }


  public CreateLoginConfigurationInput scope(String scope) {
    this.scope = scope;
    return this;
  }

  /**
   * List of groups separated by space
   * @return scope
   */
  @javax.annotation.Nullable
  public String getScope() {
    return scope;
  }

  public void setScope(String scope) {
    this.scope = scope;
  }


  public CreateLoginConfigurationInput tokenEndpointAuthMethod(TokenEndpointAuthMethod tokenEndpointAuthMethod) {
    this.tokenEndpointAuthMethod = tokenEndpointAuthMethod;
    return this;
  }

  /**
   * Get tokenEndpointAuthMethod
   * @return tokenEndpointAuthMethod
   */
  @javax.annotation.Nullable
  public TokenEndpointAuthMethod getTokenEndpointAuthMethod() {
    return tokenEndpointAuthMethod;
  }

  public void setTokenEndpointAuthMethod(TokenEndpointAuthMethod tokenEndpointAuthMethod) {
    this.tokenEndpointAuthMethod = tokenEndpointAuthMethod;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    CreateLoginConfigurationInput createLoginConfigurationInput = (CreateLoginConfigurationInput) o;
    return Objects.equals(this.name, createLoginConfigurationInput.name) &&
        Objects.equals(this.description, createLoginConfigurationInput.description) &&
        Objects.equals(this.redirectUris, createLoginConfigurationInput.redirectUris) &&
        Objects.equals(this.postLogoutRedirectUris, createLoginConfigurationInput.postLogoutRedirectUris) &&
        Objects.equals(this.vpDefinition, createLoginConfigurationInput.vpDefinition) &&
        Objects.equals(this.presentationDefinition, createLoginConfigurationInput.presentationDefinition) &&
        Objects.equals(this.idTokenMapping, createLoginConfigurationInput.idTokenMapping) &&
        Objects.equals(this.clientMetadata, createLoginConfigurationInput.clientMetadata) &&
        Objects.equals(this.claimFormat, createLoginConfigurationInput.claimFormat) &&
        Objects.equals(this.failOnMappingConflict, createLoginConfigurationInput.failOnMappingConflict) &&
        Objects.equals(this.scope, createLoginConfigurationInput.scope) &&
        Objects.equals(this.tokenEndpointAuthMethod, createLoginConfigurationInput.tokenEndpointAuthMethod);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, description, redirectUris, postLogoutRedirectUris, vpDefinition, presentationDefinition, idTokenMapping, clientMetadata, claimFormat, failOnMappingConflict, scope, tokenEndpointAuthMethod);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CreateLoginConfigurationInput {\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    redirectUris: ").append(toIndentedString(redirectUris)).append("\n");
    sb.append("    postLogoutRedirectUris: ").append(toIndentedString(postLogoutRedirectUris)).append("\n");
    sb.append("    vpDefinition: ").append(toIndentedString(vpDefinition)).append("\n");
    sb.append("    presentationDefinition: ").append(toIndentedString(presentationDefinition)).append("\n");
    sb.append("    idTokenMapping: ").append(toIndentedString(idTokenMapping)).append("\n");
    sb.append("    clientMetadata: ").append(toIndentedString(clientMetadata)).append("\n");
    sb.append("    claimFormat: ").append(toIndentedString(claimFormat)).append("\n");
    sb.append("    failOnMappingConflict: ").append(toIndentedString(failOnMappingConflict)).append("\n");
    sb.append("    scope: ").append(toIndentedString(scope)).append("\n");
    sb.append("    tokenEndpointAuthMethod: ").append(toIndentedString(tokenEndpointAuthMethod)).append("\n");
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
    openapiFields.add("name");
    openapiFields.add("description");
    openapiFields.add("redirectUris");
    openapiFields.add("postLogoutRedirectUris");
    openapiFields.add("vpDefinition");
    openapiFields.add("presentationDefinition");
    openapiFields.add("idTokenMapping");
    openapiFields.add("clientMetadata");
    openapiFields.add("claimFormat");
    openapiFields.add("failOnMappingConflict");
    openapiFields.add("scope");
    openapiFields.add("tokenEndpointAuthMethod");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("name");
    openapiRequiredFields.add("redirectUris");
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to CreateLoginConfigurationInput
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!CreateLoginConfigurationInput.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in CreateLoginConfigurationInput is not found in the empty JSON string", CreateLoginConfigurationInput.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!CreateLoginConfigurationInput.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `CreateLoginConfigurationInput` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : CreateLoginConfigurationInput.openapiRequiredFields) {
        if (jsonElement.getAsJsonObject().get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if (!jsonObj.get("name").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `name` to be a primitive type in the JSON string but got `%s`", jsonObj.get("name").toString()));
      }
      if ((jsonObj.get("description") != null && !jsonObj.get("description").isJsonNull()) && !jsonObj.get("description").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `description` to be a primitive type in the JSON string but got `%s`", jsonObj.get("description").toString()));
      }
      // ensure the required json array is present
      if (jsonObj.get("redirectUris") == null) {
        throw new IllegalArgumentException("Expected the field `linkedContent` to be an array in the JSON string but got `null`");
      } else if (!jsonObj.get("redirectUris").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `redirectUris` to be an array in the JSON string but got `%s`", jsonObj.get("redirectUris").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("postLogoutRedirectUris") != null && !jsonObj.get("postLogoutRedirectUris").isJsonNull() && !jsonObj.get("postLogoutRedirectUris").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `postLogoutRedirectUris` to be an array in the JSON string but got `%s`", jsonObj.get("postLogoutRedirectUris").toString()));
      }
      if ((jsonObj.get("vpDefinition") != null && !jsonObj.get("vpDefinition").isJsonNull()) && !jsonObj.get("vpDefinition").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `vpDefinition` to be a primitive type in the JSON string but got `%s`", jsonObj.get("vpDefinition").toString()));
      }
      // validate the optional field `clientMetadata`
      if (jsonObj.get("clientMetadata") != null && !jsonObj.get("clientMetadata").isJsonNull()) {
        LoginConfigurationClientMetadataInput.validateJsonElement(jsonObj.get("clientMetadata"));
      }
      if ((jsonObj.get("claimFormat") != null && !jsonObj.get("claimFormat").isJsonNull()) && !jsonObj.get("claimFormat").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `claimFormat` to be a primitive type in the JSON string but got `%s`", jsonObj.get("claimFormat").toString()));
      }
      // validate the optional field `claimFormat`
      if (jsonObj.get("claimFormat") != null && !jsonObj.get("claimFormat").isJsonNull()) {
        ClaimFormatEnum.validateJsonElement(jsonObj.get("claimFormat"));
      }
      if ((jsonObj.get("scope") != null && !jsonObj.get("scope").isJsonNull()) && !jsonObj.get("scope").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `scope` to be a primitive type in the JSON string but got `%s`", jsonObj.get("scope").toString()));
      }
      // validate the optional field `tokenEndpointAuthMethod`
      if (jsonObj.get("tokenEndpointAuthMethod") != null && !jsonObj.get("tokenEndpointAuthMethod").isJsonNull()) {
        TokenEndpointAuthMethod.validateJsonElement(jsonObj.get("tokenEndpointAuthMethod"));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!CreateLoginConfigurationInput.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'CreateLoginConfigurationInput' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<CreateLoginConfigurationInput> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(CreateLoginConfigurationInput.class));

       return (TypeAdapter<T>) new TypeAdapter<CreateLoginConfigurationInput>() {
           @Override
           public void write(JsonWriter out, CreateLoginConfigurationInput value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public CreateLoginConfigurationInput read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of CreateLoginConfigurationInput given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of CreateLoginConfigurationInput
   * @throws IOException if the JSON string is invalid with respect to CreateLoginConfigurationInput
   */
  public static CreateLoginConfigurationInput fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, CreateLoginConfigurationInput.class);
  }

  /**
   * Convert an instance of CreateLoginConfigurationInput to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}
