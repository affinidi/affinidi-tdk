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
import com.affinidi.tdk.login.configuration.client.models.IdTokenMappingItem;
import com.affinidi.tdk.login.configuration.client.models.LoginConfigurationClientMetadataInput;
import com.affinidi.tdk.login.configuration.client.models.TokenEndpointAuthMethod;
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
 * CreateLoginConfigurationInput
 */
@JsonPropertyOrder({
  CreateLoginConfigurationInput.JSON_PROPERTY_NAME,
  CreateLoginConfigurationInput.JSON_PROPERTY_DESCRIPTION,
  CreateLoginConfigurationInput.JSON_PROPERTY_REDIRECT_URIS,
  CreateLoginConfigurationInput.JSON_PROPERTY_POST_LOGOUT_REDIRECT_URIS,
  CreateLoginConfigurationInput.JSON_PROPERTY_VP_DEFINITION,
  CreateLoginConfigurationInput.JSON_PROPERTY_PRESENTATION_DEFINITION,
  CreateLoginConfigurationInput.JSON_PROPERTY_ID_TOKEN_MAPPING,
  CreateLoginConfigurationInput.JSON_PROPERTY_CLIENT_METADATA,
  CreateLoginConfigurationInput.JSON_PROPERTY_CLAIM_FORMAT,
  CreateLoginConfigurationInput.JSON_PROPERTY_FAIL_ON_MAPPING_CONFLICT,
  CreateLoginConfigurationInput.JSON_PROPERTY_SCOPE,
  CreateLoginConfigurationInput.JSON_PROPERTY_TOKEN_ENDPOINT_AUTH_METHOD
})
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.13.0")
public class CreateLoginConfigurationInput {
  public static final String JSON_PROPERTY_NAME = "name";
  @javax.annotation.Nonnull
  private String name;

  public static final String JSON_PROPERTY_DESCRIPTION = "description";
  @javax.annotation.Nullable
  private String description;

  public static final String JSON_PROPERTY_REDIRECT_URIS = "redirectUris";
  @javax.annotation.Nonnull
  private List<String> redirectUris = new ArrayList<>();

  public static final String JSON_PROPERTY_POST_LOGOUT_REDIRECT_URIS = "postLogoutRedirectUris";
  @javax.annotation.Nullable
  private List<String> postLogoutRedirectUris = new ArrayList<>();

  public static final String JSON_PROPERTY_VP_DEFINITION = "vpDefinition";
  @javax.annotation.Nullable
  private String vpDefinition;

  public static final String JSON_PROPERTY_PRESENTATION_DEFINITION = "presentationDefinition";
  @javax.annotation.Nullable
  private Object presentationDefinition;

  public static final String JSON_PROPERTY_ID_TOKEN_MAPPING = "idTokenMapping";
  @javax.annotation.Nullable
  private List<IdTokenMappingItem> idTokenMapping = new ArrayList<>();

  public static final String JSON_PROPERTY_CLIENT_METADATA = "clientMetadata";
  @javax.annotation.Nullable
  private LoginConfigurationClientMetadataInput clientMetadata;

  /**
   * ID token claims output format. Default is array.
   */
  public enum ClaimFormatEnum {
    ARRAY(String.valueOf("array")),
    
    MAP(String.valueOf("map"));

    private String value;

    ClaimFormatEnum(String value) {
      this.value = value;
    }

    @JsonValue
    public String getValue() {
      return value;
    }

    @Override
    public String toString() {
      return String.valueOf(value);
    }

