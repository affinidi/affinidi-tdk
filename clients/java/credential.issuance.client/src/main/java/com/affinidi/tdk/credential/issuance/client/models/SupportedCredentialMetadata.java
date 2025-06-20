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
import com.affinidi.tdk.credential.issuance.client.models.SupportedCredentialMetadataDisplayInner;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonTypeName;
import com.fasterxml.jackson.annotation.JsonValue;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import com.fasterxml.jackson.annotation.JsonTypeName;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.StringJoiner;

/**
 * SupportedCredentialMetadata
 */
@JsonPropertyOrder({
  SupportedCredentialMetadata.JSON_PROPERTY_DISPLAY
})
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.13.0")
public class SupportedCredentialMetadata extends HashMap<String, Object> {
  public static final String JSON_PROPERTY_DISPLAY = "display";
  @javax.annotation.Nullable
  private List<SupportedCredentialMetadataDisplayInner> display = new ArrayList<>();

  public SupportedCredentialMetadata() {

  }

  public SupportedCredentialMetadata display(@javax.annotation.Nullable List<SupportedCredentialMetadataDisplayInner> display) {
    
    this.display = display;
    return this;
  }

  public SupportedCredentialMetadata addDisplayItem(SupportedCredentialMetadataDisplayInner displayItem) {
    if (this.display == null) {
      this.display = new ArrayList<>();
    }
    this.display.add(displayItem);
    return this;
  }

  /**
   * Get display
   * @return display
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_DISPLAY)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public List<SupportedCredentialMetadataDisplayInner> getDisplay() {
    return display;
  }


  @JsonProperty(JSON_PROPERTY_DISPLAY)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setDisplay(@javax.annotation.Nullable List<SupportedCredentialMetadataDisplayInner> display) {
    this.display = display;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SupportedCredentialMetadata supportedCredentialMetadata = (SupportedCredentialMetadata) o;
    return Objects.equals(this.display, supportedCredentialMetadata.display) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(display, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SupportedCredentialMetadata {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    display: ").append(toIndentedString(display)).append("\n");
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

    // add `display` to the URL query string
    if (getDisplay() != null) {
      for (int i = 0; i < getDisplay().size(); i++) {
        if (getDisplay().get(i) != null) {
          try {
            joiner.add(String.format("%sdisplay%s%s=%s", prefix, suffix,
                "".equals(suffix) ? "" : String.format("%s%d%s", containerPrefix, i, containerSuffix),
                URLEncoder.encode(String.valueOf(getDisplay().get(i)), "UTF-8").replaceAll("\\+", "%20")));
          } catch (UnsupportedEncodingException e) {
            // Should never happen, UTF-8 is always supported
            throw new RuntimeException(e);
          }
        }
      }
    }

    return joiner.toString();
  }

}

