package com.affinidi.tdk.common;

import java.net.URI;
import java.util.logging.Level;
import java.util.logging.Logger;

import jakarta.ws.rs.core.UriBuilder;

/**
 * This class provides utility functions required to create vault specific
 * links. Refer {@EnvironmentUtil} for more information
 *
 *
 * @author Priyanka
 *
 */
public class VaultUtil {

    static final String VAULT_SHARE_PATH = "/login";
    static final String VAULT_CLAIM_PATH = "/claim";
    static final String SHARE_REQUEST_PARAM = "request";
    static final String SHARE_CLIENT_PARAM = "clientId";
    static final String CLAIM_CREDENTIAL_URI_PARAM = "credential_offer_uri";

    private static final Logger LOGGER = Logger.getLogger(VaultUtil.class.getName());

    /**
     * Returns the credential offer claim link specific to the configured
     * environment
     *
     * @param credentialOfferUri
     * @return String
     */
    public String buildClaimLink(String credentialOfferUri) {
        String webVaultUrl = EnvironmentUtil.getVaultUrlForEnvironment();

        if (credentialOfferUri == null || credentialOfferUri.equals("")) {
            LOGGER.log(Level.SEVERE, "Invalid Credential Offer URI passed to utility {0}. Returning vault url", credentialOfferUri);
            return webVaultUrl;
        }

        webVaultUrl = String.join("", webVaultUrl, VAULT_CLAIM_PATH);
        URI claimUri = UriBuilder.fromUri(webVaultUrl).queryParam(CLAIM_CREDENTIAL_URI_PARAM, credentialOfferUri).build();
        return claimUri.toString();
    }

    /**
     * Returns the vault share link given request and a client id, specific to
     * the configured environment
     *
     * @param request
     * @param clientId
     * @return String
     */
    public String buildShareLink(String request, String clientId) {

        String webVaultUrl = EnvironmentUtil.getVaultUrlForEnvironment();
        webVaultUrl = String.join("", webVaultUrl, VAULT_SHARE_PATH);

        URI shareUri = UriBuilder.fromUri(webVaultUrl).
                queryParam(SHARE_REQUEST_PARAM, request).queryParam(SHARE_CLIENT_PARAM, clientId).build();
        return shareUri.toString();

    }

}
