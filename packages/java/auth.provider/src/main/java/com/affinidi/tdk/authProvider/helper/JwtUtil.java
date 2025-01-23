package com.affinidi.tdk.authProvider.helper;

import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.Key;
import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.Base64;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.crypto.Cipher;
import javax.crypto.EncryptedPrivateKeyInfo;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;

import org.apache.hc.client5.http.classic.methods.HttpGet;
import org.apache.hc.client5.http.impl.classic.CloseableHttpClient;
import org.apache.hc.client5.http.impl.classic.HttpClients;
import org.apache.hc.core5.http.HttpEntity;
import org.apache.hc.core5.http.ParseException;
import org.apache.hc.core5.http.io.entity.EntityUtils;

import com.affinidi.tdk.authProvider.exception.InvalidPrivateKeyException;
import com.affinidi.tdk.authProvider.exception.InvalidPublicKeyException;
import com.affinidi.tdk.authProvider.exception.JwtGenerationException;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonSyntaxException;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.security.InvalidKeyException;
import io.jsonwebtoken.security.Jwk;
import io.jsonwebtoken.security.Jwks;

/**
 * This class provides utility functions required by {@link AuthProvider} related for processing(creating, signing,
 * validation) of JWT.
 *
 * @author Priyanka
 */
public class JwtUtil {

    private static final Logger LOGGER = Logger.getLogger(JwtUtil.class.getName());
    /**
     * Gson is thread safe.
     */
    private static final Gson GSON = new Gson();

    /**
     * This method builds a JSON web token for the provided claims. It then signs the token with the provided privatekey
     * using RS256.
     *
     * In case of an encrypted private key; this method expects to receive the passphrase which was used during
     * generation of the key pair.
     *
     * @param tokenId
     * @param audience
     * @param privateKeyString
     * @param passphrase
     * @param keyId
     *
     * @return String
     *
     * @throws JwtGenerationException
     *             in case the private key could not be processed or jwt generation failed
     */
    public static String signPayload(String tokenId, String audience, String privateKeyString, String passphrase,
            String keyId) throws JwtGenerationException {

        final long issueTimeInSeconds = System.currentTimeMillis() / 1000;
        final Map<String, Object> claims = new HashMap<>();
        claims.put("iss", tokenId);
        claims.put("sub", tokenId);
        claims.put("aud", audience);
        claims.put("jti", UUID.randomUUID().toString());
        claims.put("exp", issueTimeInSeconds + (5 * 60));
        claims.put("iat", issueTimeInSeconds);

        try {
            return generateJwt(derivePrivateKey(privateKeyString, passphrase), claims);
        } catch (InvalidPrivateKeyException ipke) {
            throw new JwtGenerationException(ipke.getMessage());
        }
    }

    /**
     * This method builds a JSON web token for the provided claims specific to an iota request. It then signs the token
     * with the provided privatekey using RS256.
     *
     * In case of an encrypted private key; this method expects to receive the passphrase which was used during
     * generation of the key pair.
     *
     * @param tokenId
     * @param audience
     * @param privateKeyString
     * @param passphrase
     * @param keyId
     * @param projectId
     * @param iotaConfigId
     * @param iotaSessionId
     *
     * @return String
     *
     * @throws JwtGenerationException
     *             in case the private key could not be processed or jwt generation failed
     */
    public static String signIotaPayload(String tokenId, String audience, String privateKeyString, String passphrase,
            String keyId, String projectId, String iotaConfigId, String iotaSessionId) throws JwtGenerationException {

        final long issueTimeInSeconds = System.currentTimeMillis() / 1000;
        final Map<String, Object> claims = new HashMap<>();
        claims.put("iss", tokenId);
        claims.put("sub", tokenId);
        claims.put("kid", tokenId);
        claims.put("aud", audience);
        claims.put("jti", UUID.randomUUID().toString());
        claims.put("exp", issueTimeInSeconds + (5 * 60));
        claims.put("iat", issueTimeInSeconds);
        claims.put("project_id", projectId);
        claims.put("iota_configuration_id", iotaConfigId);
        claims.put("iota_session_id", iotaSessionId);
        claims.put("scope", "iota_channel");

        try {
            return generateJwt(derivePrivateKey(privateKeyString, passphrase), claims);
        } catch (JwtGenerationException jge) {
            throw jge;
        } catch (InvalidPrivateKeyException ipke) {
            throw new JwtGenerationException(ipke.getMessage());
        }
    }

