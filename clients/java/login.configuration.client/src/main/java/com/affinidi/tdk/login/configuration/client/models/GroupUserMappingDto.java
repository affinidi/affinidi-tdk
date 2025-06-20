/*
 * OidcVpAdapterBackend
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: info@affinidi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.affinidi.tdk.login.configuration.client.models;

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
 * GroupUserMappingDto
 */
@JsonPropertyOrder({
  GroupUserMappingDto.JSON_PROPERTY_USER_ID,
  GroupUserMappingDto.JSON_PROPERTY_ADDED_AT
})
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.13.0")
public class GroupUserMappingDto {
  public static final String JSON_PROPERTY_USER_ID = "userId";
  @javax.annotation.Nonnull
  private String userId;

  public static final String JSON_PROPERTY_ADDED_AT = "addedAt";
  @javax.annotation.Nonnull
  private String addedAt;

  public GroupUserMappingDto() {
  }

  public GroupUserMappingDto userId(@javax.annotation.Nonnull String userId) {
    
    this.userId = userId;
    return this;
  }

  /**
   * Unique identifier of the user
   * @return userId
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_USER_ID)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)

  public String getUserId() {
    return userId;
  }


  @JsonProperty(JSON_PROPERTY_USER_ID)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public void setUserId(@javax.annotation.Nonnull String userId) {
    this.userId = userId;
  }

  public GroupUserMappingDto addedAt(@javax.annotation.Nonnull String addedAt) {
    
    this.addedAt = addedAt;
    return this;
  }

  /**
   * Group to user mapping creation date
   * @return addedAt
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_ADDED_AT)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)

  public String getAddedAt() {
    return addedAt;
  }


  @JsonProperty(JSON_PROPERTY_ADDED_AT)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public void setAddedAt(@javax.annotation.Nonnull String addedAt) {
    this.addedAt = addedAt;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GroupUserMappingDto groupUserMappingDto = (GroupUserMappingDto) o;
    return Objects.equals(this.userId, groupUserMappingDto.userId) &&
        Objects.equals(this.addedAt, groupUserMappingDto.addedAt);
  }

  @Override
  public int hashCode() {
    return Objects.hash(userId, addedAt);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GroupUserMappingDto {\n");
    sb.append("    userId: ").append(toIndentedString(userId)).append("\n");
    sb.append("    addedAt: ").append(toIndentedString(addedAt)).append("\n");
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

    // add `userId` to the URL query string
    if (getUserId() != null) {
      try {
        joiner.add(String.format("%suserId%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getUserId()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    // add `addedAt` to the URL query string
    if (getAddedAt() != null) {
      try {
        joiner.add(String.format("%saddedAt%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getAddedAt()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    return joiner.toString();
  }

}

