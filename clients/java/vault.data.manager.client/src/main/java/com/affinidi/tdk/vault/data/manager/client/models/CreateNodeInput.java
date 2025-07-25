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
import com.affinidi.tdk.vault.data.manager.client.models.EdekInfo;
import com.affinidi.tdk.vault.data.manager.client.models.NodeType;
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
 * CreateNodeInput
 */
@JsonPropertyOrder({
  CreateNodeInput.JSON_PROPERTY_NAME,
  CreateNodeInput.JSON_PROPERTY_TYPE,
  CreateNodeInput.JSON_PROPERTY_DESCRIPTION,
  CreateNodeInput.JSON_PROPERTY_PARENT_NODE_ID,
  CreateNodeInput.JSON_PROPERTY_EDEK_INFO,
  CreateNodeInput.JSON_PROPERTY_DEK,
  CreateNodeInput.JSON_PROPERTY_METADATA
})
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.13.0")
public class CreateNodeInput {
  public static final String JSON_PROPERTY_NAME = "name";
  @javax.annotation.Nonnull
  private String name;

  public static final String JSON_PROPERTY_TYPE = "type";
  @javax.annotation.Nonnull
  private NodeType type;

  public static final String JSON_PROPERTY_DESCRIPTION = "description";
  @javax.annotation.Nullable
  private String description;

  public static final String JSON_PROPERTY_PARENT_NODE_ID = "parentNodeId";
  @javax.annotation.Nullable
  private String parentNodeId;

  public static final String JSON_PROPERTY_EDEK_INFO = "edekInfo";
  @javax.annotation.Nullable
  private EdekInfo edekInfo;

  public static final String JSON_PROPERTY_DEK = "dek";
  @javax.annotation.Nullable
  private String dek;

  public static final String JSON_PROPERTY_METADATA = "metadata";
  @javax.annotation.Nullable
  private String metadata;

  public CreateNodeInput() {
  }

  public CreateNodeInput name(@javax.annotation.Nonnull String name) {
    
    this.name = name;
    return this;
  }

  /**
   * Name of the item
   * @return name
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_NAME)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)

  public String getName() {
    return name;
  }


  @JsonProperty(JSON_PROPERTY_NAME)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public void setName(@javax.annotation.Nonnull String name) {
    this.name = name;
  }

  public CreateNodeInput type(@javax.annotation.Nonnull NodeType type) {
    
    this.type = type;
    return this;
  }

  /**
   * Get type
   * @return type
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_TYPE)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)

  public NodeType getType() {
    return type;
  }


  @JsonProperty(JSON_PROPERTY_TYPE)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public void setType(@javax.annotation.Nonnull NodeType type) {
    this.type = type;
  }

  public CreateNodeInput description(@javax.annotation.Nullable String description) {
    
    this.description = description;
    return this;
  }

  /**
   * description of profile if creating a new profile
   * @return description
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_DESCRIPTION)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public String getDescription() {
    return description;
  }


  @JsonProperty(JSON_PROPERTY_DESCRIPTION)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setDescription(@javax.annotation.Nullable String description) {
    this.description = description;
  }

  public CreateNodeInput parentNodeId(@javax.annotation.Nullable String parentNodeId) {
    
    this.parentNodeId = parentNodeId;
    return this;
  }

  /**
   * parent node id, if not provided then root element is used
   * @return parentNodeId
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_PARENT_NODE_ID)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public String getParentNodeId() {
    return parentNodeId;
  }


  @JsonProperty(JSON_PROPERTY_PARENT_NODE_ID)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setParentNodeId(@javax.annotation.Nullable String parentNodeId) {
    this.parentNodeId = parentNodeId;
  }

  public CreateNodeInput edekInfo(@javax.annotation.Nullable EdekInfo edekInfo) {
    
    this.edekInfo = edekInfo;
    return this;
  }

  /**
   * Get edekInfo
   * @return edekInfo
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_EDEK_INFO)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public EdekInfo getEdekInfo() {
    return edekInfo;
  }


  @JsonProperty(JSON_PROPERTY_EDEK_INFO)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setEdekInfo(@javax.annotation.Nullable EdekInfo edekInfo) {
    this.edekInfo = edekInfo;
  }

  public CreateNodeInput dek(@javax.annotation.Nullable String dek) {
    
    this.dek = dek;
    return this;
  }

  /**
   * A base64 encoded data encryption key, encrypted using VFS public key, required for node types [FILE, PROFILE]
   * @return dek
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_DEK)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public String getDek() {
    return dek;
  }


  @JsonProperty(JSON_PROPERTY_DEK)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setDek(@javax.annotation.Nullable String dek) {
    this.dek = dek;
  }

  public CreateNodeInput metadata(@javax.annotation.Nullable String metadata) {
    
    this.metadata = metadata;
    return this;
  }

  /**
   * metadata of the node in stringified json format
   * @return metadata
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_METADATA)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public String getMetadata() {
    return metadata;
  }


  @JsonProperty(JSON_PROPERTY_METADATA)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setMetadata(@javax.annotation.Nullable String metadata) {
    this.metadata = metadata;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    CreateNodeInput createNodeInput = (CreateNodeInput) o;
    return Objects.equals(this.name, createNodeInput.name) &&
        Objects.equals(this.type, createNodeInput.type) &&
        Objects.equals(this.description, createNodeInput.description) &&
        Objects.equals(this.parentNodeId, createNodeInput.parentNodeId) &&
        Objects.equals(this.edekInfo, createNodeInput.edekInfo) &&
        Objects.equals(this.dek, createNodeInput.dek) &&
        Objects.equals(this.metadata, createNodeInput.metadata);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, type, description, parentNodeId, edekInfo, dek, metadata);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CreateNodeInput {\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    parentNodeId: ").append(toIndentedString(parentNodeId)).append("\n");
    sb.append("    edekInfo: ").append(toIndentedString(edekInfo)).append("\n");
    sb.append("    dek: ").append(toIndentedString(dek)).append("\n");
    sb.append("    metadata: ").append(toIndentedString(metadata)).append("\n");
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

    // add `type` to the URL query string
    if (getType() != null) {
      try {
        joiner.add(String.format("%stype%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getType()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    // add `description` to the URL query string
    if (getDescription() != null) {
      try {
        joiner.add(String.format("%sdescription%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getDescription()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    // add `parentNodeId` to the URL query string
    if (getParentNodeId() != null) {
      try {
        joiner.add(String.format("%sparentNodeId%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getParentNodeId()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    // add `edekInfo` to the URL query string
    if (getEdekInfo() != null) {
      joiner.add(getEdekInfo().toUrlQueryString(prefix + "edekInfo" + suffix));
    }

    // add `dek` to the URL query string
    if (getDek() != null) {
      try {
        joiner.add(String.format("%sdek%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getDek()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    // add `metadata` to the URL query string
    if (getMetadata() != null) {
      try {
        joiner.add(String.format("%smetadata%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getMetadata()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    return joiner.toString();
  }

}

