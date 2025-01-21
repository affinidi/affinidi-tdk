package com.affinidi.tdk.common;

import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

import io.github.cdimascio.dotenv.Dotenv;
import io.github.cdimascio.dotenv.DotenvBuilder;

/**
 * This class provides utility functions required to access environment specific
 * configurations. The environment can be specified in the .env file at the
 * project base using AFFINIDI_TDK_PROPERTY_NAME or
 * NEXT_PUBLIC_AFFINIDI_TDK_ENVIRONMENT as dev, local or prod.
 *
 *
 * @author Priyanka
 *
 */
public class EnvironmentUtil {

    private static final Dotenv PROPERTIES = new DotenvBuilder().ignoreIfMissing().load();
    private static final Logger LOGGER = Logger.getLogger(EnvironmentUtil.class.getName());

    public static Dotenv getProperties() {
        return PROPERTIES;
    }

    /**
     * Returns the environment name as configured in the .env file In case no
     * configuration is found, the default return is production environment
     *
     * @return String
     */
    public static String getConfiguredEnvironment() {
        String configuredEnvironment = null;
        try {
            if (getProperties() != null) {
                configuredEnvironment = getProperties().get(Environment.AFFINIDI_TDK_PROPERTY_NAME);
                if (configuredEnvironment == null) {
                    configuredEnvironment = getProperties().get(Environment.NEXT_AFFINIDI_TDK_PROPERTY_NAME);
                }
            }
        } catch (Exception exception) {
            LOGGER.severe("Could not read .env file for TDK environment configuration");
        }

        if (configuredEnvironment == null) {
            LOGGER.log(Level.SEVERE, "Could not find environment details for {0}. Defaulting to production", configuredEnvironment);
            configuredEnvironment = Environment.PRODUCTION.environmentName;
        }
        return configuredEnvironment;
    }

    /**
     * Return the default region name
     *
     * @return String
     */
    public static String getDefaultRegion() {
        return Environment.DEFAULT_REGION;
    }

    /**
     * Returns the IOT url string for the configured environment
     *
     * @return String
     */
    public static String getIotUrlForEnvironment() {
        return getEnvironmentDetail().iotUrl;
    }

    /**
     * Returns the elements auth token url string for the configured environment
     *
     * @return String
     */
    public static String getElementAuthTokenUrlForEnvironment() {
        return getEnvironmentDetail().elementsAuthTokenUrl;
    }

    /**
     * Returns the vault URL for the configured environment
     *
     * @return String
     */
    public static String getVaultUrlForEnvironment() {
        return getEnvironmentDetail().vaultUrl;
    }

    /**
     * @return String
     */
    public static String getApiGatewayUrlForEnvironment() {
        return getEnvironmentDetail().apiGatewayUrl;
    }

    /**
     * @return String
     */
    public static String getValueFromEnvConfig(String propertyName) {
        String propertyValue = null;
        try {
            propertyValue = getProperties().get(propertyName);
        } catch (Exception exception) {
            LOGGER.log(Level.SEVERE, "Could not read .env file for {0}", propertyName);
        }
        return propertyValue;
    }

    /**
     * Returns the APi gateway URL for the configured environment
     *
     * @return String
     */
    static Environment getEnvironmentDetail() {
        System.out.println("XXX");

        final String envName = getConfiguredEnvironment();
        final Environment envDetail = (envName != null) ? Environment.getEnvSpecificDetails(envName) : null;

        if (envDetail != null) {
            return envDetail;
        }
        LOGGER.log(Level.SEVERE, "Could not find environment details for the specified name {0}. Hence defaulting to production", envName);
        return Environment.getEnvSpecificDetails(Environment.PRODUCTION.environmentName);
    }
}

enum Environment {

    LOCAL("LOCAL", Environment.LOCAL_IOT_URL, Environment.LOCAL_APIGATEWAY_URL, Environment.LOCAL_ELEMENTS_AUTH_TOKEN_URL, Environment.LOCAL_VAULT_URL),
    DEVELOPMENT("DEV", Environment.DEV_IOT_URL, Environment.DEV_APIGATEWAY_URL, Environment.DEV_ELEMENTS_AUTH_TOKEN_URL, Environment.DEV_VAULT_URL),
    PRODUCTION("PROD", Environment.PROD_IOT_URL, Environment.PROD_APIGATEWAY_URL, Environment.PROD_ELEMENTS_AUTH_TOKEN_URL, Environment.PROD_VAULT_URL),;

    static Environment getEnvSpecificDetails(String environmentName) {
        return EnvironmentMap.get(environmentName.toUpperCase());
    }

    public final String environmentName;
    public final String iotUrl;
    public final String elementsAuthTokenUrl;
    public final String vaultUrl;
    public final String apiGatewayUrl;

    private Environment(String environmentName, String iotUrl, String apiGatewayUrl, String elementsAuthTokenUrl,
            String vaultUrl) {
        this.environmentName = environmentName;
        this.iotUrl = iotUrl;
        this.apiGatewayUrl = apiGatewayUrl;
        this.elementsAuthTokenUrl = elementsAuthTokenUrl;
        this.vaultUrl = vaultUrl;
    }

    private static final Map<String, Environment> EnvironmentMap = new HashMap<>();

    static {
        for (Environment env : values()) {
            EnvironmentMap.put(env.environmentName, env);
        }
    }

    static final String AFFINIDI_TDK_PROPERTY_NAME = "AFFINIDI_TDK_ENVIRONMENT";
    static final String NEXT_AFFINIDI_TDK_PROPERTY_NAME = "NEXT_PUBLIC_AFFINIDI_TDK_ENVIRONMENT";
    static final String DEFAULT_REGION = "ap-southeast-1";

    static final String LOCAL_IOT_URL = "a3sq1vuw0cw9an-ats.iot.ap-southeast-1.amazonaws.com";
    static final String LOCAL_APIGATEWAY_URL = "https://apse1.dev.api.affinidi.io";
    static final String LOCAL_ELEMENTS_AUTH_TOKEN_URL = "https://apse1.dev.auth.developer.affinidi.io/auth/oauth2/token";
    static final String LOCAL_VAULT_URL = "http://localhost:3001";

    static final String DEV_IOT_URL = "a3sq1vuw0cw9an-ats.iot.ap-southeast-1.amazonaws.com";
    static final String DEV_APIGATEWAY_URL = "https://apse1.dev.api.affinidi.io";
    static final String DEV_ELEMENTS_AUTH_TOKEN_URL = "https://apse1.dev.auth.developer.affinidi.io/auth/oauth2/token";
    static final String DEV_VAULT_URL = "https://vault.dev.affinidi.com";

    static final String PROD_IOT_URL = "a13pfgsvt8xhx-ats.iot.ap-southeast-1.amazonaws.com";
    static final String PROD_APIGATEWAY_URL = "https://apse1.api.affinidi.io";
    static final String PROD_ELEMENTS_AUTH_TOKEN_URL = "https://apse1.auth.developer.affinidi.io/auth/oauth2/token";
    static final String PROD_VAULT_URL = "https://vault.affinidi.com";

}
