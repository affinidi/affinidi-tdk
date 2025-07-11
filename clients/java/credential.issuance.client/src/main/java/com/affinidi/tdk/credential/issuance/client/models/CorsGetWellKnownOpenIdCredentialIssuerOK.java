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
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonTypeName;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import com.fasterxml.jackson.annotation.JsonTypeName;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.StringJoiner;

/**
 * CorsGetWellKnownOpenIdCredentialIssuerOK
 */
@JsonPropertyOrder({
  CorsGetWellKnownOpenIdCredentialIssuerOK.JSON_PROPERTY_CORS_GET_WELL_KNOWN_OPEN_ID_CREDENTIAL_ISSUER_OK
})
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.13.0")
public class CorsGetWellKnownOpenIdCredentialIssuerOK {
  public static final String JSON_PROPERTY_CORS_GET_WELL_KNOWN_OPEN_ID_CREDENTIAL_ISSUER_OK = "corsGetWellKnownOpenIdCredentialIssuerOk";
  @javax.annotation.Nullable
  private String corsGetWellKnownOpenIdCredentialIssuerOk;

  public CorsGetWellKnownOpenIdCredentialIssuerOK() {
  }

  public CorsGetWellKnownOpenIdCredentialIssuerOK corsGetWellKnownOpenIdCredentialIssuerOk(@javax.annotation.Nullable String corsGetWellKnownOpenIdCredentialIssuerOk) {
    
    this.corsGetWellKnownOpenIdCredentialIssuerOk = corsGetWellKnownOpenIdCredentialIssuerOk;
    return this;
  }

  /**
   * Get corsGetWellKnownOpenIdCredentialIssuerOk
   * @return corsGetWellKnownOpenIdCredentialIssuerOk
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_CORS_GET_WELL_KNOWN_OPEN_ID_CREDENTIAL_ISSUER_OK)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public String getCorsGetWellKnownOpenIdCredentialIssuerOk() {
    return corsGetWellKnownOpenIdCredentialIssuerOk;
  }


  @JsonProperty(JSON_PROPERTY_CORS_GET_WELL_KNOWN_OPEN_ID_CREDENTIAL_ISSUER_OK)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setCorsGetWellKnownOpenIdCredentialIssuerOk(@javax.annotation.Nullable String corsGetWellKnownOpenIdCredentialIssuerOk) {
    this.corsGetWellKnownOpenIdCredentialIssuerOk = corsGetWellKnownOpenIdCredentialIssuerOk;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    CorsGetWellKnownOpenIdCredentialIssuerOK corsGetWellKnownOpenIdCredentialIssuerOK = (CorsGetWellKnownOpenIdCredentialIssuerOK) o;
    return Objects.equals(this.corsGetWellKnownOpenIdCredentialIssuerOk, corsGetWellKnownOpenIdCredentialIssuerOK.corsGetWellKnownOpenIdCredentialIssuerOk);
  }

  @Override
  public int hashCode() {
    return Objects.hash(corsGetWellKnownOpenIdCredentialIssuerOk);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CorsGetWellKnownOpenIdCredentialIssuerOK {\n");
    sb.append("    corsGetWellKnownOpenIdCredentialIssuerOk: ").append(toIndentedString(corsGetWellKnownOpenIdCredentialIssuerOk)).append("\n");
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

    // add `corsGetWellKnownOpenIdCredentialIssuerOk` to the URL query string
    if (getCorsGetWellKnownOpenIdCredentialIssuerOk() != null) {
      try {
        joiner.add(String.format("%scorsGetWellKnownOpenIdCredentialIssuerOk%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getCorsGetWellKnownOpenIdCredentialIssuerOk()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    return joiner.toString();
  }

}

