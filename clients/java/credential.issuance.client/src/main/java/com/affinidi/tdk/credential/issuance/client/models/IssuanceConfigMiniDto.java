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
import java.util.HashMap;
import java.util.Map;

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
 * IssuanceConfigMiniDto
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-12-20T07:40:48.329558310Z[Etc/UTC]", comments = "Generator version: 7.9.0")
public class IssuanceConfigMiniDto {
  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private String id;

  public static final String SERIALIZED_NAME_NAME = "name";
  @SerializedName(SERIALIZED_NAME_NAME)
  private String name;

  public static final String SERIALIZED_NAME_ISSUER_DID = "issuerDid";
  @SerializedName(SERIALIZED_NAME_ISSUER_DID)
  private String issuerDid;

  public static final String SERIALIZED_NAME_ISSUER_WALLET_ID = "issuerWalletId";
  @SerializedName(SERIALIZED_NAME_ISSUER_WALLET_ID)
  private String issuerWalletId;

  public static final String SERIALIZED_NAME_CREDENTIAL_OFFER_DURATION = "credentialOfferDuration";
  @SerializedName(SERIALIZED_NAME_CREDENTIAL_OFFER_DURATION)
  private BigDecimal credentialOfferDuration;

  public static final String SERIALIZED_NAME_C_NONCE_DURATION = "cNonceDuration";
  @SerializedName(SERIALIZED_NAME_C_NONCE_DURATION)
  private BigDecimal cNonceDuration;

  /**
   * String identifying the format of this Credential, i.e., jwt_vc_json-ld or ldp_vc. Depending on the format value, the object contains further elements defining the type
   */
  @JsonAdapter(FormatEnum.Adapter.class)
  public enum FormatEnum {
    LDP_VC("ldp_vc"),
    
    JWT_VC_JSON_LD("jwt_vc_json-ld"),
    
    SD_JWT_VC_JSON_LD("sd_jwt_vc_json-ld");

    private String value;

    FormatEnum(String value) {
      this.value = value;
    }

    public String getValue() {
      return value;
    }

    @Override
    public String toString() {
      return String.valueOf(value);
    }

    public static FormatEnum fromValue(String value) {
      for (FormatEnum b : FormatEnum.values()) {
        if (b.value.equals(value)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }

    public static class Adapter extends TypeAdapter<FormatEnum> {
      @Override
      public void write(final JsonWriter jsonWriter, final FormatEnum enumeration) throws IOException {
        jsonWriter.value(enumeration.getValue());
      }

      @Override
      public FormatEnum read(final JsonReader jsonReader) throws IOException {
        String value =  jsonReader.nextString();
        return FormatEnum.fromValue(value);
      }
    }

    public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      String value = jsonElement.getAsString();
      FormatEnum.fromValue(value);
    }
  }

  public static final String SERIALIZED_NAME_FORMAT = "format";
  @SerializedName(SERIALIZED_NAME_FORMAT)
  private FormatEnum format;

  public static final String SERIALIZED_NAME_ISSUER_URI = "issuerUri";
  @SerializedName(SERIALIZED_NAME_ISSUER_URI)
  private String issuerUri;

  public static final String SERIALIZED_NAME_ISSUER_METADATA = "issuerMetadata";
  @SerializedName(SERIALIZED_NAME_ISSUER_METADATA)
  private Map<String, Object> issuerMetadata = new HashMap<>();

  public static final String SERIALIZED_NAME_VERSION = "version";
  @SerializedName(SERIALIZED_NAME_VERSION)
  private BigDecimal version;

  public IssuanceConfigMiniDto() {
  }

  public IssuanceConfigMiniDto id(String id) {
    this.id = id;
    return this;
  }

  /**
   * Get id
   * @return id
   */
  @javax.annotation.Nonnull
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }


  public IssuanceConfigMiniDto name(String name) {
    this.name = name;
    return this;
  }

  /**
   * Get name
   * @return name
   */
  @javax.annotation.Nullable
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public IssuanceConfigMiniDto issuerDid(String issuerDid) {
    this.issuerDid = issuerDid;
    return this;
  }

  /**
   * Issuer DID
   * @return issuerDid
   */
  @javax.annotation.Nullable
  public String getIssuerDid() {
    return issuerDid;
  }

