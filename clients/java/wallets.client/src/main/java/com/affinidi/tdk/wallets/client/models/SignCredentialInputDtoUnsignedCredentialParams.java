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
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonTypeName;
import com.fasterxml.jackson.annotation.JsonValue;
import java.util.HashMap;
import java.util.Map;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import com.fasterxml.jackson.annotation.JsonTypeName;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.StringJoiner;

/**
 * unsignedCredentialParams. Used to build an unsigned credential before the signing. This param is not accepted when \&quot;unsignedCredential\&quot; is given
 */
@JsonPropertyOrder({
  SignCredentialInputDtoUnsignedCredentialParams.JSON_PROPERTY_JSON_LD_CONTEXT_URL,
  SignCredentialInputDtoUnsignedCredentialParams.JSON_PROPERTY_JSON_SCHEMA_URL,
  SignCredentialInputDtoUnsignedCredentialParams.JSON_PROPERTY_TYPE_NAME,
  SignCredentialInputDtoUnsignedCredentialParams.JSON_PROPERTY_CREDENTIAL_SUBJECT,
  SignCredentialInputDtoUnsignedCredentialParams.JSON_PROPERTY_HOLDER_DID,
  SignCredentialInputDtoUnsignedCredentialParams.JSON_PROPERTY_EXPIRES_AT
})
@JsonTypeName("SignCredentialInputDto_unsignedCredentialParams")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.13.0")
public class SignCredentialInputDtoUnsignedCredentialParams {
  public static final String JSON_PROPERTY_JSON_LD_CONTEXT_URL = "jsonLdContextUrl";
  @javax.annotation.Nonnull
  private String jsonLdContextUrl;

  public static final String JSON_PROPERTY_JSON_SCHEMA_URL = "jsonSchemaUrl";
  @javax.annotation.Nonnull
  private String jsonSchemaUrl;

  public static final String JSON_PROPERTY_TYPE_NAME = "typeName";
  @javax.annotation.Nonnull
  private String typeName;

  public static final String JSON_PROPERTY_CREDENTIAL_SUBJECT = "credentialSubject";
  @javax.annotation.Nonnull
  private Map<String, Object> credentialSubject = new HashMap<>();

  public static final String JSON_PROPERTY_HOLDER_DID = "holderDid";
  @javax.annotation.Nonnull
  private String holderDid;

  public static final String JSON_PROPERTY_EXPIRES_AT = "expiresAt";
  @javax.annotation.Nonnull
  private String expiresAt;

  public SignCredentialInputDtoUnsignedCredentialParams() {
  }

  public SignCredentialInputDtoUnsignedCredentialParams jsonLdContextUrl(@javax.annotation.Nonnull String jsonLdContextUrl) {
    
    this.jsonLdContextUrl = jsonLdContextUrl;
    return this;
  }

