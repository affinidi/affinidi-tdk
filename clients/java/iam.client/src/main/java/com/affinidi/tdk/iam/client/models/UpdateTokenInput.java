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
import com.affinidi.tdk.iam.client.models.UpdateTokenPrivateKeyAuthenticationMethodDto;
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
 * UpdateTokenInput
 */
@JsonPropertyOrder({
  UpdateTokenInput.JSON_PROPERTY_NAME,
  UpdateTokenInput.JSON_PROPERTY_AUTHENTICATION_METHOD
})
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.13.0")
public class UpdateTokenInput {
  public static final String JSON_PROPERTY_NAME = "name";
  @javax.annotation.Nullable
  private String name;

  public static final String JSON_PROPERTY_AUTHENTICATION_METHOD = "authenticationMethod";
  @javax.annotation.Nullable
  private UpdateTokenPrivateKeyAuthenticationMethodDto authenticationMethod;

  public UpdateTokenInput() {
  }

  public UpdateTokenInput name(@javax.annotation.Nullable String name) {
    
    this.name = name;
    return this;
  }

  /**
   * Get name
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

  public UpdateTokenInput authenticationMethod(@javax.annotation.Nullable UpdateTokenPrivateKeyAuthenticationMethodDto authenticationMethod) {
    
    this.authenticationMethod = authenticationMethod;
    return this;
  }

  /**
   * Get authenticationMethod
   * @return authenticationMethod
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_AUTHENTICATION_METHOD)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public UpdateTokenPrivateKeyAuthenticationMethodDto getAuthenticationMethod() {
    return authenticationMethod;
  }


  @JsonProperty(JSON_PROPERTY_AUTHENTICATION_METHOD)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setAuthenticationMethod(@javax.annotation.Nullable UpdateTokenPrivateKeyAuthenticationMethodDto authenticationMethod) {
    this.authenticationMethod = authenticationMethod;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    UpdateTokenInput updateTokenInput = (UpdateTokenInput) o;
    return Objects.equals(this.name, updateTokenInput.name) &&
        Objects.equals(this.authenticationMethod, updateTokenInput.authenticationMethod);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, authenticationMethod);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class UpdateTokenInput {\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    authenticationMethod: ").append(toIndentedString(authenticationMethod)).append("\n");
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

    // add `name` to the URL query string
    if (getName() != null) {
      try {
        joiner.add(String.format("%sname%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getName()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    // add `authenticationMethod` to the URL query string
    if (getAuthenticationMethod() != null) {
      joiner.add(getAuthenticationMethod().toUrlQueryString(prefix + "authenticationMethod" + suffix));
    }

    return joiner.toString();
  }

}