    /**
     * This method fetches the signature verification key, required to validate the jws for a projectScopeToken and
     * converts it to {@link java.security.PublicKey}.
     *
     * @param apiGatewayUrl
     *
     * @return PublicKey
     *
     * @throws InvalidPublicKeyException
     *             in case the public key could not be retrieved/extracted
     */
    public static PublicKey fetchPublicKey(String apiGatewayUrl) throws InvalidPublicKeyException {
        try {
            final HttpGet httpGet = new HttpGet(apiGatewayUrl + AuthProviderConstants.PUBLIC_KEY_PATH);
            httpGet.setHeader(AuthProviderConstants.CONTENT_TYPE_HEADER,
                    AuthProviderConstants.APPLICATION_JSON_CONTENT_TYPE);

            try (final CloseableHttpClient client = HttpClients.createSystem()) {
                return client.execute(httpGet, response -> {
                    if (response.getCode() >= 200 && response.getCode() < 300) {
                        final HttpEntity entity = response.getEntity();
                        final String jwkFromResponse = decodeResponse(entity);
                        final Jwk<?> jwk = Jwks.parser().build().parse(jwkFromResponse);
                        if (jwk != null) {
                            return (PublicKey) jwk.toKey();
                        }
                    } else {
                        String resp = decodeResponse(response.getEntity());
                        LOGGER.log(Level.INFO, "fetchPublicKey entity: {0}", resp);
                    }
                    return null;
                });
            }
        } catch (IOException exception) {
            throw new InvalidPublicKeyException("Could not retrieve/ extract the public "
                    + "key required to validate projectScopeToken " + exception.getMessage());
        }
    }

    /**
     * This method validates the projectScopeToken. Along with validating if the token is malformed or expired; it also
     * verifies the token signature using the signature verification public key.
     *
     * If the public key could not be retrieved for any reason; the method would consider the token as invalid.
     *
     * @param token
     * @param apiGatewayUrl
     *
     * @return boolean
     */
    public static boolean validProjectTokenPresent(String token, String apiGatewayUrl) {
        try {
            final PublicKey publicKey = fetchPublicKey(apiGatewayUrl);
            if (publicKey == null) {
                throw new Exception("Could not retrieve public key for token validation");
            }
            Jwts.parser().verifyWith(publicKey).build().parse(token);
            return true;
        } catch (Exception e) {
            // ignore
        }
        return false;
    }

    /**
     * This method converts the private key string passed to a {@link java.security.PrivateKey}. In case a passphrase is
     * passed, the private key is treated as encrypted and processed accordingly. This passphrase should be same as the
     * one used to create the public-private key pair.
     *
     * @param privateKeyString
     * @param passphrase
     *
     * @return PrivateKey
     *
     * @throws InvalidPrivateKeyException
     */
    private static PrivateKey derivePrivateKey(String privateKeyString, String passphrase)
            throws InvalidPrivateKeyException {
        try {
            if (passphrase.isEmpty()) {
                return getPrivateKeyFromString(privateKeyString);
            }
            return getEncryptedPrivateKeyFromString(privateKeyString, passphrase);
        } catch (Exception exception) {
            throw new InvalidPrivateKeyException(AuthProviderConstants.COULD_NOT_DERIVE_PRIVATE_KEY_ERROR_MSG
                    + " Exception : " + exception.toString());
        }
    }

    /**
     * This method generates a JSON payload representing all the claims passed. It then signs this payload with the
     * {@link java.security.PrivateKey}, creating a json web signature (JWS) and then builds the JWT as a URL-safe
     * string.
     *
     * @param privateKey
     * @param claims
     *
     * @return String
     *
     * @throws JwtGenerationException
     *             when the jwt generation fails. For instance if the private key is insufficient
     */
    private static String generateJwt(PrivateKey privateKey, Map<String, Object> claims) throws JwtGenerationException {
        try {
            return Jwts.builder().claims(claims).signWith(privateKey, Jwts.SIG.RS256).compact();

        } catch (InvalidKeyException ike) {
            throw new JwtGenerationException(
                    " Could not generate the JWT representing the claims. Exception" + ike.getMessage());
        }
    }

