
package com.affinidi.tdk.common;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Logger;
import io.github.cdimascio.dotenv.Dotenv;

/**
* This class provides utility functions required to access environment specific
* configurations. The environment can be specified in the .env file at the project
* base using AFFINIDI_TDK_PROPERTY_NAME or NEXT_PUBLIC_AFFINIDI_TDK_ENVIRONMENT as
* dev, local or prod.
* 
*
* @author Priyanka
* 
*/

public class EnvironmentUtil {

    private static Dotenv properties;
    private static Logger logger = Logger.getLogger(EnvironmentUtil.class.getName());

    static {
        properties = Dotenv.load();
    }

    
    /** 
     * Returns the environment name as configured in the .env file
     * In case no configuration is found, the default return is 
     * production environment
     * 
     * @return String
     */
    public String getConfiguredEnvironment() {
        String configuredEnvironment = null;
        if (properties != null) {
            configuredEnvironment = properties.get(Environment.AFFINIDI_TDK_PROPERTY_NAME);
            if (configuredEnvironment == null) {
                configuredEnvironment = properties.get(Environment.NEXT_AFFINIDI_TDK_PROPERTY_NAME);
            }
        }
        if (configuredEnvironment == null) {
            logger.severe("Could not find environment details for "+configuredEnvironment+". Defaulting to production");
            configuredEnvironment = Environment.PRODUCTION.environmentName;
        }
        return configuredEnvironment;
    }

    
    /** 
     * Return the default region name
     * 
     * @return String
     */
    public String getDefaultRegion() {
        return Environment.DEFAULT_REGION;
    }

    
    /** 
     * Returns the IOT url string for the configured environment
     * 
     * @return String
     */
    public String getIotUrlForEnvironment()  {
        return getEnvironmentDetail().iotUrl;
    }

    /** 
     * Returns the elements auth token url string for the configured environment
     * 
     * @return String
     */
    public String getElementAuthTokenUrlForEnvironment() {
        return getEnvironmentDetail().elementsAuthTokenUrl;
    }

    /** 
     * Returns the vault URL for the configured environment
     * 
     * @return String
     */
    public String getVaultUrlForEnvironment()  {
        return getEnvironmentDetail().vaultUrl;
    }

    /** 
     * @return String
     */ 
    public String getApiGatewayUrlForEnvironment() {
        return getEnvironmentDetail().apiGatewayUrl;
    }

    /** 
     * @return String
     */ 
    public String getValueFromEnvConfig(String propertyName) {
        return properties.get(propertyName);
    }

    /** 
     * Returns the APi gateway URL for the configured environment
     * 
     * @return String
     */
    private Environment getEnvironmentDetail() {

        String envName = getConfiguredEnvironment();
        Environment envDetail = (envName != null) ? Environment.getEnvSpecificDetails(envName) : null;

        if (envDetail == null) {
            envDetail = Environment.getEnvSpecificDetails(Environment.PRODUCTION.environmentName);
            logger.severe("Could not find environment details for the specified name " + envName);
        }
        return envDetail;
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
