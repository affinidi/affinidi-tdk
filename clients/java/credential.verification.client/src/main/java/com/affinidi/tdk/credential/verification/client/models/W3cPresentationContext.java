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
import com.affinidi.tdk.credential.verification.client.models.W3cPresentationContextOneOfInner;
import java.util.List;
import java.util.Map;



import java.io.IOException;
import java.lang.reflect.Type;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonParseException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.JsonPrimitive;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonArray;
import com.google.gson.JsonParseException;

import com.affinidi.tdk.credential.verification.client.JSON;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-12-20T07:41:39.868522527Z[Etc/UTC]", comments = "Generator version: 7.9.0")
public class W3cPresentationContext extends AbstractOpenApiSchema {
    private static final Logger log = Logger.getLogger(W3cPresentationContext.class.getName());

    public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
        @SuppressWarnings("unchecked")
        @Override
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
            if (!W3cPresentationContext.class.isAssignableFrom(type.getRawType())) {
                return null; // this class only serializes 'W3cPresentationContext' and its subtypes
            }
            final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
            final TypeAdapter<String> adapterString = gson.getDelegateAdapter(this, TypeToken.get(String.class));
            final Type typeInstanceMapStringObject = new TypeToken<Map<String, Object>>(){}.getType();
            final TypeAdapter<Map<String, Object>> adapterMapStringObject = (TypeAdapter<Map<String, Object>>) gson.getDelegateAdapter(this, TypeToken.get(typeInstanceMapStringObject));

            final Type typeInstanceListW3cPresentationContextOneOfInner = new TypeToken<List<W3cPresentationContextOneOfInner>>(){}.getType();
            final TypeAdapter<List<W3cPresentationContextOneOfInner>> adapterListW3cPresentationContextOneOfInner = (TypeAdapter<List<W3cPresentationContextOneOfInner>>) gson.getDelegateAdapter(this, TypeToken.get(typeInstanceListW3cPresentationContextOneOfInner));

