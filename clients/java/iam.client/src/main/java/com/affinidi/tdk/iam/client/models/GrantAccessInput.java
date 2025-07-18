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
import com.affinidi.tdk.iam.client.models.RightsEnum;
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
 * GrantAccessInput
 */
@JsonPropertyOrder({
  GrantAccessInput.JSON_PROPERTY_GRANTEE_DID,
  GrantAccessInput.JSON_PROPERTY_RIGHTS
})
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.13.0")
public class GrantAccessInput {
  public static final String JSON_PROPERTY_GRANTEE_DID = "granteeDid";
  @javax.annotation.Nonnull
  private String granteeDid;

  public static final String JSON_PROPERTY_RIGHTS = "rights";
  @javax.annotation.Nonnull
  private List<RightsEnum> rights = new ArrayList<>();

  public GrantAccessInput() {
  }

  public GrantAccessInput granteeDid(@javax.annotation.Nonnull String granteeDid) {
    
    this.granteeDid = granteeDid;
    return this;
  }

  /**
   * DID of the subject being granted access
   * @return granteeDid
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_GRANTEE_DID)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)

  public String getGranteeDid() {
    return granteeDid;
  }


  @JsonProperty(JSON_PROPERTY_GRANTEE_DID)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public void setGranteeDid(@javax.annotation.Nonnull String granteeDid) {
    this.granteeDid = granteeDid;
  }

  public GrantAccessInput rights(@javax.annotation.Nonnull List<RightsEnum> rights) {
    
    this.rights = rights;
    return this;
  }

  public GrantAccessInput addRightsItem(RightsEnum rightsItem) {
    if (this.rights == null) {
      this.rights = new ArrayList<>();
    }
    this.rights.add(rightsItem);
    return this;
  }

  /**
   * List of rights to grant to the subject
   * @return rights
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_RIGHTS)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)

  public List<RightsEnum> getRights() {
    return rights;
  }


  @JsonProperty(JSON_PROPERTY_RIGHTS)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public void setRights(@javax.annotation.Nonnull List<RightsEnum> rights) {
    this.rights = rights;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GrantAccessInput grantAccessInput = (GrantAccessInput) o;
    return Objects.equals(this.granteeDid, grantAccessInput.granteeDid) &&
        Objects.equals(this.rights, grantAccessInput.rights);
  }

  @Override
  public int hashCode() {
    return Objects.hash(granteeDid, rights);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GrantAccessInput {\n");
    sb.append("    granteeDid: ").append(toIndentedString(granteeDid)).append("\n");
    sb.append("    rights: ").append(toIndentedString(rights)).append("\n");
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

    // add `granteeDid` to the URL query string
    if (getGranteeDid() != null) {
      try {
        joiner.add(String.format("%sgranteeDid%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getGranteeDid()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    // add `rights` to the URL query string
    if (getRights() != null) {
      for (int i = 0; i < getRights().size(); i++) {
        if (getRights().get(i) != null) {
          try {
            joiner.add(String.format("%srights%s%s=%s", prefix, suffix,
                "".equals(suffix) ? "" : String.format("%s%d%s", containerPrefix, i, containerSuffix),
                URLEncoder.encode(String.valueOf(getRights().get(i)), "UTF-8").replaceAll("\\+", "%20")));
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

