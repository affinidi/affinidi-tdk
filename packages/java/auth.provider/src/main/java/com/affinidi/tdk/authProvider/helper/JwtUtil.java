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

import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.MalformedJwtException;
import io.jsonwebtoken.security.Jwk;
import io.jsonwebtoken.security.Jwks;

/**
 * This class provides utility functions required
 * by {@link AuthProvider} related for
 * processing(creating, signing, validation) of JWT
 *
 * @author Priyanka
 * 
 */

public class JwtUtil {

    /**
     * This method builds a JSON web token for the provided claims.
     * It then signs the token with the provided privatekey using RS256.
     * 
     * In case of an encrypted private key; this method expects to receive
     * the passphrase which was used during generation of the key pair.
     * 
     * @param tokenId
     * @param audience
     * @param privateKeyString
     * @param passphrase
     * @param keyId
     * @return String
     * @throws JwtGenerationException in case the private key could not be processed
     *                                or jwt generation failed
     */
    public static String signPayload(String tokenId, String audience, String privateKeyString, String passphrase,
            String keyId) throws JwtGenerationException {

        String signedJwtForClaims = null;
        long issueTimeInSeconds = System.currentTimeMillis() / 1000;
        Map<String, Object> claims = new HashMap<>();
        claims.put("iss", tokenId);
        claims.put("sub", tokenId);
        claims.put("aud", audience);
        claims.put("jti", UUID.randomUUID().toString());
        claims.put("exp", issueTimeInSeconds + (5 * 60));
        claims.put("iat", issueTimeInSeconds);

        try {
            signedJwtForClaims = generateJwt(derivePrivateKey(privateKeyString, passphrase), claims);
        } catch (JwtGenerationException jwtGenerationException) {
            throw jwtGenerationException;
        } catch (InvalidPrivateKeyException iPrivateKeyExceptione) {
            throw new JwtGenerationException(iPrivateKeyExceptione.getMessage());
        }
        return signedJwtForClaims;
    }

    /**
     * This method builds a JSON web token for the provided claims specific
     * to an iota request.
     * It then signs the token with the provided privatekey using RS256.
     * 
     * In case of an encrypted private key; this method expects to receive
     * the passphrase which was used during generation of the key pair.
     * 
     * @param tokenId
     * @param audience
     * @param privateKeyString
     * @param passphrase
     * @param keyId
     * @param projectId
     * @param iotaConfigId
     * @param iotaSessionId
     * @return String
     * @throws JwtGenerationException in case the private key could not be processed
     *                                or jwt generation failed
     */
    public static String signIotaPayload(String tokenId, String audience, String privateKeyString, String passphrase,
            String keyId, String projectId, String iotaConfigId, String iotaSessionId) throws JwtGenerationException {

        String signedJwtForClaims = null;
        long issueTimeInSeconds = System.currentTimeMillis() / 1000;
        Map<String, Object> claims = new HashMap<>();
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
            signedJwtForClaims = generateJwt(derivePrivateKey(privateKeyString, passphrase), claims);
        } catch (JwtGenerationException jwtGenerationException) {
            throw jwtGenerationException;
        } catch (InvalidPrivateKeyException iPrivateKeyExceptione) {
            throw new JwtGenerationException(iPrivateKeyExceptione.getMessage());
        }

