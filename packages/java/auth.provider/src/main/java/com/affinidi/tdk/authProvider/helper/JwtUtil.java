package com.affinidi.tdk.authProvider.helper;

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
import java.util.logging.Logger;
import javax.crypto.Cipher;
import javax.crypto.EncryptedPrivateKeyInfo;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.MalformedJwtException;


public class JwtUtil {
    private static Logger logger = Logger.getLogger(JwtUtil.class.getName());

    public static String signPayload(String tokenId, String audience, String privateKeyString, String passphrase, String keyId) throws Exception{

        long issueTimeInSeconds = System.currentTimeMillis() / 1000;

        Map<String, Object> claims = new HashMap<>();
        claims.put("iss", tokenId);
        claims.put("sub", tokenId);
        claims.put("aud", audience);
        claims.put("jti", UUID.randomUUID().toString());
        claims.put("exp", issueTimeInSeconds + (5 * 60));
        claims.put("iat", issueTimeInSeconds);

        return generateJwt(derivePrivateKey(privateKeyString, passphrase), claims);
    }

    public static String signIotaPayload(String tokenId, String audience, String privateKeyString, String passphrase, 
                                    String keyId, String projectId, String iotaConfigId, String iotaSessionId) throws Exception{
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
        
        return generateJwt(derivePrivateKey(privateKeyString, passphrase), claims);
    }

    public static PublicKey fetchPublicKey(String apiGatewayUrl){
        // TODO Implement fetchPublicKey to call the apiGateway 
        // and extract public key from the received jwk

        return null;
    }

    public static boolean validProjectTokenPresent(String token, String apiGatewayUrl){
        PublicKey publicKey = fetchPublicKey(apiGatewayUrl);
        try{
            Jwts.parser().verifyWith(publicKey).build().parse(token);
        }catch(ExpiredJwtException ejException){
            return true;
        }catch(MalformedJwtException mjException){
            return true;
        }catch(Exception eException){
            return true;
        }
        return false;
    }

    private static PrivateKey derivePrivateKey(String privateKeyString, String passphrase) throws Exception{ 

        PrivateKey privateKey = null;
        try{
            if (!passphrase.isEmpty()) {
                privateKey = getPrivateKeyFromString(privateKeyString);
            } else {
                privateKey = getEncryptedPrivateKeyFromString(privateKeyString, passphrase);
            }
        }catch(Exception exception){
            logger.severe("extractPrivateKey : Issue in retrieving private key from the string passed");
            throw new Exception("Could not derive private key out of the configurations. Exception : "+exception.toString());
        }
        
        return privateKey;
    }

    private static String generateJwt(PrivateKey privateKey, Map<String, Object> claims){
        return Jwts.builder()
                .claims(claims)
                .signWith(privateKey, Jwts.SIG.RS256)
                .compact();
    }

    private static PrivateKey getPrivateKeyFromString(String privateKeyPEM) throws Exception {
        String privateKeyContent = privateKeyPEM
                .replace("-----BEGIN PRIVATE KEY-----", "")
                .replace("-----END PRIVATE KEY-----", "")
                .replaceAll("\\s", "");

        byte[] encoded = Base64.getDecoder().decode(privateKeyContent);
        KeyFactory keyFactory = KeyFactory.getInstance("RSA");
        PKCS8EncodedKeySpec keySpec = new PKCS8EncodedKeySpec(encoded);
        return keyFactory.generatePrivate(keySpec);
    }

    private static PrivateKey getEncryptedPrivateKeyFromString(String encryptedPrivateKeyPEM, String password)
            throws Exception {
        String privateKeyContent = encryptedPrivateKeyPEM
                .replace("-----BEGIN ENCRYPTED PRIVATE KEY-----", "")
                .replace("-----END ENCRYPTED PRIVATE KEY-----", "");

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



}