    /**
     * This method converts a private key string to {@link java.security.PrivateKey} object.
     *
     * @param privateKeyPEM
     *
     * @return PrivateKey
     *
     * @throws Exception
     */
    private static PrivateKey getPrivateKeyFromString(String privateKeyPEM) throws Exception {
        final String privateKeyContent = extractPrivateKeyContent(privateKeyPEM);
        final byte[] encoded = Base64.getDecoder().decode(privateKeyContent);
        final KeyFactory keyFactory = KeyFactory.getInstance("RSA");
        final PKCS8EncodedKeySpec keySpec = new PKCS8EncodedKeySpec(encoded);
        return keyFactory.generatePrivate(keySpec);
    }

    /**
     * This method converts an encrypted private key string to {@link java.security.PrivateKey} object The passphrase
     * which was used to generate the public-private keypair should be passed to this method for processing.
     *
     * @param encryptedPrivateKeyPEM
     * @param password
     *
     * @return PrivateKey
     *
     * @throws InvalidKeySpecException
     */
    private static PrivateKey getEncryptedPrivateKeyFromString(String encryptedPrivateKeyPEM, String password)
            throws Exception {
        final String privateKeyContent = extractPrivateKeyContent(encryptedPrivateKeyPEM);
        final byte[] encodedKey = Base64.getDecoder().decode(privateKeyContent);
        final EncryptedPrivateKeyInfo encryptedPrivateKeyInfo = new EncryptedPrivateKeyInfo(encodedKey);
        final Cipher cipher = Cipher.getInstance(encryptedPrivateKeyInfo.getAlgName());
        final PBEKeySpec pbeKeySpec = new PBEKeySpec(password.toCharArray());
        final SecretKeyFactory secFac = SecretKeyFactory.getInstance(encryptedPrivateKeyInfo.getAlgName());
        final Key pbeKey = secFac.generateSecret(pbeKeySpec);
        final AlgorithmParameters algParams = encryptedPrivateKeyInfo.getAlgParameters();
        cipher.init(Cipher.DECRYPT_MODE, pbeKey, algParams);
        final PKCS8EncodedKeySpec pkcs8KeySpec = encryptedPrivateKeyInfo.getKeySpec(cipher);
        final KeyFactory keyFactory = KeyFactory.getInstance("RSA");

        return keyFactory.generatePrivate(pkcs8KeySpec);
    }

    /**
     * This method cleans up the private key string which is required to decode the key material.
     *
     * @param privateKey
     *
     * @return String
     */
    private static String extractPrivateKeyContent(String privateKey) {
        return privateKey
                .replaceAll("-----BEGIN (ENCRYPTED )?PRIVATE KEY-----|-----END (ENCRYPTED )?PRIVATE KEY-----", "")
                .replace("\\n", "").trim();
    }

    /**
     * This method processes the response from the public key API call and extracts the first key listed from the
     * response.
     *
     * @param responseEntity
     *
     * @return String
     *
     * @throws IOException
     * @throws JsonSyntaxException
     * @throws ParseException
     */
    private static String decodeResponse(HttpEntity responseEntity)
            throws IOException, JsonSyntaxException, ParseException {
        if (responseEntity == null) {
            return null;
        }
        final JsonElement responseAsJson = GSON.fromJson(EntityUtils.toString(responseEntity), JsonElement.class);
        final JsonObject responseObject = responseAsJson.isJsonObject() ? responseAsJson.getAsJsonObject() : null;
        if (responseObject == null) {
            return null;
        }
        final JsonArray setOfKeys = responseObject.getAsJsonArray("keys");
        if (setOfKeys == null) {
            return null;
        }
        final JsonObject firstKeysAsObject = setOfKeys.size() > 0 ? setOfKeys.get(0).getAsJsonObject() : null;
        return (firstKeysAsObject != null) ? firstKeysAsObject.toString() : null;
    }
}