    @JsonCreator
    public static ClaimFormatEnum fromValue(String value) {
      for (ClaimFormatEnum b : ClaimFormatEnum.values()) {
        if (b.value.equals(value)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
  }

  public static final String JSON_PROPERTY_CLAIM_FORMAT = "claimFormat";
  @javax.annotation.Nullable
  private ClaimFormatEnum claimFormat;

  public static final String JSON_PROPERTY_FAIL_ON_MAPPING_CONFLICT = "failOnMappingConflict";
  @javax.annotation.Nullable
  private Boolean failOnMappingConflict = true;

  public static final String JSON_PROPERTY_SCOPE = "scope";
  @javax.annotation.Nullable
  private String scope;

  public static final String JSON_PROPERTY_TOKEN_ENDPOINT_AUTH_METHOD = "tokenEndpointAuthMethod";
  @javax.annotation.Nullable
  private TokenEndpointAuthMethod tokenEndpointAuthMethod;

  public CreateLoginConfigurationInput() {
  }

  public CreateLoginConfigurationInput name(@javax.annotation.Nonnull String name) {
    
    this.name = name;
    return this;
  }

  /**
   * User defined login configuration name
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

  public CreateLoginConfigurationInput description(@javax.annotation.Nullable String description) {
    
    this.description = description;
    return this;
  }

  /**
   * Get description
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

  public CreateLoginConfigurationInput redirectUris(@javax.annotation.Nonnull List<String> redirectUris) {
    
    this.redirectUris = redirectUris;
    return this;
  }

  public CreateLoginConfigurationInput addRedirectUrisItem(String redirectUrisItem) {
    if (this.redirectUris == null) {
      this.redirectUris = new ArrayList<>();
    }
    this.redirectUris.add(redirectUrisItem);
    return this;
  }

  /**
   * OAuth 2.0 Redirect URIs
   * @return redirectUris
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_REDIRECT_URIS)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)

  public List<String> getRedirectUris() {
    return redirectUris;
  }


  @JsonProperty(JSON_PROPERTY_REDIRECT_URIS)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public void setRedirectUris(@javax.annotation.Nonnull List<String> redirectUris) {
    this.redirectUris = redirectUris;
  }

  public CreateLoginConfigurationInput postLogoutRedirectUris(@javax.annotation.Nullable List<String> postLogoutRedirectUris) {
    
    this.postLogoutRedirectUris = postLogoutRedirectUris;
    return this;
  }

  public CreateLoginConfigurationInput addPostLogoutRedirectUrisItem(String postLogoutRedirectUrisItem) {
    if (this.postLogoutRedirectUris == null) {
      this.postLogoutRedirectUris = new ArrayList<>();
    }
    this.postLogoutRedirectUris.add(postLogoutRedirectUrisItem);
    return this;
  }

  /**
   * Post Logout Redirect URIs, Used to redirect the user&#39;s browser to a specified URL after the logout process is complete. Must match the domain, port, scheme of at least one of the registered redirect URIs
   * @return postLogoutRedirectUris
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_POST_LOGOUT_REDIRECT_URIS)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public List<String> getPostLogoutRedirectUris() {
    return postLogoutRedirectUris;
  }


  @JsonProperty(JSON_PROPERTY_POST_LOGOUT_REDIRECT_URIS)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setPostLogoutRedirectUris(@javax.annotation.Nullable List<String> postLogoutRedirectUris) {
    this.postLogoutRedirectUris = postLogoutRedirectUris;
  }

  public CreateLoginConfigurationInput vpDefinition(@javax.annotation.Nullable String vpDefinition) {
    
    this.vpDefinition = vpDefinition;
    return this;
  }

  /**
   * VP definition in JSON stringify format
   * @return vpDefinition
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_VP_DEFINITION)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public String getVpDefinition() {
    return vpDefinition;
  }


  @JsonProperty(JSON_PROPERTY_VP_DEFINITION)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setVpDefinition(@javax.annotation.Nullable String vpDefinition) {
    this.vpDefinition = vpDefinition;
  }

  public CreateLoginConfigurationInput presentationDefinition(@javax.annotation.Nullable Object presentationDefinition) {
    
    this.presentationDefinition = presentationDefinition;
    return this;
  }

  /**
   * Presentation Definition
   * @return presentationDefinition
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_PRESENTATION_DEFINITION)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public Object getPresentationDefinition() {
    return presentationDefinition;
  }


  @JsonProperty(JSON_PROPERTY_PRESENTATION_DEFINITION)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setPresentationDefinition(@javax.annotation.Nullable Object presentationDefinition) {
    this.presentationDefinition = presentationDefinition;
  }

  public CreateLoginConfigurationInput idTokenMapping(@javax.annotation.Nullable List<IdTokenMappingItem> idTokenMapping) {
    
    this.idTokenMapping = idTokenMapping;
    return this;
  }

  public CreateLoginConfigurationInput addIdTokenMappingItem(IdTokenMappingItem idTokenMappingItem) {
    if (this.idTokenMapping == null) {
      this.idTokenMapping = new ArrayList<>();
    }
    this.idTokenMapping.add(idTokenMappingItem);
    return this;
  }

  /**
   * Fields name/path mapping between the vp_token and the id_token
   * @return idTokenMapping
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_ID_TOKEN_MAPPING)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public List<IdTokenMappingItem> getIdTokenMapping() {
    return idTokenMapping;
  }


  @JsonProperty(JSON_PROPERTY_ID_TOKEN_MAPPING)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setIdTokenMapping(@javax.annotation.Nullable List<IdTokenMappingItem> idTokenMapping) {
    this.idTokenMapping = idTokenMapping;
  }

  public CreateLoginConfigurationInput clientMetadata(@javax.annotation.Nullable LoginConfigurationClientMetadataInput clientMetadata) {
    
    this.clientMetadata = clientMetadata;
    return this;
  }

  /**
   * Get clientMetadata
   * @return clientMetadata
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_CLIENT_METADATA)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public LoginConfigurationClientMetadataInput getClientMetadata() {
    return clientMetadata;
  }


  @JsonProperty(JSON_PROPERTY_CLIENT_METADATA)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setClientMetadata(@javax.annotation.Nullable LoginConfigurationClientMetadataInput clientMetadata) {
    this.clientMetadata = clientMetadata;
  }

  public CreateLoginConfigurationInput claimFormat(@javax.annotation.Nullable ClaimFormatEnum claimFormat) {
    
    this.claimFormat = claimFormat;
    return this;
  }

  /**
   * ID token claims output format. Default is array.
   * @return claimFormat
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_CLAIM_FORMAT)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public ClaimFormatEnum getClaimFormat() {
    return claimFormat;
  }


  @JsonProperty(JSON_PROPERTY_CLAIM_FORMAT)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setClaimFormat(@javax.annotation.Nullable ClaimFormatEnum claimFormat) {
    this.claimFormat = claimFormat;
  }

  public CreateLoginConfigurationInput failOnMappingConflict(@javax.annotation.Nullable Boolean failOnMappingConflict) {
    
    this.failOnMappingConflict = failOnMappingConflict;
    return this;
  }

  /**
   * Interrupts login process if duplications of data fields names will be found
   * @return failOnMappingConflict
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_FAIL_ON_MAPPING_CONFLICT)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public Boolean getFailOnMappingConflict() {
    return failOnMappingConflict;
  }


  @JsonProperty(JSON_PROPERTY_FAIL_ON_MAPPING_CONFLICT)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setFailOnMappingConflict(@javax.annotation.Nullable Boolean failOnMappingConflict) {
    this.failOnMappingConflict = failOnMappingConflict;
  }

  public CreateLoginConfigurationInput scope(@javax.annotation.Nullable String scope) {
    
    this.scope = scope;
    return this;
  }

  /**
   * List of groups separated by space
   * @return scope
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_SCOPE)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public String getScope() {
    return scope;
  }


  @JsonProperty(JSON_PROPERTY_SCOPE)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setScope(@javax.annotation.Nullable String scope) {
    this.scope = scope;
  }

  public CreateLoginConfigurationInput tokenEndpointAuthMethod(@javax.annotation.Nullable TokenEndpointAuthMethod tokenEndpointAuthMethod) {
    
    this.tokenEndpointAuthMethod = tokenEndpointAuthMethod;
    return this;
  }

  /**
   * Get tokenEndpointAuthMethod
   * @return tokenEndpointAuthMethod
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_TOKEN_ENDPOINT_AUTH_METHOD)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public TokenEndpointAuthMethod getTokenEndpointAuthMethod() {
    return tokenEndpointAuthMethod;
  }


  @JsonProperty(JSON_PROPERTY_TOKEN_ENDPOINT_AUTH_METHOD)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setTokenEndpointAuthMethod(@javax.annotation.Nullable TokenEndpointAuthMethod tokenEndpointAuthMethod) {
    this.tokenEndpointAuthMethod = tokenEndpointAuthMethod;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    CreateLoginConfigurationInput createLoginConfigurationInput = (CreateLoginConfigurationInput) o;
    return Objects.equals(this.name, createLoginConfigurationInput.name) &&
        Objects.equals(this.description, createLoginConfigurationInput.description) &&
        Objects.equals(this.redirectUris, createLoginConfigurationInput.redirectUris) &&
        Objects.equals(this.postLogoutRedirectUris, createLoginConfigurationInput.postLogoutRedirectUris) &&
        Objects.equals(this.vpDefinition, createLoginConfigurationInput.vpDefinition) &&
        Objects.equals(this.presentationDefinition, createLoginConfigurationInput.presentationDefinition) &&
        Objects.equals(this.idTokenMapping, createLoginConfigurationInput.idTokenMapping) &&
        Objects.equals(this.clientMetadata, createLoginConfigurationInput.clientMetadata) &&
        Objects.equals(this.claimFormat, createLoginConfigurationInput.claimFormat) &&
        Objects.equals(this.failOnMappingConflict, createLoginConfigurationInput.failOnMappingConflict) &&
        Objects.equals(this.scope, createLoginConfigurationInput.scope) &&
        Objects.equals(this.tokenEndpointAuthMethod, createLoginConfigurationInput.tokenEndpointAuthMethod);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, description, redirectUris, postLogoutRedirectUris, vpDefinition, presentationDefinition, idTokenMapping, clientMetadata, claimFormat, failOnMappingConflict, scope, tokenEndpointAuthMethod);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CreateLoginConfigurationInput {\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    redirectUris: ").append(toIndentedString(redirectUris)).append("\n");
    sb.append("    postLogoutRedirectUris: ").append(toIndentedString(postLogoutRedirectUris)).append("\n");
    sb.append("    vpDefinition: ").append(toIndentedString(vpDefinition)).append("\n");
    sb.append("    presentationDefinition: ").append(toIndentedString(presentationDefinition)).append("\n");
    sb.append("    idTokenMapping: ").append(toIndentedString(idTokenMapping)).append("\n");
    sb.append("    clientMetadata: ").append(toIndentedString(clientMetadata)).append("\n");
    sb.append("    claimFormat: ").append(toIndentedString(claimFormat)).append("\n");
    sb.append("    failOnMappingConflict: ").append(toIndentedString(failOnMappingConflict)).append("\n");
    sb.append("    scope: ").append(toIndentedString(scope)).append("\n");
    sb.append("    tokenEndpointAuthMethod: ").append(toIndentedString(tokenEndpointAuthMethod)).append("\n");
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

    // add `description` to the URL query string
    if (getDescription() != null) {
      try {
        joiner.add(String.format("%sdescription%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getDescription()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    // add `redirectUris` to the URL query string
    if (getRedirectUris() != null) {
      for (int i = 0; i < getRedirectUris().size(); i++) {
        try {
          joiner.add(String.format("%sredirectUris%s%s=%s", prefix, suffix,
              "".equals(suffix) ? "" : String.format("%s%d%s", containerPrefix, i, containerSuffix),
              URLEncoder.encode(String.valueOf(getRedirectUris().get(i)), "UTF-8").replaceAll("\\+", "%20")));
        } catch (UnsupportedEncodingException e) {
          // Should never happen, UTF-8 is always supported
          throw new RuntimeException(e);
        }
      }
    }

    // add `postLogoutRedirectUris` to the URL query string
    if (getPostLogoutRedirectUris() != null) {
      for (int i = 0; i < getPostLogoutRedirectUris().size(); i++) {
        try {
          joiner.add(String.format("%spostLogoutRedirectUris%s%s=%s", prefix, suffix,
              "".equals(suffix) ? "" : String.format("%s%d%s", containerPrefix, i, containerSuffix),
              URLEncoder.encode(String.valueOf(getPostLogoutRedirectUris().get(i)), "UTF-8").replaceAll("\\+", "%20")));
        } catch (UnsupportedEncodingException e) {
          // Should never happen, UTF-8 is always supported
          throw new RuntimeException(e);
        }
      }
    }

    // add `vpDefinition` to the URL query string
    if (getVpDefinition() != null) {
      try {
        joiner.add(String.format("%svpDefinition%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getVpDefinition()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    // add `presentationDefinition` to the URL query string
    if (getPresentationDefinition() != null) {
      try {
        joiner.add(String.format("%spresentationDefinition%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getPresentationDefinition()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    // add `idTokenMapping` to the URL query string
    if (getIdTokenMapping() != null) {
      for (int i = 0; i < getIdTokenMapping().size(); i++) {
        if (getIdTokenMapping().get(i) != null) {
          joiner.add(getIdTokenMapping().get(i).toUrlQueryString(String.format("%sidTokenMapping%s%s", prefix, suffix,
              "".equals(suffix) ? "" : String.format("%s%d%s", containerPrefix, i, containerSuffix))));
        }
      }
    }

    // add `clientMetadata` to the URL query string
    if (getClientMetadata() != null) {
      joiner.add(getClientMetadata().toUrlQueryString(prefix + "clientMetadata" + suffix));
    }

    // add `claimFormat` to the URL query string
    if (getClaimFormat() != null) {
      try {
        joiner.add(String.format("%sclaimFormat%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getClaimFormat()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    // add `failOnMappingConflict` to the URL query string
    if (getFailOnMappingConflict() != null) {
      try {
        joiner.add(String.format("%sfailOnMappingConflict%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getFailOnMappingConflict()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    // add `scope` to the URL query string
    if (getScope() != null) {
      try {
        joiner.add(String.format("%sscope%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getScope()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    // add `tokenEndpointAuthMethod` to the URL query string
    if (getTokenEndpointAuthMethod() != null) {
      try {
        joiner.add(String.format("%stokenEndpointAuthMethod%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getTokenEndpointAuthMethod()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    return joiner.toString();
  }

}

