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
import java.util.Arrays;
import com.affinidi.tdk.wallets.client.models.WalletDtoKeysInner;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonTypeName;
import com.fasterxml.jackson.annotation.JsonValue;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import com.fasterxml.jackson.annotation.JsonTypeName;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.StringJoiner;

/**
 * wallet dto
 */
@JsonPropertyOrder({
  WalletDto.JSON_PROPERTY_ID,
  WalletDto.JSON_PROPERTY_DID,
  WalletDto.JSON_PROPERTY_NAME,
  WalletDto.JSON_PROPERTY_DESCRIPTION,
  WalletDto.JSON_PROPERTY_DID_DOCUMENT,
  WalletDto.JSON_PROPERTY_ARI,
  WalletDto.JSON_PROPERTY_KEYS,
  WalletDto.JSON_PROPERTY_CREATED_AT,
  WalletDto.JSON_PROPERTY_MODIFIED_AT
})
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.13.0")
public class WalletDto {
  public static final String JSON_PROPERTY_ID = "id";
  @javax.annotation.Nullable
  private String id;

  public static final String JSON_PROPERTY_DID = "did";
  @javax.annotation.Nullable
  private String did;

  public static final String JSON_PROPERTY_NAME = "name";
  @javax.annotation.Nullable
  private String name;

  public static final String JSON_PROPERTY_DESCRIPTION = "description";
  @javax.annotation.Nullable
  private String description;

  public static final String JSON_PROPERTY_DID_DOCUMENT = "didDocument";
  @javax.annotation.Nullable
  private Object didDocument;

  public static final String JSON_PROPERTY_ARI = "ari";
  @javax.annotation.Nullable
  private String ari;

  public static final String JSON_PROPERTY_KEYS = "keys";
  @javax.annotation.Nullable
  private List<WalletDtoKeysInner> keys = new ArrayList<>();

  public static final String JSON_PROPERTY_CREATED_AT = "createdAt";
  @javax.annotation.Nullable
  private String createdAt;

  public static final String JSON_PROPERTY_MODIFIED_AT = "modifiedAt";
  @javax.annotation.Nullable
  private String modifiedAt;

  public WalletDto() {
  }

  public WalletDto id(@javax.annotation.Nullable String id) {
    
    this.id = id;
    return this;
  }

