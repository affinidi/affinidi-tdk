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
import java.util.Arrays;
import com.affinidi.tdk.credential.issuance.client.models.BatchCredentialResponseCredentialResponsesInner;
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
 * BatchCredentialResponse
 */
@JsonPropertyOrder({
  BatchCredentialResponse.JSON_PROPERTY_CREDENTIAL_RESPONSES,
  BatchCredentialResponse.JSON_PROPERTY_C_NONCE,
  BatchCredentialResponse.JSON_PROPERTY_C_NONCE_EXPIRES_IN
})
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.13.0")
public class BatchCredentialResponse {
  public static final String JSON_PROPERTY_CREDENTIAL_RESPONSES = "credential_responses";
  @javax.annotation.Nonnull
  private List<BatchCredentialResponseCredentialResponsesInner> credentialResponses = new ArrayList<>();

  public static final String JSON_PROPERTY_C_NONCE = "c_nonce";
  @javax.annotation.Nullable
  private String cNonce;

  public static final String JSON_PROPERTY_C_NONCE_EXPIRES_IN = "c_nonce_expires_in";
  @javax.annotation.Nullable
  private Integer cNonceExpiresIn;

  public BatchCredentialResponse() {
  }

  public BatchCredentialResponse credentialResponses(@javax.annotation.Nonnull List<BatchCredentialResponseCredentialResponsesInner> credentialResponses) {
    
    this.credentialResponses = credentialResponses;
    return this;
  }

  public BatchCredentialResponse addCredentialResponsesItem(BatchCredentialResponseCredentialResponsesInner credentialResponsesItem) {
    if (this.credentialResponses == null) {
      this.credentialResponses = new ArrayList<>();
    }
    this.credentialResponses.add(credentialResponsesItem);
    return this;
  }

  /**
   * Get credentialResponses
   * @return credentialResponses
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_CREDENTIAL_RESPONSES)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)

  public List<BatchCredentialResponseCredentialResponsesInner> getCredentialResponses() {
    return credentialResponses;
  }


  @JsonProperty(JSON_PROPERTY_CREDENTIAL_RESPONSES)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public void setCredentialResponses(@javax.annotation.Nonnull List<BatchCredentialResponseCredentialResponsesInner> credentialResponses) {
    this.credentialResponses = credentialResponses;
  }

  public BatchCredentialResponse cNonce(@javax.annotation.Nullable String cNonce) {
    
    this.cNonce = cNonce;
    return this;
  }

  /**
   * Get cNonce
   * @return cNonce
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_C_NONCE)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public String getcNonce() {
    return cNonce;
  }


  @JsonProperty(JSON_PROPERTY_C_NONCE)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setcNonce(@javax.annotation.Nullable String cNonce) {
    this.cNonce = cNonce;
  }

  public BatchCredentialResponse cNonceExpiresIn(@javax.annotation.Nullable Integer cNonceExpiresIn) {
    
    this.cNonceExpiresIn = cNonceExpiresIn;
    return this;
  }

  /**
   * Expiration time in seconds
   * @return cNonceExpiresIn
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_C_NONCE_EXPIRES_IN)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public Integer getcNonceExpiresIn() {
    return cNonceExpiresIn;
  }


  @JsonProperty(JSON_PROPERTY_C_NONCE_EXPIRES_IN)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setcNonceExpiresIn(@javax.annotation.Nullable Integer cNonceExpiresIn) {
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
    BatchCredentialResponse batchCredentialResponse = (BatchCredentialResponse) o;
    return Objects.equals(this.credentialResponses, batchCredentialResponse.credentialResponses) &&
        Objects.equals(this.cNonce, batchCredentialResponse.cNonce) &&
        Objects.equals(this.cNonceExpiresIn, batchCredentialResponse.cNonceExpiresIn);
  }

  @Override
  public int hashCode() {
    return Objects.hash(credentialResponses, cNonce, cNonceExpiresIn);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class BatchCredentialResponse {\n");
    sb.append("    credentialResponses: ").append(toIndentedString(credentialResponses)).append("\n");
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

    // add `credential_responses` to the URL query string
    if (getCredentialResponses() != null) {
      for (int i = 0; i < getCredentialResponses().size(); i++) {
        if (getCredentialResponses().get(i) != null) {
          joiner.add(getCredentialResponses().get(i).toUrlQueryString(String.format("%scredential_responses%s%s", prefix, suffix,
              "".equals(suffix) ? "" : String.format("%s%d%s", containerPrefix, i, containerSuffix))));
        }
      }
    }

    // add `c_nonce` to the URL query string
    if (getcNonce() != null) {
      try {
        joiner.add(String.format("%sc_nonce%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getcNonce()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    // add `c_nonce_expires_in` to the URL query string
    if (getcNonceExpiresIn() != null) {
      try {
        joiner.add(String.format("%sc_nonce_expires_in%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getcNonceExpiresIn()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    return joiner.toString();
  }

}

