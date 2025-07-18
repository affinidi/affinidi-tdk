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
import com.affinidi.tdk.credential.issuance.client.models.StartIssuanceInputDataInnerMetaData;
import com.affinidi.tdk.credential.issuance.client.models.StartIssuanceInputDataInnerStatusListDetailsInner;
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
 * Data to be included in issued credential
 */
@JsonPropertyOrder({
  StartIssuanceInputDataInner.JSON_PROPERTY_CREDENTIAL_TYPE_ID,
  StartIssuanceInputDataInner.JSON_PROPERTY_CREDENTIAL_DATA,
  StartIssuanceInputDataInner.JSON_PROPERTY_STATUS_LIST_DETAILS,
  StartIssuanceInputDataInner.JSON_PROPERTY_META_DATA
})
@JsonTypeName("StartIssuanceInput_data_inner")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.13.0")
public class StartIssuanceInputDataInner {
  public static final String JSON_PROPERTY_CREDENTIAL_TYPE_ID = "credentialTypeId";
  @javax.annotation.Nonnull
  private String credentialTypeId;

  public static final String JSON_PROPERTY_CREDENTIAL_DATA = "credentialData";
  @javax.annotation.Nonnull
  private Map<String, Object> credentialData = new HashMap<>();

  public static final String JSON_PROPERTY_STATUS_LIST_DETAILS = "statusListDetails";
  @javax.annotation.Nullable
  private List<StartIssuanceInputDataInnerStatusListDetailsInner> statusListDetails = new ArrayList<>();

  public static final String JSON_PROPERTY_META_DATA = "metaData";
  @javax.annotation.Nullable
  private StartIssuanceInputDataInnerMetaData metaData;

  public StartIssuanceInputDataInner() {
  }

  public StartIssuanceInputDataInner credentialTypeId(@javax.annotation.Nonnull String credentialTypeId) {
    
    this.credentialTypeId = credentialTypeId;
    return this;
  }