  public void setIssuerDid(String issuerDid) {
    this.issuerDid = issuerDid;
  }


  public IssuanceConfigMiniDto issuerWalletId(String issuerWalletId) {
    this.issuerWalletId = issuerWalletId;
    return this;
  }

  /**
   * Issuer Wallet id
   * @return issuerWalletId
   */
  @javax.annotation.Nullable
  public String getIssuerWalletId() {
    return issuerWalletId;
  }

  public void setIssuerWalletId(String issuerWalletId) {
    this.issuerWalletId = issuerWalletId;
  }


  public IssuanceConfigMiniDto credentialOfferDuration(BigDecimal credentialOfferDuration) {
    this.credentialOfferDuration = credentialOfferDuration;
    return this;
  }

  /**
   * credential offer duration in second
   * @return credentialOfferDuration
   */
  @javax.annotation.Nullable
  public BigDecimal getCredentialOfferDuration() {
    return credentialOfferDuration;
  }

  public void setCredentialOfferDuration(BigDecimal credentialOfferDuration) {
    this.credentialOfferDuration = credentialOfferDuration;
  }


  public IssuanceConfigMiniDto cNonceDuration(BigDecimal cNonceDuration) {
    this.cNonceDuration = cNonceDuration;
    return this;
  }

  /**
   * c_nonce duration in second
   * @return cNonceDuration
   */
  @javax.annotation.Nullable
  public BigDecimal getcNonceDuration() {
    return cNonceDuration;
  }

  public void setcNonceDuration(BigDecimal cNonceDuration) {
    this.cNonceDuration = cNonceDuration;
  }


  public IssuanceConfigMiniDto format(FormatEnum format) {
    this.format = format;
    return this;
  }

  /**
   * String identifying the format of this Credential, i.e., jwt_vc_json-ld or ldp_vc. Depending on the format value, the object contains further elements defining the type
   * @return format
   */
  @javax.annotation.Nullable
  public FormatEnum getFormat() {
    return format;
  }

  public void setFormat(FormatEnum format) {
    this.format = format;
  }


  public IssuanceConfigMiniDto issuerUri(String issuerUri) {
    this.issuerUri = issuerUri;
    return this;
  }

  /**
   * Issuer URI
   * @return issuerUri
   */
  @javax.annotation.Nullable
  public String getIssuerUri() {
    return issuerUri;
  }

  public void setIssuerUri(String issuerUri) {
    this.issuerUri = issuerUri;
  }


  public IssuanceConfigMiniDto issuerMetadata(Map<String, Object> issuerMetadata) {
    this.issuerMetadata = issuerMetadata;
    return this;
  }

  public IssuanceConfigMiniDto putIssuerMetadataItem(String key, Object issuerMetadataItem) {
    if (this.issuerMetadata == null) {
      this.issuerMetadata = new HashMap<>();
    }
    this.issuerMetadata.put(key, issuerMetadataItem);
    return this;
  }

  /**
   * Issuer public information wallet may want to show to user during consent confirmation
   * @return issuerMetadata
   */
  @javax.annotation.Nullable
  public Map<String, Object> getIssuerMetadata() {
    return issuerMetadata;
  }

  public void setIssuerMetadata(Map<String, Object> issuerMetadata) {
    this.issuerMetadata = issuerMetadata;
  }


  public IssuanceConfigMiniDto version(BigDecimal version) {
    this.version = version;
    return this;
  }

  /**
   * Get version
   * @return version
   */
  @javax.annotation.Nullable
  public BigDecimal getVersion() {
    return version;
  }

