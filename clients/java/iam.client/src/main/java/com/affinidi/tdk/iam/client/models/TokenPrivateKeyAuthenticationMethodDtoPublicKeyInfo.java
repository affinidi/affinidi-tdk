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
import java.util.Arrays;
import com.affinidi.tdk.iam.client.models.JsonWebKeySetDto;
import com.affinidi.tdk.iam.client.models.TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf;
import com.affinidi.tdk.iam.client.models.TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1;
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
 * Corresponding Public Key Info provided either as a URL or a Hardcoded Object
 */
@JsonPropertyOrder({
  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo.JSON_PROPERTY_JWKS,
  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo.JSON_PROPERTY_JWKS_URI
})
@JsonTypeName("TokenPrivateKeyAuthenticationMethodDto_publicKeyInfo")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.13.0")
public class TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo {
  public static final String JSON_PROPERTY_JWKS = "jwks";
  @javax.annotation.Nonnull
  private JsonWebKeySetDto jwks;

  public static final String JSON_PROPERTY_JWKS_URI = "jwksUri";
  @javax.annotation.Nonnull
  private String jwksUri;

  public TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo() {
  }

  public TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo jwks(@javax.annotation.Nonnull JsonWebKeySetDto jwks) {
    
    this.jwks = jwks;
    return this;
  }

  /**
   * Get jwks
   * @return jwks
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_JWKS)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)

  public JsonWebKeySetDto getJwks() {
    return jwks;
  }


  @JsonProperty(JSON_PROPERTY_JWKS)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public void setJwks(@javax.annotation.Nonnull JsonWebKeySetDto jwks) {
    this.jwks = jwks;
  }

  public TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo jwksUri(@javax.annotation.Nonnull String jwksUri) {
    
    this.jwksUri = jwksUri;
    return this;
  }

  /**
   * Get jwksUri
   * @return jwksUri
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_JWKS_URI)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)

  public String getJwksUri() {
    return jwksUri;
  }


  @JsonProperty(JSON_PROPERTY_JWKS_URI)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public void setJwksUri(@javax.annotation.Nonnull String jwksUri) {
    this.jwksUri = jwksUri;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo tokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo = (TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo) o;
    return Objects.equals(this.jwks, tokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo.jwks) &&
        Objects.equals(this.jwksUri, tokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo.jwksUri);
  }

  @Override
  public int hashCode() {
    return Objects.hash(jwks, jwksUri);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo {\n");
    sb.append("    jwks: ").append(toIndentedString(jwks)).append("\n");
    sb.append("    jwksUri: ").append(toIndentedString(jwksUri)).append("\n");
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

    // add `jwks` to the URL query string
    if (getJwks() != null) {
      joiner.add(getJwks().toUrlQueryString(prefix + "jwks" + suffix));
    }

    // add `jwksUri` to the URL query string
    if (getJwksUri() != null) {
      try {
        joiner.add(String.format("%sjwksUri%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getJwksUri()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    return joiner.toString();
  }

}

