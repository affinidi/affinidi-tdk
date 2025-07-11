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
import com.affinidi.tdk.login.configuration.client.models.LoginConfigurationClientMetadataOutput;
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
 * LoginConfigurationObject
 */
@JsonPropertyOrder({
  LoginConfigurationObject.JSON_PROPERTY_ARI,
  LoginConfigurationObject.JSON_PROPERTY_CONFIGURATION_ID,
  LoginConfigurationObject.JSON_PROPERTY_PROJECT_ID,
  LoginConfigurationObject.JSON_PROPERTY_NAME,
  LoginConfigurationObject.JSON_PROPERTY_REDIRECT_URIS,
  LoginConfigurationObject.JSON_PROPERTY_POST_LOGOUT_REDIRECT_URIS,
  LoginConfigurationObject.JSON_PROPERTY_SCOPE,
  LoginConfigurationObject.JSON_PROPERTY_CLIENT_ID,
  LoginConfigurationObject.JSON_PROPERTY_CREATION_DATE,
  LoginConfigurationObject.JSON_PROPERTY_VP_DEFINITION,
  LoginConfigurationObject.JSON_PROPERTY_PRESENTATION_DEFINITION,
  LoginConfigurationObject.JSON_PROPERTY_ID_TOKEN_MAPPING,
  LoginConfigurationObject.JSON_PROPERTY_CLIENT_METADATA,
  LoginConfigurationObject.JSON_PROPERTY_TOKEN_ENDPOINT_AUTH_METHOD
})
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.13.0")
public class LoginConfigurationObject {
  public static final String JSON_PROPERTY_ARI = "ari";
  @javax.annotation.Nonnull
  private String ari;

  public static final String JSON_PROPERTY_CONFIGURATION_ID = "configurationId";
  @javax.annotation.Nullable
  private String configurationId;

  public static final String JSON_PROPERTY_PROJECT_ID = "projectId";
  @javax.annotation.Nonnull
  private String projectId;

  public static final String JSON_PROPERTY_NAME = "name";
  @javax.annotation.Nonnull
  private String name;

  public static final String JSON_PROPERTY_REDIRECT_URIS = "redirectUris";
  @javax.annotation.Nullable
  private List<String> redirectUris = new ArrayList<>();

  public static final String JSON_PROPERTY_POST_LOGOUT_REDIRECT_URIS = "postLogoutRedirectUris";
  @javax.annotation.Nullable
  private List<String> postLogoutRedirectUris = new ArrayList<>();

  public static final String JSON_PROPERTY_SCOPE = "scope";
  @javax.annotation.Nullable
  private String scope;

  public static final String JSON_PROPERTY_CLIENT_ID = "clientId";
  @javax.annotation.Nullable
  private String clientId;

  public static final String JSON_PROPERTY_CREATION_DATE = "creationDate";
  @javax.annotation.Nonnull
  private String creationDate;

  public static final String JSON_PROPERTY_VP_DEFINITION = "vpDefinition";
  @javax.annotation.Nullable
  private String vpDefinition;

  public static final String JSON_PROPERTY_PRESENTATION_DEFINITION = "presentationDefinition";
  @javax.annotation.Nullable
  private Object presentationDefinition;

  public static final String JSON_PROPERTY_ID_TOKEN_MAPPING = "idTokenMapping";
  @javax.annotation.Nonnull
  private List<IdTokenMappingItem> idTokenMapping = new ArrayList<>();

  public static final String JSON_PROPERTY_CLIENT_METADATA = "clientMetadata";
  @javax.annotation.Nonnull
  private LoginConfigurationClientMetadataOutput clientMetadata;

  public static final String JSON_PROPERTY_TOKEN_ENDPOINT_AUTH_METHOD = "tokenEndpointAuthMethod";
  @javax.annotation.Nonnull
  private TokenEndpointAuthMethod tokenEndpointAuthMethod;

  public LoginConfigurationObject() {
  }

  public LoginConfigurationObject ari(@javax.annotation.Nonnull String ari) {
    
    this.ari = ari;
    return this;
  }