  public void setVersion(BigDecimal version) {
    this.version = version;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    IssuanceConfigMiniDto issuanceConfigMiniDto = (IssuanceConfigMiniDto) o;
    return Objects.equals(this.id, issuanceConfigMiniDto.id) &&
        Objects.equals(this.name, issuanceConfigMiniDto.name) &&
        Objects.equals(this.issuerDid, issuanceConfigMiniDto.issuerDid) &&
        Objects.equals(this.issuerWalletId, issuanceConfigMiniDto.issuerWalletId) &&
        Objects.equals(this.credentialOfferDuration, issuanceConfigMiniDto.credentialOfferDuration) &&
        Objects.equals(this.cNonceDuration, issuanceConfigMiniDto.cNonceDuration) &&
        Objects.equals(this.format, issuanceConfigMiniDto.format) &&
        Objects.equals(this.issuerUri, issuanceConfigMiniDto.issuerUri) &&
        Objects.equals(this.issuerMetadata, issuanceConfigMiniDto.issuerMetadata) &&
        Objects.equals(this.version, issuanceConfigMiniDto.version);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, name, issuerDid, issuerWalletId, credentialOfferDuration, cNonceDuration, format, issuerUri, issuerMetadata, version);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class IssuanceConfigMiniDto {\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    issuerDid: ").append(toIndentedString(issuerDid)).append("\n");
    sb.append("    issuerWalletId: ").append(toIndentedString(issuerWalletId)).append("\n");
    sb.append("    credentialOfferDuration: ").append(toIndentedString(credentialOfferDuration)).append("\n");
    sb.append("    cNonceDuration: ").append(toIndentedString(cNonceDuration)).append("\n");
    sb.append("    format: ").append(toIndentedString(format)).append("\n");
    sb.append("    issuerUri: ").append(toIndentedString(issuerUri)).append("\n");
    sb.append("    issuerMetadata: ").append(toIndentedString(issuerMetadata)).append("\n");
    sb.append("    version: ").append(toIndentedString(version)).append("\n");
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
    openapiFields.add("name");
    openapiFields.add("issuerDid");
    openapiFields.add("issuerWalletId");
    openapiFields.add("credentialOfferDuration");
    openapiFields.add("cNonceDuration");
    openapiFields.add("format");
    openapiFields.add("issuerUri");
    openapiFields.add("issuerMetadata");
    openapiFields.add("version");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("id");
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to IssuanceConfigMiniDto
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!IssuanceConfigMiniDto.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in IssuanceConfigMiniDto is not found in the empty JSON string", IssuanceConfigMiniDto.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!IssuanceConfigMiniDto.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `IssuanceConfigMiniDto` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : IssuanceConfigMiniDto.openapiRequiredFields) {
        if (jsonElement.getAsJsonObject().get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if (!jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
      if ((jsonObj.get("name") != null && !jsonObj.get("name").isJsonNull()) && !jsonObj.get("name").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `name` to be a primitive type in the JSON string but got `%s`", jsonObj.get("name").toString()));
      }
      if ((jsonObj.get("issuerDid") != null && !jsonObj.get("issuerDid").isJsonNull()) && !jsonObj.get("issuerDid").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `issuerDid` to be a primitive type in the JSON string but got `%s`", jsonObj.get("issuerDid").toString()));
      }
      if ((jsonObj.get("issuerWalletId") != null && !jsonObj.get("issuerWalletId").isJsonNull()) && !jsonObj.get("issuerWalletId").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `issuerWalletId` to be a primitive type in the JSON string but got `%s`", jsonObj.get("issuerWalletId").toString()));
      }
      if ((jsonObj.get("format") != null && !jsonObj.get("format").isJsonNull()) && !jsonObj.get("format").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `format` to be a primitive type in the JSON string but got `%s`", jsonObj.get("format").toString()));
      }
      // validate the optional field `format`
      if (jsonObj.get("format") != null && !jsonObj.get("format").isJsonNull()) {
        FormatEnum.validateJsonElement(jsonObj.get("format"));
      }
      if ((jsonObj.get("issuerUri") != null && !jsonObj.get("issuerUri").isJsonNull()) && !jsonObj.get("issuerUri").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `issuerUri` to be a primitive type in the JSON string but got `%s`", jsonObj.get("issuerUri").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!IssuanceConfigMiniDto.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'IssuanceConfigMiniDto' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<IssuanceConfigMiniDto> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(IssuanceConfigMiniDto.class));

       return (TypeAdapter<T>) new TypeAdapter<IssuanceConfigMiniDto>() {
           @Override
           public void write(JsonWriter out, IssuanceConfigMiniDto value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public IssuanceConfigMiniDto read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of IssuanceConfigMiniDto given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of IssuanceConfigMiniDto
   * @throws IOException if the JSON string is invalid with respect to IssuanceConfigMiniDto
   */
  public static IssuanceConfigMiniDto fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, IssuanceConfigMiniDto.class);
  }

  /**
   * Convert an instance of IssuanceConfigMiniDto to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}