            return (TypeAdapter<T>) new TypeAdapter<W3cPresentationContext>() {
                @Override
                public void write(JsonWriter out, W3cPresentationContext value) throws IOException {
                    if (value == null || value.getActualInstance() == null) {
                        elementAdapter.write(out, null);
                        return;
                    }

                    // check if the actual instance is of the type `String`
                    if (value.getActualInstance() instanceof String) {
                        JsonPrimitive primitive = adapterString.toJsonTree((String)value.getActualInstance()).getAsJsonPrimitive();
                        elementAdapter.write(out, primitive);
                        return;
                    }
                    // check if the actual instance is of the type `Map<String, Object>`
                    if (value.getActualInstance() instanceof Map<?, ?>) {
                        JsonObject object = adapterMapStringObject.toJsonTree((Map<String, Object>)value.getActualInstance()).getAsJsonObject();
                        elementAdapter.write(out, object);
                        return;
                    }
                    // check if the actual instance is of the type `List<W3cPresentationContextOneOfInner>`
                    if (value.getActualInstance() instanceof List<?>) {
                        List<?> list = (List<?>) value.getActualInstance();
                        if (list.get(0) instanceof W3cPresentationContextOneOfInner) {
                            JsonArray array = adapterListW3cPresentationContextOneOfInner.toJsonTree((List<W3cPresentationContextOneOfInner>)value.getActualInstance()).getAsJsonArray();
                            elementAdapter.write(out, array);
                            return;
                        }
                    }
                    throw new IOException("Failed to serialize as the type doesn't match oneOf schemas: List<W3cPresentationContextOneOfInner>, Map<String, Object>, String");
                }

                @Override
                public W3cPresentationContext read(JsonReader in) throws IOException {
                    Object deserialized = null;
                    JsonElement jsonElement = elementAdapter.read(in);

                    int match = 0;
                    ArrayList<String> errorMessages = new ArrayList<>();
                    TypeAdapter actualAdapter = elementAdapter;

                    // deserialize String
                    try {
                        // validate the JSON object to see if any exception is thrown
                        if (!jsonElement.getAsJsonPrimitive().isString()) {
                            throw new IllegalArgumentException(String.format("Expected json element to be of type String in the JSON string but got `%s`", jsonElement.toString()));
                        }
                        actualAdapter = adapterString;
                        match++;
                        log.log(Level.FINER, "Input data matches schema 'String'");
                    } catch (Exception e) {
                        // deserialization failed, continue
                        errorMessages.add(String.format("Deserialization for String failed with `%s`.", e.getMessage()));
                        log.log(Level.FINER, "Input data does not match schema 'String'", e);
                    }
                    // deserialize Map<String, Object>
                    try {
                        // validate the JSON object to see if any exception is thrown
                        if (!jsonElement.isJsonObject()) {
                            throw new IllegalArgumentException(String.format("Expected json element to be a object type in the JSON string but got `%s`", jsonElement.toString()));
                        }

                        actualAdapter = adapterMapStringObject;
                        match++;
                        log.log(Level.FINER, "Input data matches schema 'Map<String, Object>'");
                    } catch (Exception e) {
                        // deserialization failed, continue
                        errorMessages.add(String.format("Deserialization for Map<String, Object> failed with `%s`.", e.getMessage()));
                        log.log(Level.FINER, "Input data does not match schema 'Map<String, Object>'", e);
                    }
                    // deserialize List<W3cPresentationContextOneOfInner>
                    try {
                        // validate the JSON object to see if any exception is thrown
                        if (!jsonElement.isJsonArray()) {
                            throw new IllegalArgumentException(String.format("Expected json element to be a array type in the JSON string but got `%s`", jsonElement.toString()));
                        }

                        JsonArray array = jsonElement.getAsJsonArray();
                        // validate array items
                        for(JsonElement element : array) {
                            W3cPresentationContextOneOfInner.validateJsonElement(element);
                        }
                        actualAdapter = adapterListW3cPresentationContextOneOfInner;
                        match++;
                        log.log(Level.FINER, "Input data matches schema 'List<W3cPresentationContextOneOfInner>'");
                    } catch (Exception e) {
                        // deserialization failed, continue
                        errorMessages.add(String.format("Deserialization for List<W3cPresentationContextOneOfInner> failed with `%s`.", e.getMessage()));
                        log.log(Level.FINER, "Input data does not match schema 'List<W3cPresentationContextOneOfInner>'", e);
                    }

                    if (match == 1) {
                        W3cPresentationContext ret = new W3cPresentationContext();
                        ret.setActualInstance(actualAdapter.fromJsonTree(jsonElement));
                        return ret;
                    }

                    throw new IOException(String.format("Failed deserialization for W3cPresentationContext: %d classes match result, expected 1. Detailed failure message for oneOf schemas: %s. JSON: %s", match, errorMessages, jsonElement.toString()));
                }
            }.nullSafe();
        }
    }

    // store a list of schema names defined in oneOf
    public static final Map<String, Class<?>> schemas = new HashMap<String, Class<?>>();

    public W3cPresentationContext() {
        super("oneOf", Boolean.FALSE);
    }

    public W3cPresentationContext(Object o) {
        super("oneOf", Boolean.FALSE);
        setActualInstance(o);
    }

    static {
        schemas.put("String", String.class);
        schemas.put("Map<String, Object>", Map.class);
        schemas.put("List<W3cPresentationContextOneOfInner>", List.class);
    }

    @Override
    public Map<String, Class<?>> getSchemas() {
        return W3cPresentationContext.schemas;
    }

    /**
     * Set the instance that matches the oneOf child schema, check
     * the instance parameter is valid against the oneOf child schemas:
     * List<W3cPresentationContextOneOfInner>, Map<String, Object>, String
     *
     * It could be an instance of the 'oneOf' schemas.
     */
    @Override
    public void setActualInstance(Object instance) {
        if (instance instanceof String) {
            super.setActualInstance(instance);
            return;
        }

        if (instance instanceof Map<?, ?>) {
            super.setActualInstance(instance);
            return;
        }

        if (instance instanceof List<?>) {
            List<?> list = (List<?>) instance;
            if (list.get(0) instanceof W3cPresentationContextOneOfInner) {
                super.setActualInstance(instance);
                return;
            }
        }

        throw new RuntimeException("Invalid instance type. Must be List<W3cPresentationContextOneOfInner>, Map<String, Object>, String");
    }

    /**
     * Get the actual instance, which can be the following:
     * List<W3cPresentationContextOneOfInner>, Map<String, Object>, String
     *
     * @return The actual instance (List<W3cPresentationContextOneOfInner>, Map<String, Object>, String)
     */
    @SuppressWarnings("unchecked")
    @Override
    public Object getActualInstance() {
        return super.getActualInstance();
    }

    /**
     * Get the actual instance of `String`. If the actual instance is not `String`,
     * the ClassCastException will be thrown.
     *
     * @return The actual instance of `String`
     * @throws ClassCastException if the instance is not `String`
     */
    public String getString() throws ClassCastException {
        return (String)super.getActualInstance();
    }
    /**
     * Get the actual instance of `Map<String, Object>`. If the actual instance is not `Map<String, Object>`,
     * the ClassCastException will be thrown.
     *
     * @return The actual instance of `Map<String, Object>`
     * @throws ClassCastException if the instance is not `Map<String, Object>`
     */
    public Map<String, Object> getMapStringObject() throws ClassCastException {
        return (Map<String, Object>)super.getActualInstance();
    }
    /**
     * Get the actual instance of `List<W3cPresentationContextOneOfInner>`. If the actual instance is not `List<W3cPresentationContextOneOfInner>`,
     * the ClassCastException will be thrown.
     *
     * @return The actual instance of `List<W3cPresentationContextOneOfInner>`
     * @throws ClassCastException if the instance is not `List<W3cPresentationContextOneOfInner>`
     */
    public List<W3cPresentationContextOneOfInner> getListW3cPresentationContextOneOfInner() throws ClassCastException {
        return (List<W3cPresentationContextOneOfInner>)super.getActualInstance();
    }

    /**
     * Validates the JSON Element and throws an exception if issues found
     *
     * @param jsonElement JSON Element
     * @throws IOException if the JSON Element is invalid with respect to W3cPresentationContext
     */
    public static void validateJsonElement(JsonElement jsonElement) throws IOException {
        // validate oneOf schemas one by one
        int validCount = 0;
        ArrayList<String> errorMessages = new ArrayList<>();
        // validate the json string with String
        try {
            if (!jsonElement.getAsJsonPrimitive().isString()) {
                throw new IllegalArgumentException(String.format("Expected json element to be of type String in the JSON string but got `%s`", jsonElement.toString()));
            }
            validCount++;
        } catch (Exception e) {
            errorMessages.add(String.format("Deserialization for String failed with `%s`.", e.getMessage()));
            // continue to the next one
        }
        // validate the json string with Map<String, Object>
        try {
            if (!jsonElement.isJsonObject()) {
                throw new IllegalArgumentException(String.format("Expected json element to be a object type in the JSON string but got `%s`", jsonElement.toString()));
            }

            validCount++;
        } catch (Exception e) {
            errorMessages.add(String.format("Deserialization for Map<String, Object> failed with `%s`.", e.getMessage()));
            // continue to the next one
        }
        // validate the json string with List<W3cPresentationContextOneOfInner>
        try {
            if (!jsonElement.isJsonArray()) {
                throw new IllegalArgumentException(String.format("Expected json element to be a array type in the JSON string but got `%s`", jsonElement.toString()));
            }
            JsonArray array = jsonElement.getAsJsonArray();
            // validate array items
            for(JsonElement element : array) {
                W3cPresentationContextOneOfInner.validateJsonElement(element);
            }
            validCount++;
        } catch (Exception e) {
            errorMessages.add(String.format("Deserialization for List<W3cPresentationContextOneOfInner> failed with `%s`.", e.getMessage()));
            // continue to the next one
        }
        if (validCount != 1) {
            throw new IOException(String.format("The JSON string is invalid for W3cPresentationContext with oneOf schemas: List<W3cPresentationContextOneOfInner>, Map<String, Object>, String. %d class(es) match the result, expected 1. Detailed failure message for oneOf schemas: %s. JSON: %s", validCount, errorMessages, jsonElement.toString()));
        }
    }

    /**
     * Create an instance of W3cPresentationContext given an JSON string
     *
     * @param jsonString JSON string
     * @return An instance of W3cPresentationContext
     * @throws IOException if the JSON string is invalid with respect to W3cPresentationContext
     */
    public static W3cPresentationContext fromJson(String jsonString) throws IOException {
        return JSON.getGson().fromJson(jsonString, W3cPresentationContext.class);
    }

    /**
     * Convert an instance of W3cPresentationContext to an JSON string
     *
     * @return JSON string
     */
    public String toJson() {
        return JSON.getGson().toJson(this);
    }
}