  /**
   * Configuration ari
   * @return ari
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_ARI)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)

  public String getAri() {
    return ari;
  }


  @JsonProperty(JSON_PROPERTY_ARI)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public void setAri(@javax.annotation.Nonnull String ari) {
    this.ari = ari;
  }

  public LoginConfigurationObject configurationId(@javax.annotation.Nullable String configurationId) {
    
    this.configurationId = configurationId;
    return this;
  }

  /**
   * Configuration id
   * @return configurationId
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_CONFIGURATION_ID)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public String getConfigurationId() {
    return configurationId;
  }


  @JsonProperty(JSON_PROPERTY_CONFIGURATION_ID)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setConfigurationId(@javax.annotation.Nullable String configurationId) {
    this.configurationId = configurationId;
  }

  public LoginConfigurationObject projectId(@javax.annotation.Nonnull String projectId) {
    
    this.projectId = projectId;
    return this;
  }

  /**
   * Project id
   * @return projectId
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_PROJECT_ID)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)

  public String getProjectId() {
    return projectId;
  }


  @JsonProperty(JSON_PROPERTY_PROJECT_ID)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public void setProjectId(@javax.annotation.Nonnull String projectId) {
    this.projectId = projectId;
  }

  public LoginConfigurationObject name(@javax.annotation.Nonnull String name) {
    
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

  public LoginConfigurationObject redirectUris(@javax.annotation.Nullable List<String> redirectUris) {
    
    this.redirectUris = redirectUris;
    return this;
  }

  public LoginConfigurationObject addRedirectUrisItem(String redirectUrisItem) {
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
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_REDIRECT_URIS)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public List<String> getRedirectUris() {
    return redirectUris;
  }


  @JsonProperty(JSON_PROPERTY_REDIRECT_URIS)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setRedirectUris(@javax.annotation.Nullable List<String> redirectUris) {
    this.redirectUris = redirectUris;
  }

  public LoginConfigurationObject postLogoutRedirectUris(@javax.annotation.Nullable List<String> postLogoutRedirectUris) {
    
    this.postLogoutRedirectUris = postLogoutRedirectUris;
    return this;
  }

  public LoginConfigurationObject addPostLogoutRedirectUrisItem(String postLogoutRedirectUrisItem) {
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

  public LoginConfigurationObject scope(@javax.annotation.Nullable String scope) {
    
    this.scope = scope;
    return this;
  }

  /**
   * OAuth 2.0 Client Scope
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

  public LoginConfigurationObject clientId(@javax.annotation.Nullable String clientId) {
    
    this.clientId = clientId;
    return this;
  }

  /**
   * OAuth 2.0 Client ID
   * @return clientId
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_CLIENT_ID)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public String getClientId() {
    return clientId;
  }


  @JsonProperty(JSON_PROPERTY_CLIENT_ID)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setClientId(@javax.annotation.Nullable String clientId) {
    this.clientId = clientId;
  }

  public LoginConfigurationObject creationDate(@javax.annotation.Nonnull String creationDate) {
    
    this.creationDate = creationDate;
    return this;
  }

  /**
   * OAuth 2.0 Client Creation Date
   * @return creationDate
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_CREATION_DATE)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)

  public String getCreationDate() {
    return creationDate;
  }


  @JsonProperty(JSON_PROPERTY_CREATION_DATE)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public void setCreationDate(@javax.annotation.Nonnull String creationDate) {
    this.creationDate = creationDate;
  }

  public LoginConfigurationObject vpDefinition(@javax.annotation.Nullable String vpDefinition) {
    
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

  public LoginConfigurationObject presentationDefinition(@javax.annotation.Nullable Object presentationDefinition) {
    
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

  public LoginConfigurationObject idTokenMapping(@javax.annotation.Nonnull List<IdTokenMappingItem> idTokenMapping) {
    
    this.idTokenMapping = idTokenMapping;
    return this;
  }

  public LoginConfigurationObject addIdTokenMappingItem(IdTokenMappingItem idTokenMappingItem) {
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
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_ID_TOKEN_MAPPING)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)

  public List<IdTokenMappingItem> getIdTokenMapping() {
    return idTokenMapping;
  }


  @JsonProperty(JSON_PROPERTY_ID_TOKEN_MAPPING)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public void setIdTokenMapping(@javax.annotation.Nonnull List<IdTokenMappingItem> idTokenMapping) {
    this.idTokenMapping = idTokenMapping;
  }

  public LoginConfigurationObject clientMetadata(@javax.annotation.Nonnull LoginConfigurationClientMetadataOutput clientMetadata) {
    
    this.clientMetadata = clientMetadata;
    return this;
  }

  /**
   * Get clientMetadata
   * @return clientMetadata
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_CLIENT_METADATA)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)

  public LoginConfigurationClientMetadataOutput getClientMetadata() {
    return clientMetadata;
  }


  @JsonProperty(JSON_PROPERTY_CLIENT_METADATA)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public void setClientMetadata(@javax.annotation.Nonnull LoginConfigurationClientMetadataOutput clientMetadata) {
    this.clientMetadata = clientMetadata;
  }

  public LoginConfigurationObject tokenEndpointAuthMethod(@javax.annotation.Nonnull TokenEndpointAuthMethod tokenEndpointAuthMethod) {
    
    this.tokenEndpointAuthMethod = tokenEndpointAuthMethod;
    return this;
  }

  /**
   * Get tokenEndpointAuthMethod
   * @return tokenEndpointAuthMethod
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_TOKEN_ENDPOINT_AUTH_METHOD)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)

  public TokenEndpointAuthMethod getTokenEndpointAuthMethod() {
    return tokenEndpointAuthMethod;
  }


  @JsonProperty(JSON_PROPERTY_TOKEN_ENDPOINT_AUTH_METHOD)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public void setTokenEndpointAuthMethod(@javax.annotation.Nonnull TokenEndpointAuthMethod tokenEndpointAuthMethod) {
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
    LoginConfigurationObject loginConfigurationObject = (LoginConfigurationObject) o;
    return Objects.equals(this.ari, loginConfigurationObject.ari) &&
        Objects.equals(this.configurationId, loginConfigurationObject.configurationId) &&
        Objects.equals(this.projectId, loginConfigurationObject.projectId) &&
        Objects.equals(this.name, loginConfigurationObject.name) &&
        Objects.equals(this.redirectUris, loginConfigurationObject.redirectUris) &&
        Objects.equals(this.postLogoutRedirectUris, loginConfigurationObject.postLogoutRedirectUris) &&
        Objects.equals(this.scope, loginConfigurationObject.scope) &&
        Objects.equals(this.clientId, loginConfigurationObject.clientId) &&
        Objects.equals(this.creationDate, loginConfigurationObject.creationDate) &&
        Objects.equals(this.vpDefinition, loginConfigurationObject.vpDefinition) &&
        Objects.equals(this.presentationDefinition, loginConfigurationObject.presentationDefinition) &&
        Objects.equals(this.idTokenMapping, loginConfigurationObject.idTokenMapping) &&
        Objects.equals(this.clientMetadata, loginConfigurationObject.clientMetadata) &&
        Objects.equals(this.tokenEndpointAuthMethod, loginConfigurationObject.tokenEndpointAuthMethod);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ari, configurationId, projectId, name, redirectUris, postLogoutRedirectUris, scope, clientId, creationDate, vpDefinition, presentationDefinition, idTokenMapping, clientMetadata, tokenEndpointAuthMethod);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class LoginConfigurationObject {\n");
    sb.append("    ari: ").append(toIndentedString(ari)).append("\n");
    sb.append("    configurationId: ").append(toIndentedString(configurationId)).append("\n");
    sb.append("    projectId: ").append(toIndentedString(projectId)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    redirectUris: ").append(toIndentedString(redirectUris)).append("\n");
    sb.append("    postLogoutRedirectUris: ").append(toIndentedString(postLogoutRedirectUris)).append("\n");
    sb.append("    scope: ").append(toIndentedString(scope)).append("\n");
    sb.append("    clientId: ").append(toIndentedString(clientId)).append("\n");
    sb.append("    creationDate: ").append(toIndentedString(creationDate)).append("\n");
    sb.append("    vpDefinition: ").append(toIndentedString(vpDefinition)).append("\n");
    sb.append("    presentationDefinition: ").append(toIndentedString(presentationDefinition)).append("\n");
    sb.append("    idTokenMapping: ").append(toIndentedString(idTokenMapping)).append("\n");
    sb.append("    clientMetadata: ").append(toIndentedString(clientMetadata)).append("\n");
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

    // add `ari` to the URL query string
    if (getAri() != null) {
      try {
        joiner.add(String.format("%sari%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getAri()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    // add `configurationId` to the URL query string
    if (getConfigurationId() != null) {
      try {
        joiner.add(String.format("%sconfigurationId%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getConfigurationId()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    // add `projectId` to the URL query string
    if (getProjectId() != null) {
      try {
        joiner.add(String.format("%sprojectId%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getProjectId()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    // add `name` to the URL query string
    if (getName() != null) {
      try {
        joiner.add(String.format("%sname%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getName()), "UTF-8").replaceAll("\\+", "%20")));
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

    // add `scope` to the URL query string
    if (getScope() != null) {
      try {
        joiner.add(String.format("%sscope%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getScope()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    // add `clientId` to the URL query string
    if (getClientId() != null) {
      try {
        joiner.add(String.format("%sclientId%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getClientId()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    // add `creationDate` to the URL query string
    if (getCreationDate() != null) {
      try {
        joiner.add(String.format("%screationDate%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getCreationDate()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
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

