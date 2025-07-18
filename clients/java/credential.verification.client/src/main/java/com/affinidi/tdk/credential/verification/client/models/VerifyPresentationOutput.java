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
 * Response model of /verify-vp
 */
@JsonPropertyOrder({
  VerifyPresentationOutput.JSON_PROPERTY_ERRORS,
  VerifyPresentationOutput.JSON_PROPERTY_IS_VALID
})
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.13.0")
public class VerifyPresentationOutput {
  public static final String JSON_PROPERTY_ERRORS = "errors";
  @javax.annotation.Nonnull
  private List<String> errors = new ArrayList<>();

  public static final String JSON_PROPERTY_IS_VALID = "isValid";
  @javax.annotation.Nonnull
  private Boolean isValid;

  public VerifyPresentationOutput() {
  }

  public VerifyPresentationOutput errors(@javax.annotation.Nonnull List<String> errors) {
    
    this.errors = errors;
    return this;
  }

  public VerifyPresentationOutput addErrorsItem(String errorsItem) {
    if (this.errors == null) {
      this.errors = new ArrayList<>();
    }
    this.errors.add(errorsItem);
    return this;
  }

  /**
   * Error of the verification
   * @return errors
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_ERRORS)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)

  public List<String> getErrors() {
    return errors;
  }


  @JsonProperty(JSON_PROPERTY_ERRORS)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public void setErrors(@javax.annotation.Nonnull List<String> errors) {
    this.errors = errors;
  }

  public VerifyPresentationOutput isValid(@javax.annotation.Nonnull Boolean isValid) {
    
    this.isValid = isValid;
    return this;
  }

  /**
   * Verification result
   * @return isValid
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_IS_VALID)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)

  public Boolean getIsValid() {
    return isValid;
  }


  @JsonProperty(JSON_PROPERTY_IS_VALID)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public void setIsValid(@javax.annotation.Nonnull Boolean isValid) {
    this.isValid = isValid;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    VerifyPresentationOutput verifyPresentationOutput = (VerifyPresentationOutput) o;
    return Objects.equals(this.errors, verifyPresentationOutput.errors) &&
        Objects.equals(this.isValid, verifyPresentationOutput.isValid);
  }

  @Override
  public int hashCode() {
    return Objects.hash(errors, isValid);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VerifyPresentationOutput {\n");
    sb.append("    errors: ").append(toIndentedString(errors)).append("\n");
    sb.append("    isValid: ").append(toIndentedString(isValid)).append("\n");
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

    // add `errors` to the URL query string
    if (getErrors() != null) {
      for (int i = 0; i < getErrors().size(); i++) {
        try {
          joiner.add(String.format("%serrors%s%s=%s", prefix, suffix,
              "".equals(suffix) ? "" : String.format("%s%d%s", containerPrefix, i, containerSuffix),
              URLEncoder.encode(String.valueOf(getErrors().get(i)), "UTF-8").replaceAll("\\+", "%20")));
        } catch (UnsupportedEncodingException e) {
          // Should never happen, UTF-8 is always supported
          throw new RuntimeException(e);
        }
      }
    }

    // add `isValid` to the URL query string
    if (getIsValid() != null) {
      try {
        joiner.add(String.format("%sisValid%s=%s", prefix, suffix, URLEncoder.encode(String.valueOf(getIsValid()), "UTF-8").replaceAll("\\+", "%20")));
      } catch (UnsupportedEncodingException e) {
        // Should never happen, UTF-8 is always supported
        throw new RuntimeException(e);
      }
    }

    return joiner.toString();
  }

}

