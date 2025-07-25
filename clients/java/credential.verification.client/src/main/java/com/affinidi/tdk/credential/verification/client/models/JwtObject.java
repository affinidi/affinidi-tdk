/*
 * VerificationService
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: info@affinidi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.affinidi.tdk.credential.verification.client.models;

import java.util.Objects;
import java.util.Arrays;
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
 * JwtObject
 */
@JsonPropertyOrder({
  JwtObject.JSON_PROPERTY_ALG
})
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.13.0")
public class JwtObject {
  public static final String JSON_PROPERTY_ALG = "alg";
  @javax.annotation.Nonnull
  private List<String> alg = new ArrayList<>();

  public JwtObject() {
  }

  public JwtObject alg(@javax.annotation.Nonnull List<String> alg) {
    
    this.alg = alg;
    return this;
  }

  public JwtObject addAlgItem(String algItem) {
    if (this.alg == null) {
      this.alg = new ArrayList<>();
    }
    this.alg.add(algItem);
    return this;
  }

  /**
   * List of names of the the JWT Algorithms
   * @return alg
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_ALG)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)

  public List<String> getAlg() {
    return alg;
  }


  @JsonProperty(JSON_PROPERTY_ALG)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public void setAlg(@javax.annotation.Nonnull List<String> alg) {
    this.alg = alg;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    JwtObject jwtObject = (JwtObject) o;
    return Objects.equals(this.alg, jwtObject.alg);
  }

  @Override
  public int hashCode() {
    return Objects.hash(alg);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class JwtObject {\n");
    sb.append("    alg: ").append(toIndentedString(alg)).append("\n");
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

    // add `alg` to the URL query string
    if (getAlg() != null) {
      for (int i = 0; i < getAlg().size(); i++) {
        try {
          joiner.add(String.format("%salg%s%s=%s", prefix, suffix,
              "".equals(suffix) ? "" : String.format("%s%d%s", containerPrefix, i, containerSuffix),
              URLEncoder.encode(String.valueOf(getAlg().get(i)), "UTF-8").replaceAll("\\+", "%20")));
        } catch (UnsupportedEncodingException e) {
          // Should never happen, UTF-8 is always supported
          throw new RuntimeException(e);
        }
      }
    }

    return joiner.toString();
  }

}