  /**
   * It is a String that identifies a Credential that is being requested to be issued.
   * @return credentialTypeId
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_CREDENTIAL_TYPE_ID)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)

  public String getCredentialTypeId() {
    return credentialTypeId;
  }


  @JsonProperty(JSON_PROPERTY_CREDENTIAL_TYPE_ID)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public void setCredentialTypeId(@javax.annotation.Nonnull String credentialTypeId) {
    this.credentialTypeId = credentialTypeId;
  }

  public StartIssuanceInputDataInner credentialData(@javax.annotation.Nonnull Map<String, Object> credentialData) {
    
    this.credentialData = credentialData;
    return this;
  }

  public StartIssuanceInputDataInner putCredentialDataItem(String key, Object credentialDataItem) {
    this.credentialData.put(key, credentialDataItem);
    return this;
  }

  /**
   * Object of data to be included in the issued credential ,should  match the credential type
   * @return credentialData
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_CREDENTIAL_DATA)
  @JsonInclude(content = JsonInclude.Include.ALWAYS, value = JsonInclude.Include.ALWAYS)

  public Map<String, Object> getCredentialData() {
    return credentialData;
  }


  @JsonProperty(JSON_PROPERTY_CREDENTIAL_DATA)
  @JsonInclude(content = JsonInclude.Include.ALWAYS, value = JsonInclude.Include.ALWAYS)
  public void setCredentialData(@javax.annotation.Nonnull Map<String, Object> credentialData) {
    this.credentialData = credentialData;
  }

  public StartIssuanceInputDataInner statusListDetails(@javax.annotation.Nullable List<StartIssuanceInputDataInnerStatusListDetailsInner> statusListDetails) {
    
    this.statusListDetails = statusListDetails;
    return this;
  }

  public StartIssuanceInputDataInner addStatusListDetailsItem(StartIssuanceInputDataInnerStatusListDetailsInner statusListDetailsItem) {
    if (this.statusListDetails == null) {
      this.statusListDetails = new ArrayList<>();
    }
    this.statusListDetails.add(statusListDetailsItem);
    return this;
  }

  /**
   * Types of status lists to which the credential should be added once issued. If not provided or empty, the credential is not added to any of the status lists.
   * @return statusListDetails
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_STATUS_LIST_DETAILS)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public List<StartIssuanceInputDataInnerStatusListDetailsInner> getStatusListDetails() {
    return statusListDetails;
  }


  @JsonProperty(JSON_PROPERTY_STATUS_LIST_DETAILS)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setStatusListDetails(@javax.annotation.Nullable List<StartIssuanceInputDataInnerStatusListDetailsInner> statusListDetails) {
    this.statusListDetails = statusListDetails;
  }

  public StartIssuanceInputDataInner metaData(@javax.annotation.Nullable StartIssuanceInputDataInnerMetaData metaData) {
    
    this.metaData = metaData;
    return this;
  }

  /**
   * Get metaData
   * @return metaData
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_META_DATA)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public StartIssuanceInputDataInnerMetaData getMetaData() {
    return metaData;
  }


  @JsonProperty(JSON_PROPERTY_META_DATA)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setMetaData(@javax.annotation.Nullable StartIssuanceInputDataInnerMetaData metaData) {
    this.metaData = metaData;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    StartIssuanceInputDataInner startIssuanceInputDataInner = (StartIssuanceInputDataInner) o;
    return Objects.equals(this.credentialTypeId, startIssuanceInputDataInner.credentialTypeId) &&
        Objects.equals(this.credentialData, startIssuanceInputDataInner.credentialData) &&
        Objects.equals(this.statusListDetails, startIssuanceInputDataInner.statusListDetails) &&
        Objects.equals(this.metaData, startIssuanceInputDataInner.metaData);
  }

  @Override
  public int hashCode() {
    return Objects.hash(credentialTypeId, credentialData, statusListDetails, metaData);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class StartIssuanceInputDataInner {\n");
    sb.append("    credentialTypeId: ").append(toIndentedString(credentialTypeId)).append("\n");
    sb.append("    credentialData: ").append(toIndentedString(credentialData)).append("\n");
    sb.append("    statusListDetails: ").append(toIndentedString(statusListDetails)).append("\n");
    sb.append("    metaData: ").append(toIndentedString(metaData)).append("\n");
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

    // add `credentialTypeId` to the URL query string
    if (getCredentialTypeId() != null) {
      try {
        joiner.add(String.format("%scredentialTypeId%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getCredentialTypeId()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    // add `credentialData` to the URL query string
    if (getCredentialData() != null) {
      for (String _key : getCredentialData().keySet()) {
        try {
          joiner.add(String.format("%scredentialData%s%s=%s", prefix, suffix,
              "".equals(suffix) ? "" : String.format("%s%d%s", containerPrefix, _key, containerSuffix),
              getCredentialData().get(_key), URLEncoder.encode(String.valueOf(getCredentialData().get(_key)), "UTF-8").replaceAll("\\+", "%20")));
        } catch (UnsupportedEncodingException e) {
          // Should never happen, UTF-8 is always supported
          throw new RuntimeException(e);
        }
      }
    }

    // add `statusListDetails` to the URL query string
    if (getStatusListDetails() != null) {
      for (int i = 0; i < getStatusListDetails().size(); i++) {
        if (getStatusListDetails().get(i) != null) {
          joiner.add(getStatusListDetails().get(i).toUrlQueryString(String.format("%sstatusListDetails%s%s", prefix, suffix,
              "".equals(suffix) ? "" : String.format("%s%d%s", containerPrefix, i, containerSuffix))));
        }
      }
    }

    // add `metaData` to the URL query string
    if (getMetaData() != null) {
      joiner.add(getMetaData().toUrlQueryString(prefix + "metaData" + suffix));
    }

    return joiner.toString();
  }

}