  /**
   * Get jsonLdContextUrl
   * @return jsonLdContextUrl
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_JSON_LD_CONTEXT_URL)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)

  public String getJsonLdContextUrl() {
    return jsonLdContextUrl;
  }


  @JsonProperty(JSON_PROPERTY_JSON_LD_CONTEXT_URL)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public void setJsonLdContextUrl(@javax.annotation.Nonnull String jsonLdContextUrl) {
    this.jsonLdContextUrl = jsonLdContextUrl;
  }

  public SignCredentialInputDtoUnsignedCredentialParams jsonSchemaUrl(@javax.annotation.Nonnull String jsonSchemaUrl) {
    
    this.jsonSchemaUrl = jsonSchemaUrl;
    return this;
  }

  /**
   * Get jsonSchemaUrl
   * @return jsonSchemaUrl
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_JSON_SCHEMA_URL)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)

  public String getJsonSchemaUrl() {
    return jsonSchemaUrl;
  }


  @JsonProperty(JSON_PROPERTY_JSON_SCHEMA_URL)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public void setJsonSchemaUrl(@javax.annotation.Nonnull String jsonSchemaUrl) {
    this.jsonSchemaUrl = jsonSchemaUrl;
  }

  public SignCredentialInputDtoUnsignedCredentialParams typeName(@javax.annotation.Nonnull String typeName) {
    
    this.typeName = typeName;
    return this;
  }

  /**
   * Get typeName
   * @return typeName
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_TYPE_NAME)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)

  public String getTypeName() {
    return typeName;
  }


  @JsonProperty(JSON_PROPERTY_TYPE_NAME)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public void setTypeName(@javax.annotation.Nonnull String typeName) {
    this.typeName = typeName;
  }

  public SignCredentialInputDtoUnsignedCredentialParams credentialSubject(@javax.annotation.Nonnull Map<String, Object> credentialSubject) {
    
    this.credentialSubject = credentialSubject;
    return this;
  }

  public SignCredentialInputDtoUnsignedCredentialParams putCredentialSubjectItem(String key, Object credentialSubjectItem) {
    this.credentialSubject.put(key, credentialSubjectItem);
    return this;
  }

  /**
   * Get credentialSubject
   * @return credentialSubject
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_CREDENTIAL_SUBJECT)
  @JsonInclude(content = JsonInclude.Include.ALWAYS, value = JsonInclude.Include.ALWAYS)

  public Map<String, Object> getCredentialSubject() {
    return credentialSubject;
  }


  @JsonProperty(JSON_PROPERTY_CREDENTIAL_SUBJECT)
  @JsonInclude(content = JsonInclude.Include.ALWAYS, value = JsonInclude.Include.ALWAYS)
  public void setCredentialSubject(@javax.annotation.Nonnull Map<String, Object> credentialSubject) {
    this.credentialSubject = credentialSubject;
  }

  public SignCredentialInputDtoUnsignedCredentialParams holderDid(@javax.annotation.Nonnull String holderDid) {
    
    this.holderDid = holderDid;
    return this;
  }

  /**
   * Get holderDid
   * @return holderDid
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_HOLDER_DID)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)

  public String getHolderDid() {
    return holderDid;
  }


  @JsonProperty(JSON_PROPERTY_HOLDER_DID)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public void setHolderDid(@javax.annotation.Nonnull String holderDid) {
    this.holderDid = holderDid;
  }

  public SignCredentialInputDtoUnsignedCredentialParams expiresAt(@javax.annotation.Nonnull String expiresAt) {
    
    this.expiresAt = expiresAt;
    return this;
  }

  /**
   * Get expiresAt
   * @return expiresAt
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_EXPIRES_AT)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)

  public String getExpiresAt() {
    return expiresAt;
  }


  @JsonProperty(JSON_PROPERTY_EXPIRES_AT)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public void setExpiresAt(@javax.annotation.Nonnull String expiresAt) {
    this.expiresAt = expiresAt;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SignCredentialInputDtoUnsignedCredentialParams signCredentialInputDtoUnsignedCredentialParams = (SignCredentialInputDtoUnsignedCredentialParams) o;
    return Objects.equals(this.jsonLdContextUrl, signCredentialInputDtoUnsignedCredentialParams.jsonLdContextUrl) &&
        Objects.equals(this.jsonSchemaUrl, signCredentialInputDtoUnsignedCredentialParams.jsonSchemaUrl) &&
        Objects.equals(this.typeName, signCredentialInputDtoUnsignedCredentialParams.typeName) &&
        Objects.equals(this.credentialSubject, signCredentialInputDtoUnsignedCredentialParams.credentialSubject) &&
        Objects.equals(this.holderDid, signCredentialInputDtoUnsignedCredentialParams.holderDid) &&
        Objects.equals(this.expiresAt, signCredentialInputDtoUnsignedCredentialParams.expiresAt);
  }

  @Override
  public int hashCode() {
    return Objects.hash(jsonLdContextUrl, jsonSchemaUrl, typeName, credentialSubject, holderDid, expiresAt);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SignCredentialInputDtoUnsignedCredentialParams {\n");
    sb.append("    jsonLdContextUrl: ").append(toIndentedString(jsonLdContextUrl)).append("\n");
    sb.append("    jsonSchemaUrl: ").append(toIndentedString(jsonSchemaUrl)).append("\n");
    sb.append("    typeName: ").append(toIndentedString(typeName)).append("\n");
    sb.append("    credentialSubject: ").append(toIndentedString(credentialSubject)).append("\n");
    sb.append("    holderDid: ").append(toIndentedString(holderDid)).append("\n");
    sb.append("    expiresAt: ").append(toIndentedString(expiresAt)).append("\n");
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

    // add `jsonLdContextUrl` to the URL query string
    if (getJsonLdContextUrl() != null) {
      try {
        joiner.add(String.format("%sjsonLdContextUrl%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getJsonLdContextUrl()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    // add `jsonSchemaUrl` to the URL query string
    if (getJsonSchemaUrl() != null) {
      try {
        joiner.add(String.format("%sjsonSchemaUrl%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getJsonSchemaUrl()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    // add `typeName` to the URL query string
    if (getTypeName() != null) {
      try {
        joiner.add(String.format("%stypeName%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getTypeName()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    // add `credentialSubject` to the URL query string
    if (getCredentialSubject() != null) {
      for (String _key : getCredentialSubject().keySet()) {
        try {
          joiner.add(String.format("%scredentialSubject%s%s=%s", prefix, suffix,
              "".equals(suffix) ? "" : String.format("%s%d%s", containerPrefix, _key, containerSuffix),
              getCredentialSubject().get(_key), URLEncoder.encode(String.valueOf(getCredentialSubject().get(_key)), "UTF-8").replaceAll("\\+", "%20")));
        } catch (UnsupportedEncodingException e) {
          // Should never happen, UTF-8 is always supported
          throw new RuntimeException(e);
        }
      }
    }

    // add `holderDid` to the URL query string
    if (getHolderDid() != null) {
      try {
        joiner.add(String.format("%sholderDid%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getHolderDid()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    // add `expiresAt` to the URL query string
    if (getExpiresAt() != null) {
      try {
        joiner.add(String.format("%sexpiresAt%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getExpiresAt()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    return joiner.toString();
  }

}