        return signedJwtForClaims;
    }

    /**
     * This method fetches the signature verification key, required to
     * validate the jws for a projectScopeToken and converts it to
     * {@link java.security.PublicKey}
     * 
     * @param apiGatewayUrl
     * @return PublicKey
     * @throws InvalidPublicKeyException in case the public key could not be
     *                                   retrieved/extracted
     */
    public static PublicKey fetchPublicKey(String apiGatewayUrl) throws InvalidPublicKeyException {
        PublicKey publicKey = null;
        try {
            final HttpGet httpGet = new HttpGet(apiGatewayUrl + AuthProviderConstants.publicKeyPath);
            httpGet.setHeader(AuthProviderConstants.contentTypeHeader,
                    AuthProviderConstants.applicationJsonContentType);

            CloseableHttpClient client = HttpClients.createSystem();
            publicKey = client.execute(httpGet,
                    response -> {
                        if (response.getCode() >= 200 && response.getCode() < 300) {
                            HttpEntity entity = response.getEntity();
                            String jwkFromResponse = decodeRespose(entity);
                            Jwk<?> jwk = Jwks.parser().build()
                                    .parse(jwkFromResponse);
                            if (jwk != null) {
                                return (PublicKey) jwk.toKey();
                            }
                        } else {
                            String resp = decodeRespose(response.getEntity());
                            System.out.println(resp.toString());
                        }
                        return null;
                    });
        } catch (Exception exception) {
            throw new InvalidPublicKeyException("Could not retreive/ extract the public " +
                    "key required to validate projectScopeToken " + exception.getMessage());
        }
        return publicKey;
    }

    /**
     * This method validates the projectScopeToken.
     * Along with validating if the token is malformed or expired;
     * it also verifies the token signature using the
     * signature verification public key.
     * 
     * If the public key could not be retrieved for any reason;
     * the method would consider the token as invalid.
     * 
     * @param token
     * @param apiGatewayUrl
     * @return boolean
     */
    public static boolean validProjectTokenPresent(String token, String apiGatewayUrl) {
        try {
            PublicKey publicKey = fetchPublicKey(apiGatewayUrl);
            if (publicKey == null) {
                throw new Exception("Could not retrieve public key for token validation");
            }
            Jwts.parser().verifyWith(publicKey).build().parse(token);
        } catch (InvalidPublicKeyException iPublicKeyException) {
            return false;
        } catch (ExpiredJwtException ejException) {
            return false;
        } catch (MalformedJwtException mjException) {
            return false;
        } catch (Exception eException) {
            return false;
        }
        return true;
    }

    /**
     * This method converts the private key string passed to a
     * {@link java.security.PrivateKey}. In case a passphrase is passed,
     * the private key is treated as encrypted and processed accordingly.
     * This passphrase should be same as the one used to create the
     * public-private key pair
     * 
     * @param privateKeyString
     * @param passphrase
     * @return PrivateKey
     * @throws InvalidPrivateKeyException
     */
    private static PrivateKey derivePrivateKey(String privateKeyString, String passphrase)
            throws InvalidPrivateKeyException {

        PrivateKey privateKey = null;
        try {
            if (passphrase.isEmpty()) {
                privateKey = getPrivateKeyFromString(privateKeyString);
            } else {
                privateKey = getEncryptedPrivateKeyFromString(privateKeyString, passphrase);
            }
        } catch (Exception exception) {
            throw new InvalidPrivateKeyException(
                    AuthProviderConstants.couldNotDerivePrivateKeyErrorMsg +
                            " Exception : " + exception.toString());
        }
        return privateKey;
    }

    /**
     * This method generates a JSON payload representing all the
     * claims passed. It then signs this payload with the
     * {@link java.security.PrivateKey}, creating a json web
     * signature (JWS) and then builds the JWT as a URL-safe
     * string
     * 
     * @param privateKey
     * @param claims
     * @return String
     * @throws JwtGenerationException when the jwt generation fails. For instance if
     *                                the private key is insufficient
     */
    private static String generateJwt(PrivateKey privateKey, Map<String, Object> claims) throws JwtGenerationException {
        String jwToken = null;
        try {
            jwToken = Jwts.builder()
                    .claims(claims)
                    .signWith(privateKey, Jwts.SIG.RS256)
                    .compact();

        } catch (Exception exception) {
            throw new JwtGenerationException(
                    " Could not generate the JWT representing the claims. Exception" + exception.getMessage());
        }
        return jwToken;
    }

    /**
     * This method converts a private key string to
     * {@link java.security.PrivateKey} object
     * 
     * @param privateKeyPEM
     * @return PrivateKey
     * @throws Exception
     */
    private static PrivateKey getPrivateKeyFromString(String privateKeyPEM) throws Exception {
        String privateKeyContent = extractPrivateKeyContent(privateKeyPEM);
        byte[] encoded = Base64.getDecoder().decode(privateKeyContent);
        KeyFactory keyFactory = KeyFactory.getInstance("RSA");
        PKCS8EncodedKeySpec keySpec = new PKCS8EncodedKeySpec(encoded);
        return keyFactory.generatePrivate(keySpec);
    }

    /**
     * This method converts an encrypted private key string to
     * {@link java.security.PrivateKey} object
     * The passphrase which was used to generate the public-private
     * keypair should be passed to this method for processing.
     * 
     * @param encryptedPrivateKeyPEM
     * @param password
     * @return PrivateKey
     * @throws Exception
     */
    private static PrivateKey getEncryptedPrivateKeyFromString(String encryptedPrivateKeyPEM, String password)
            throws Exception {
        String privateKeyContent = extractPrivateKeyContent(encryptedPrivateKeyPEM);
        byte[] encodedKey = Base64.getDecoder().decode(privateKeyContent);
        EncryptedPrivateKeyInfo encryptedPrivateKeyInfo = new EncryptedPrivateKeyInfo(encodedKey);
        Cipher cipher = Cipher.getInstance(encryptedPrivateKeyInfo.getAlgName());
        PBEKeySpec pbeKeySpec = new PBEKeySpec(password.toCharArray());
        SecretKeyFactory secFac = SecretKeyFactory.getInstance(encryptedPrivateKeyInfo.getAlgName());
        Key pbeKey = secFac.generateSecret(pbeKeySpec);
        AlgorithmParameters algParams = encryptedPrivateKeyInfo.getAlgParameters();
        cipher.init(Cipher.DECRYPT_MODE, pbeKey, algParams);
        PKCS8EncodedKeySpec pkcs8KeySpec = encryptedPrivateKeyInfo.getKeySpec(cipher);
        KeyFactory keyFactory = KeyFactory.getInstance("RSA");

        return keyFactory.generatePrivate(pkcs8KeySpec);
    }

    /**
     * This method cleans up the private key string which is required to
     * decode the key material
     * 
     * @param privateKey
     * @return String
     */
    private static String extractPrivateKeyContent(String privateKey) {
        return privateKey
                .replaceAll("-----BEGIN (ENCRYPTED )?PRIVATE KEY-----|-----END (ENCRYPTED )?PRIVATE KEY-----", "")
                .replace("\\n", "").trim();
    }

    /**
     * This method processes the response from the public key API call and extracts
     * the first key listed from the response
     * 
     * 
     * @param responseEntity
     * @return String
     * @throws IOException
     * @throws JsonSyntaxException
     * @throws ParseException
     */
    private static String decodeRespose(HttpEntity responseEntity)
            throws IOException, JsonSyntaxException, ParseException {
        String extractedJwkFromResponse = null;
        if (responseEntity != null) {
            JsonElement responseAsJson = new Gson().fromJson(EntityUtils.toString(responseEntity), JsonElement.class);
            JsonObject responseObject = responseAsJson.isJsonObject() ? responseAsJson.getAsJsonObject() : null;

            if (responseObject != null) {
                JsonArray setOfkeys = responseObject.getAsJsonArray("keys");
                if (setOfkeys != null) {

                    JsonObject firstKeysAsObject = (setOfkeys != null && setOfkeys.size() > 0)
                            ? setOfkeys.get(0).getAsJsonObject()
                            : null;
                    extractedJwkFromResponse = (firstKeysAsObject != null) ? firstKeysAsObject.toString() : null;
                }
            }

        }
        return extractedJwkFromResponse;
    }
}
