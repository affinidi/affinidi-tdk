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
import com.affinidi.tdk.iam.client.models.JsonWebKeySetDto;
import com.affinidi.tdk.iam.client.models.TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf;
import com.affinidi.tdk.iam.client.models.TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.Arrays;



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

import com.affinidi.tdk.iam.client.JSON;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-12-20T07:41:15.044548999Z[Etc/UTC]", comments = "Generator version: 7.9.0")
public class TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo extends AbstractOpenApiSchema {
    private static final Logger log = Logger.getLogger(TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo.class.getName());

    public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
        @SuppressWarnings("unchecked")
        @Override
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
            if (!TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo.class.isAssignableFrom(type.getRawType())) {
                return null; // this class only serializes 'TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo' and its subtypes
            }
            final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
            final TypeAdapter<TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf> adapterTokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf = gson.getDelegateAdapter(this, TypeToken.get(TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf.class));
            final TypeAdapter<TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1> adapterTokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1 = gson.getDelegateAdapter(this, TypeToken.get(TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1.class));

            return (TypeAdapter<T>) new TypeAdapter<TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo>() {
                @Override
                public void write(JsonWriter out, TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo value) throws IOException {
                    if (value == null || value.getActualInstance() == null) {
                        elementAdapter.write(out, null);
                        return;
                    }

                    // check if the actual instance is of the type `TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf`
                    if (value.getActualInstance() instanceof TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf) {
                        JsonElement element = adapterTokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf.toJsonTree((TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf)value.getActualInstance());
                        elementAdapter.write(out, element);
                        return;
                    }
                    // check if the actual instance is of the type `TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1`
                    if (value.getActualInstance() instanceof TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1) {
                        JsonElement element = adapterTokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1.toJsonTree((TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1)value.getActualInstance());
                        elementAdapter.write(out, element);
                        return;
                    }
                    throw new IOException("Failed to serialize as the type doesn't match oneOf schemas: TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf, TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1");
                }

                @Override
                public TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo read(JsonReader in) throws IOException {
                    Object deserialized = null;
                    JsonElement jsonElement = elementAdapter.read(in);

                    int match = 0;
                    ArrayList<String> errorMessages = new ArrayList<>();
                    TypeAdapter actualAdapter = elementAdapter;

                    // deserialize TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf
                    try {
                        // validate the JSON object to see if any exception is thrown
                        TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf.validateJsonElement(jsonElement);
                        actualAdapter = adapterTokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf;
                        match++;
                        log.log(Level.FINER, "Input data matches schema 'TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf'");
                    } catch (Exception e) {
                        // deserialization failed, continue
                        errorMessages.add(String.format("Deserialization for TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf failed with `%s`.", e.getMessage()));
                        log.log(Level.FINER, "Input data does not match schema 'TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf'", e);
                    }
                    // deserialize TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1
                    try {
                        // validate the JSON object to see if any exception is thrown
                        TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1.validateJsonElement(jsonElement);
                        actualAdapter = adapterTokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1;
                        match++;
                        log.log(Level.FINER, "Input data matches schema 'TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1'");
                    } catch (Exception e) {
                        // deserialization failed, continue
                        errorMessages.add(String.format("Deserialization for TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1 failed with `%s`.", e.getMessage()));
                        log.log(Level.FINER, "Input data does not match schema 'TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1'", e);
                    }

                    if (match == 1) {
                        TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo ret = new TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo();
                        ret.setActualInstance(actualAdapter.fromJsonTree(jsonElement));
                        return ret;
                    }

                    throw new IOException(String.format("Failed deserialization for TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo: %d classes match result, expected 1. Detailed failure message for oneOf schemas: %s. JSON: %s", match, errorMessages, jsonElement.toString()));
                }
            }.nullSafe();
        }
    }

    // store a list of schema names defined in oneOf
    public static final Map<String, Class<?>> schemas = new HashMap<String, Class<?>>();

    public TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo() {
        super("oneOf", Boolean.FALSE);
    }

    public TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo(Object o) {
        super("oneOf", Boolean.FALSE);
        setActualInstance(o);
    }

    static {
        schemas.put("TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf", TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf.class);
        schemas.put("TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1", TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1.class);
    }

    @Override
    public Map<String, Class<?>> getSchemas() {
        return TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo.schemas;
    }

    /**
     * Set the instance that matches the oneOf child schema, check
     * the instance parameter is valid against the oneOf child schemas:
     * TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf, TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1
     *
     * It could be an instance of the 'oneOf' schemas.
     */
    @Override
    public void setActualInstance(Object instance) {
        if (instance instanceof TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf) {
            super.setActualInstance(instance);
            return;
        }

        if (instance instanceof TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1) {
            super.setActualInstance(instance);
            return;
        }

        throw new RuntimeException("Invalid instance type. Must be TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf, TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1");
    }

    /**
     * Get the actual instance, which can be the following:
     * TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf, TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1
     *
     * @return The actual instance (TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf, TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1)
     */
    @SuppressWarnings("unchecked")
    @Override
    public Object getActualInstance() {
        return super.getActualInstance();
    }

    /**
     * Get the actual instance of `TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf`. If the actual instance is not `TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf`,
     * the ClassCastException will be thrown.
     *
     * @return The actual instance of `TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf`
     * @throws ClassCastException if the instance is not `TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf`
     */
    public TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf getTokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf() throws ClassCastException {
        return (TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf)super.getActualInstance();
    }
    /**
     * Get the actual instance of `TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1`. If the actual instance is not `TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1`,
     * the ClassCastException will be thrown.
     *
     * @return The actual instance of `TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1`
     * @throws ClassCastException if the instance is not `TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1`
     */
    public TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1 getTokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1() throws ClassCastException {
        return (TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1)super.getActualInstance();
    }

    /**
     * Validates the JSON Element and throws an exception if issues found
     *
     * @param jsonElement JSON Element
     * @throws IOException if the JSON Element is invalid with respect to TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo
     */
    public static void validateJsonElement(JsonElement jsonElement) throws IOException {
        // validate oneOf schemas one by one
        int validCount = 0;
        ArrayList<String> errorMessages = new ArrayList<>();
        // validate the json string with TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf
        try {
            TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf.validateJsonElement(jsonElement);
            validCount++;
        } catch (Exception e) {
            errorMessages.add(String.format("Deserialization for TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf failed with `%s`.", e.getMessage()));
            // continue to the next one
        }
        // validate the json string with TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1
        try {
            TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1.validateJsonElement(jsonElement);
            validCount++;
        } catch (Exception e) {
            errorMessages.add(String.format("Deserialization for TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1 failed with `%s`.", e.getMessage()));
            // continue to the next one
        }
        if (validCount != 1) {
            throw new IOException(String.format("The JSON string is invalid for TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo with oneOf schemas: TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf, TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1. %d class(es) match the result, expected 1. Detailed failure message for oneOf schemas: %s. JSON: %s", validCount, errorMessages, jsonElement.toString()));
        }
    }

    /**
     * Create an instance of TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo given an JSON string
     *
     * @param jsonString JSON string
     * @return An instance of TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo
     * @throws IOException if the JSON string is invalid with respect to TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo
     */
    public static TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo fromJson(String jsonString) throws IOException {
        return JSON.getGson().fromJson(jsonString, TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo.class);
    }

    /**
     * Convert an instance of TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo to an JSON string
     *
     * @return JSON string
     */
    public String toJson() {
        return JSON.getGson().toJson(this);
    }
}
