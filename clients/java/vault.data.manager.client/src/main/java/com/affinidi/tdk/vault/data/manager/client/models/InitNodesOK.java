/*
 * VaultFileSystem
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: info@affinidi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.affinidi.tdk.vault.data.manager.client.models;

import java.util.Objects;
import java.util.Arrays;
import com.affinidi.tdk.vault.data.manager.client.models.ConsumerMetadataDto;
import com.affinidi.tdk.vault.data.manager.client.models.NodeDto;
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
 * InitNodesOK
 */
@JsonPropertyOrder({
  InitNodesOK.JSON_PROPERTY_CONSUMER_METADATA,
  InitNodesOK.JSON_PROPERTY_DEFAULT_PROFILE
})
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.13.0")
public class InitNodesOK {
  public static final String JSON_PROPERTY_CONSUMER_METADATA = "consumerMetadata";
  @javax.annotation.Nullable
  private ConsumerMetadataDto consumerMetadata;

  public static final String JSON_PROPERTY_DEFAULT_PROFILE = "defaultProfile";
  @javax.annotation.Nullable
  private NodeDto defaultProfile;

  public InitNodesOK() {
  }

  public InitNodesOK consumerMetadata(@javax.annotation.Nullable ConsumerMetadataDto consumerMetadata) {
    
    this.consumerMetadata = consumerMetadata;
    return this;
  }

  /**
   * Get consumerMetadata
   * @return consumerMetadata
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_CONSUMER_METADATA)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public ConsumerMetadataDto getConsumerMetadata() {
    return consumerMetadata;
  }


  @JsonProperty(JSON_PROPERTY_CONSUMER_METADATA)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setConsumerMetadata(@javax.annotation.Nullable ConsumerMetadataDto consumerMetadata) {
    this.consumerMetadata = consumerMetadata;
  }

  public InitNodesOK defaultProfile(@javax.annotation.Nullable NodeDto defaultProfile) {
    
    this.defaultProfile = defaultProfile;
    return this;
  }

  /**
   * Get defaultProfile
   * @return defaultProfile
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_DEFAULT_PROFILE)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public NodeDto getDefaultProfile() {
    return defaultProfile;
  }


  @JsonProperty(JSON_PROPERTY_DEFAULT_PROFILE)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setDefaultProfile(@javax.annotation.Nullable NodeDto defaultProfile) {
    this.defaultProfile = defaultProfile;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InitNodesOK initNodesOK = (InitNodesOK) o;
    return Objects.equals(this.consumerMetadata, initNodesOK.consumerMetadata) &&
        Objects.equals(this.defaultProfile, initNodesOK.defaultProfile);
  }

  @Override
  public int hashCode() {
    return Objects.hash(consumerMetadata, defaultProfile);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InitNodesOK {\n");
    sb.append("    consumerMetadata: ").append(toIndentedString(consumerMetadata)).append("\n");
    sb.append("    defaultProfile: ").append(toIndentedString(defaultProfile)).append("\n");
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

    // add `consumerMetadata` to the URL query string
    if (getConsumerMetadata() != null) {
      joiner.add(getConsumerMetadata().toUrlQueryString(prefix + "consumerMetadata" + suffix));
    }

    // add `defaultProfile` to the URL query string
    if (getDefaultProfile() != null) {
      joiner.add(getDefaultProfile().toUrlQueryString(prefix + "defaultProfile" + suffix));
    }

    return joiner.toString();
  }

}