  /**
   * id of the wallet in uuidV4 format
   * @return id
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_ID)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public String getId() {
    return id;
  }


  @JsonProperty(JSON_PROPERTY_ID)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setId(@javax.annotation.Nullable String id) {
    this.id = id;
  }

  public WalletDto did(@javax.annotation.Nullable String did) {
    
    this.did = did;
    return this;
  }

  /**
   * did of the wallet
   * @return did
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_DID)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public String getDid() {
    return did;
  }


  @JsonProperty(JSON_PROPERTY_DID)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setDid(@javax.annotation.Nullable String did) {
    this.did = did;
  }

  public WalletDto name(@javax.annotation.Nullable String name) {
    
    this.name = name;
    return this;
  }

  /**
   * The name of the wallet
   * @return name
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_NAME)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public String getName() {
    return name;
  }


  @JsonProperty(JSON_PROPERTY_NAME)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setName(@javax.annotation.Nullable String name) {
    this.name = name;
  }

  public WalletDto description(@javax.annotation.Nullable String description) {
    
    this.description = description;
    return this;
  }

  /**
   * The description of the wallet
   * @return description
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_DESCRIPTION)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public String getDescription() {
    return description;
  }


  @JsonProperty(JSON_PROPERTY_DESCRIPTION)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setDescription(@javax.annotation.Nullable String description) {
    this.description = description;
  }

  public WalletDto didDocument(@javax.annotation.Nullable Object didDocument) {
    
    this.didDocument = didDocument;
    return this;
  }

  /**
   * did document of the wallet
   * @return didDocument
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_DID_DOCUMENT)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public Object getDidDocument() {
    return didDocument;
  }


  @JsonProperty(JSON_PROPERTY_DID_DOCUMENT)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setDidDocument(@javax.annotation.Nullable Object didDocument) {
    this.didDocument = didDocument;
  }

  public WalletDto ari(@javax.annotation.Nullable String ari) {
    
    this.ari = ari;
    return this;
  }

  /**
   * ARI of the wallet
   * @return ari
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_ARI)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public String getAri() {
    return ari;
  }


  @JsonProperty(JSON_PROPERTY_ARI)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setAri(@javax.annotation.Nullable String ari) {
    this.ari = ari;
  }

  public WalletDto keys(@javax.annotation.Nullable List<WalletDtoKeysInner> keys) {
    
    this.keys = keys;
    return this;
  }

  public WalletDto addKeysItem(WalletDtoKeysInner keysItem) {
    if (this.keys == null) {
      this.keys = new ArrayList<>();
    }
    this.keys.add(keysItem);
    return this;
  }

  /**
   * Get keys
   * @return keys
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_KEYS)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public List<WalletDtoKeysInner> getKeys() {
    return keys;
  }


  @JsonProperty(JSON_PROPERTY_KEYS)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setKeys(@javax.annotation.Nullable List<WalletDtoKeysInner> keys) {
    this.keys = keys;
  }

  public WalletDto createdAt(@javax.annotation.Nullable String createdAt) {
    
    this.createdAt = createdAt;
    return this;
  }

  /**
   * Get createdAt
   * @return createdAt
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_CREATED_AT)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public String getCreatedAt() {
    return createdAt;
  }


  @JsonProperty(JSON_PROPERTY_CREATED_AT)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setCreatedAt(@javax.annotation.Nullable String createdAt) {
    this.createdAt = createdAt;
  }

  public WalletDto modifiedAt(@javax.annotation.Nullable String modifiedAt) {
    
    this.modifiedAt = modifiedAt;
    return this;
  }

  /**
   * Get modifiedAt
   * @return modifiedAt
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_MODIFIED_AT)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public String getModifiedAt() {
    return modifiedAt;
  }


  @JsonProperty(JSON_PROPERTY_MODIFIED_AT)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setModifiedAt(@javax.annotation.Nullable String modifiedAt) {
    this.modifiedAt = modifiedAt;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    WalletDto walletDto = (WalletDto) o;
    return Objects.equals(this.id, walletDto.id) &&
        Objects.equals(this.did, walletDto.did) &&
        Objects.equals(this.name, walletDto.name) &&
        Objects.equals(this.description, walletDto.description) &&
        Objects.equals(this.didDocument, walletDto.didDocument) &&
        Objects.equals(this.ari, walletDto.ari) &&
        Objects.equals(this.keys, walletDto.keys) &&
        Objects.equals(this.createdAt, walletDto.createdAt) &&
        Objects.equals(this.modifiedAt, walletDto.modifiedAt);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, did, name, description, didDocument, ari, keys, createdAt, modifiedAt);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class WalletDto {\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    did: ").append(toIndentedString(did)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    didDocument: ").append(toIndentedString(didDocument)).append("\n");
    sb.append("    ari: ").append(toIndentedString(ari)).append("\n");
    sb.append("    keys: ").append(toIndentedString(keys)).append("\n");
    sb.append("    createdAt: ").append(toIndentedString(createdAt)).append("\n");
    sb.append("    modifiedAt: ").append(toIndentedString(modifiedAt)).append("\n");
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

  /**
   * Convert the instance into URL query string.
   *
   * @return URL query string
   */
  public String toUrlQueryString() {
    return toUrlQueryString(null);
  }

  /**
   * Convert the instance into URL query string.
   *
   * @param prefix prefix of the query string
   * @return URL query string
   */
  public String toUrlQueryString(String prefix) {
    String suffix = "";
    String containerSuffix = "";
    String containerPrefix = "";
    if (prefix == null) {
      // style=form, explode=true, e.g. /pet?name=cat&type=manx
      prefix = "";
    } else {
      // deepObject style e.g. /pet?id[name]=cat&id[type]=manx
      prefix = prefix + "[";
      suffix = "]";
      containerSuffix = "]";
      containerPrefix = "[";
    }

    StringJoiner joiner = new StringJoiner("&");

    // add `id` to the URL query string
    if (getId() != null) {
      try {
        joiner.add(String.format("%sid%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getId()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    // add `did` to the URL query string
    if (getDid() != null) {
      try {
        joiner.add(String.format("%sdid%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getDid()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    // add `name` to the URL query string
    if (getName() != null) {
      try {
        joiner.add(String.format("%sname%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getName()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    // add `description` to the URL query string
    if (getDescription() != null) {
      try {
        joiner.add(String.format("%sdescription%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getDescription()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    // add `didDocument` to the URL query string
    if (getDidDocument() != null) {
      try {
        joiner.add(String.format("%sdidDocument%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getDidDocument()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    // add `ari` to the URL query string
    if (getAri() != null) {
      try {
        joiner.add(String.format("%sari%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getAri()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    // add `keys` to the URL query string
    if (getKeys() != null) {
      for (int i = 0; i < getKeys().size(); i++) {
        if (getKeys().get(i) != null) {
          joiner.add(getKeys().get(i).toUrlQueryString(String.format("%skeys%s%s", prefix, suffix,
              "".equals(suffix) ? "" : String.format("%s%d%s", containerPrefix, i, containerSuffix))));
        }
      }
    }

    // add `createdAt` to the URL query string
    if (getCreatedAt() != null) {
      try {
        joiner.add(String.format("%screatedAt%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getCreatedAt()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    // add `modifiedAt` to the URL query string
    if (getModifiedAt() != null) {
      try {
        joiner.add(String.format("%smodifiedAt%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getModifiedAt()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    return joiner.toString();
  }

}

