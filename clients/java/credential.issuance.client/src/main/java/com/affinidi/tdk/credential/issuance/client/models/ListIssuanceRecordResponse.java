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
import com.affinidi.tdk.credential.issuance.client.models.FlowData;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.affinidi.tdk.credential.issuance.client.JSON;

/**
 * list of issuance data records
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-12-20T07:40:48.329558310Z[Etc/UTC]", comments = "Generator version: 7.9.0")
public class ListIssuanceRecordResponse {
  public static final String SERIALIZED_NAME_FLOW_DATA = "flowData";
  @SerializedName(SERIALIZED_NAME_FLOW_DATA)
  private List<FlowData> flowData = new ArrayList<>();

  public static final String SERIALIZED_NAME_LAST_EVALUATED_KEY = "lastEvaluatedKey";
  @SerializedName(SERIALIZED_NAME_LAST_EVALUATED_KEY)
  private String lastEvaluatedKey;

  public ListIssuanceRecordResponse() {
  }

  public ListIssuanceRecordResponse flowData(List<FlowData> flowData) {
    this.flowData = flowData;
    return this;
  }

  public ListIssuanceRecordResponse addFlowDataItem(FlowData flowDataItem) {
    if (this.flowData == null) {
      this.flowData = new ArrayList<>();
    }
    this.flowData.add(flowDataItem);
    return this;
  }

  /**
   * Get flowData
   * @return flowData
   */
  @javax.annotation.Nullable
  public List<FlowData> getFlowData() {
    return flowData;
  }

  public void setFlowData(List<FlowData> flowData) {
    this.flowData = flowData;
  }


  public ListIssuanceRecordResponse lastEvaluatedKey(String lastEvaluatedKey) {
    this.lastEvaluatedKey = lastEvaluatedKey;
    return this;
  }

  /**
   * Get lastEvaluatedKey
   * @return lastEvaluatedKey
   */
  @javax.annotation.Nullable
  public String getLastEvaluatedKey() {
    return lastEvaluatedKey;
  }

  public void setLastEvaluatedKey(String lastEvaluatedKey) {
    this.lastEvaluatedKey = lastEvaluatedKey;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ListIssuanceRecordResponse listIssuanceRecordResponse = (ListIssuanceRecordResponse) o;
    return Objects.equals(this.flowData, listIssuanceRecordResponse.flowData) &&
        Objects.equals(this.lastEvaluatedKey, listIssuanceRecordResponse.lastEvaluatedKey);
  }

  @Override
  public int hashCode() {
    return Objects.hash(flowData, lastEvaluatedKey);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ListIssuanceRecordResponse {\n");
    sb.append("    flowData: ").append(toIndentedString(flowData)).append("\n");
    sb.append("    lastEvaluatedKey: ").append(toIndentedString(lastEvaluatedKey)).append("\n");
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


  public static HashSet<String> openapiFields;
  public static HashSet<String> openapiRequiredFields;

  static {
    // a set of all properties/fields (JSON key names)
    openapiFields = new HashSet<String>();
    openapiFields.add("flowData");
    openapiFields.add("lastEvaluatedKey");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to ListIssuanceRecordResponse
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!ListIssuanceRecordResponse.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ListIssuanceRecordResponse is not found in the empty JSON string", ListIssuanceRecordResponse.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!ListIssuanceRecordResponse.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `ListIssuanceRecordResponse` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if (jsonObj.get("flowData") != null && !jsonObj.get("flowData").isJsonNull()) {
        JsonArray jsonArrayflowData = jsonObj.getAsJsonArray("flowData");
        if (jsonArrayflowData != null) {
          // ensure the json data is an array
          if (!jsonObj.get("flowData").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `flowData` to be an array in the JSON string but got `%s`", jsonObj.get("flowData").toString()));
          }

          // validate the optional field `flowData` (array)
          for (int i = 0; i < jsonArrayflowData.size(); i++) {
            FlowData.validateJsonElement(jsonArrayflowData.get(i));
          };
        }
      }
      if ((jsonObj.get("lastEvaluatedKey") != null && !jsonObj.get("lastEvaluatedKey").isJsonNull()) && !jsonObj.get("lastEvaluatedKey").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `lastEvaluatedKey` to be a primitive type in the JSON string but got `%s`", jsonObj.get("lastEvaluatedKey").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ListIssuanceRecordResponse.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ListIssuanceRecordResponse' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ListIssuanceRecordResponse> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ListIssuanceRecordResponse.class));

       return (TypeAdapter<T>) new TypeAdapter<ListIssuanceRecordResponse>() {
           @Override
           public void write(JsonWriter out, ListIssuanceRecordResponse value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public ListIssuanceRecordResponse read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of ListIssuanceRecordResponse given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of ListIssuanceRecordResponse
   * @throws IOException if the JSON string is invalid with respect to ListIssuanceRecordResponse
   */
  public static ListIssuanceRecordResponse fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ListIssuanceRecordResponse.class);
  }

  /**
   * Convert an instance of ListIssuanceRecordResponse to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}
