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

    public static void main(String arg[]) {
        try {
            String tokenId = "fbb1b5be-112d-4982-a9b1-6a847ca52a7a";
            String privateKey = "-----BEGIN ENCRYPTED PRIVATE KEY-----\\n" + //
                    "MIIJrTBXBgkqhkiG9w0BBQ0wSjApBgkqhkiG9w0BBQwwHAQI/n4+R/GxVUQCAggA\\n" + //
                    "MAwGCCqGSIb3DQIJBQAwHQYJYIZIAWUDBAEqBBB4oVkw0wWGV643ljOhA2soBIIJ\\n" + //
                    "UH6NGAx8RTM6MG7FzXPOVZ8u8cHaLS7nJa+rEgJhEsfPYQXwFw28KwjeivmvGIQD\\n" + //
                    "x3AUKnxD3SJDj23ddpaPJbg2xYgFnE4/5nak5zyhAmeATM5dn9ZNUTh5ucr7q8Yt\\n" + //
                    "nbMAQvBw4nCclVOf9OTP51UGlOTxOBAx8baXHsRQYZaBIOpK9Q7oc8sY1xMPIjjr\\n" + //
                    "7THgRAgkfZ+80jMjefuvDyF2/BN6Vd777gCG+NjETUAdR4fDYdQB2zjRM6SYUs1k\\n" + //
                    "sS1LrwURQGSMrXf831ScaQPO4qEccLoYgIiDfv90byFqZWu9oB3D5xNMQCw7rKVS\\n" + //
                    "gsDi9Z6p9QO4xSDiv1+mUnX8gknDTRFbqXCJaZQbq6VBoVJ6Nfsd5H78X97se4QK\\n" + //
                    "kqT9+LxHn4yaoc6JQNzrO6C8ExqZwTFoHtUUTlOBMn64YLEpNsyBLEMm1/TVl5lD\\n" + //
                    "sHeAkrwfaaq+pXZr97b3f8pCabb94cmu4+w7rlCvoP6DQchrAWUu8HKjuVO5t87q\\n" + //
                    "aBKgvhtXH4CAll6EEgBalEeSiNjsloxVK3ECo1/p9YlHAxXoAXfJ7PO4tFfz/Y/U\\n" + //
                    "UlFdNlzhrWVrQarERSeoV6tOWj30CJeGhcGvRuMld5iRSa+MQRd18ROC7Pq862B9\\n" + //
                    "UL21rDs/dj7k6lNn8K5UqUfYM1vAC6WvzCprpaGc2eDMvNNSIy5mKKMzwfmiaoyT\\n" + //
                    "ZH95xJhfU1lf6MrYqiIpa+xCdrlBmouM3ZWgQ44DeAcZdzdZcNx/cRUfX5htPWxn\\n" + //
                    "qiePI4Jmd0u0wP414FtP/Xd/WeO0bgbBAOar1YENq4w5nu3PmmtTmO89ImC/g1xo\\n" + //
                    "h/66hjy0O3V2h8nad3JeFw/zCEs/eQNLuc85AxdfsNlUCxWZo1H2b8VAlqR3nQ0x\\n" + //
                    "r88TClHyCf07KVmqXgTa0LhNEh/7WBprtqiq4BW1pafLYNywdZOlpR+Zn+b17BLn\\n" + //
                    "aRUENZuDQB0qdD3Bg5xdVP2z7GJ3EJacqZDjiwGoqkxC3t4WZZN+m5bfsea9ifiv\\n" + //
                    "1Z6GEgYwx9xtd9ot0BNhbinmrjI6tLuiFpTaGN3HDNxvgf97dXIvw7DXB3OprRr1\\n" + //
                    "v3bk0laWp6Dp8NYGwNHVIn+7OmfgBp/K41AUR+IHMOE7y66JQkmps6yFHgVf16O1\\n" + //
                    "gSd+SFTM9LChXt87LeYRwbAn0YpB9hi+MCAmBNu1VxEMAQvu8B+bOJbRckLQKJDF\\n" + //
                    "NkGg83N0vCCn4xbGJf/aZmmuY8P8yvtH8k0aLkm5ns6S3OnX6Yqw+UcN5X7JcNN9\\n" + //
                    "UPaDRyxShCUY5t9LOKge+5rwrxnzIcxAKdYdAeBFm4RRQeD9R71bSdp7owKg93g+\\n" + //
                    "Z47VgeAzQf4fIh/6Bpc4yg6ehO/wLiOVqqQuTHt1LJOiQ/GpUeqbDqyhiEH1PK00\\n" + //
                    "ZIxZfzxAjcf1V2VcLD8tzWZR11ZHxK4+lnugK/KmW9BLEFHZZWed4dMNp4mF+LaE\\n" + //
                    "a4+RKYeV7arE20HlpTeT2P/cLk18dn5f2+FEofyUS5gCsNxm7aN3apSFBeEnFgQq\\n" + //
                    "1BbLNDmMtFs7PTsfCCmttTs76lEPn4iODTtR6M4AZJDUIgREZXXnxHaRzbFuS8hu\\n" + //
                    "HWLzJDVBlC6Oq1Rp0JB7f8yv/YZGNBWHsfK1kdyb2DHy/2VE8mPh/sEJLBe9DHWz\\n" + //
                    "5X9Ow4lfl+g3gv/XnM3Ix1xsGyKRLbraGpYVh5CFPrzSFqTj46MVHBtrebMGetZF\\n" + //
                    "dEDbJr2LtQvCyLqFjXXIt/Dq7VYjUPOxy08XUJeSrE3SrWSVVSACrGS+f6AsvSgo\\n" + //
                    "skCPIitFXmzn/WuV3aPq7FwBN6FIZjsTs01KeL/6lRcTWZpuw1T1H2jYbFFIyIsm\\n" + //
                    "3x3kdDtmo8wiikdOyjTu5yg6T+5lT6OstCtualAH0/QHcfKZNz9XD8IABIf5ZTGU\\n" + //
                    "0vLjZXugEScTNhQ+5XPDfWwhEH5BcDcMv+Z2vqDo3u4LknPetsYKRjEnSR3MmI7M\\n" + //
                    "9DW4OZyq/7u/2HC43Ra3Uwanu33EbLViEFZ9MWlWt2LZ0Dx4VrR93JBMyy+9OuUo\\n" + //
                    "fXJbdNb19ruWtgd3AJoRpX6YNTSU+kZUVlWDiSTZ9Gsuha5jgLHqBQV+FtyDo0hg\\n" + //
                    "0RsIQbSmtT4aNwTyheD9EMoA+oPtv5kdcLisJEcIkIP9H+UgXLssmEv10cYqEknT\\n" + //
                    "YHPsEj2Bb5lqIiUlDzJj9PX7qFy5W0e0pyer8Iq+eBouBv5ij/KDq0dBXFcZBr43\\n" + //
                    "1NPz+N+EuLcZHZQd7q7XoxCyLfgvNaj8AvDQqvo30e6WrPhkz4Rz0ID7k/h0/PJD\\n" + //
                    "Jcqq5/elBQmxSYZ74KcU0ZLQIfsovx+lXkSeAW2L2L7/UVkzYZhTpPSQvOoNQfrn\\n" + //
                    "VyPNee+7In0ZfkHaJZVBAueIek5k4M+HTDzbutht4tdFZ+H6Lw/yjBgPF4W038vn\\n" + //
                    "UfNyBGHbsExAydwBWqxt0T8Xh36ccftt9OdaS2vku5FkU8qqqIM1oGzcED3uHbaf\\n" + //
                    "9arEsfQRKysdX0Zf4KQynLrzS3MB7LxbSU9WEBsbGxV7AfiQ+JudSj7SASlSMN5j\\n" + //
                    "sMe2FchONWQvZ0+aSOQHJk4qOv4jht1ABHCsNokjVMGFcbtz3aZyoyv8g5yRt7Nu\\n" + //
                    "BtbT3+DTKpzYHG7tqHD1fbTgK/SWlwTXKM4e4EY4NMQYAG7dnd9NyU8EWk73r/cj\\n" + //
                    "YWMqf/U2/xBS+rO5o8tiA8J4Og2fw20QMV60eI0CAWcYibP/AMBXnUdmBDZ3fX7k\\n" + //
                    "RpDFtq03olvCJb0100DL9DlVIIKOI0Enn6sB0VfNtPHH61fxeU0nr5B6LgAVWCd6\\n" + //
                    "EFyXloHeumZc//MWmpo/zJxxtfbXSgxFoTUv/V11ZB/dwYTzMmqIdB+H8A/nuQv4\\n" + //
                    "xFn4VqFlKxdIt+m/W1/+kxcmC808HBko02wK8fUR4lQI4jXiyQNjONpfP59nNYI2\\n" + //
                    "ZWmJjuJP1rdEHB8VjK0SaFHOXF/S4U+Tq4LqoWqihv0/RyiqDTyvH+s8rMPRONpg\\n" + //
                    "ca8N3kJTkG9VOgsS2RO2pEimUN+aXYgwALJXW32hc3cQeCzWcRxpBhSDrZ0JVk6X\\n" + //
                    "b3Rcqm9irzIt9sX9bJ8+HDjyxm78UWpL0hPdt7mF5gp/d/hpg0rZNNhXkIOcWtdP\\n" + //
                    "gJlqNR4HjPQ9mfIrm2ivySyLZSSMcijn0aFIzclGLiaK\\n" + //
                    "-----END ENCRYPTED PRIVATE KEY-----\\n" + //
                    "";
            String audience = "https://apse1.auth.developer.affinidi.io/auth/oauth2/token";
            // String passphrase = "";
            String passphrase = "pass-phrase";
            String keyId = "";
            String output = signPayload(tokenId, audience, privateKey, passphrase, keyId);
            System.out.println("signPayload :::  " + output);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public static String signPayload(String tokenId, String audience, String privateKeyString, String passphrase,
            String keyId) throws Exception {

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
            String keyId, String projectId, String iotaConfigId, String iotaSessionId) throws Exception {
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

    public static PublicKey fetchPublicKey(String apiGatewayUrl) {
        // TODO Implement fetchPublicKey to call the apiGateway
        // and extract public key from the received jwk

        return null;
    }

    public static boolean validProjectTokenPresent(String token, String apiGatewayUrl) {
        PublicKey publicKey = fetchPublicKey(apiGatewayUrl);
        try {
            Jwts.parser().verifyWith(publicKey).build().parse(token);
        } catch (ExpiredJwtException ejException) {
            return true;
        } catch (MalformedJwtException mjException) {
            return true;
        } catch (Exception eException) {
            return true;
        }
        return false;
    }

    private static PrivateKey derivePrivateKey(String privateKeyString, String passphrase) throws Exception {

        PrivateKey privateKey = null;
        try {
            if (passphrase.isEmpty()) {
                privateKey = getPrivateKeyFromString(privateKeyString);
            } else {
                privateKey = getEncryptedPrivateKeyFromString(privateKeyString, passphrase);
            }
        } catch (Exception exception) {
            logger.severe("extractPrivateKey : Issue in retrieving private key from the string passed");
            throw new Exception(
                    "Could not derive private key out of the configurations. Exception : " + exception.toString());
        }

        return privateKey;
    }

    private static String generateJwt(PrivateKey privateKey, Map<String, Object> claims) {
        return Jwts.builder()
                .claims(claims)
                .signWith(privateKey, Jwts.SIG.RS256)
                .compact();
    }

    private static PrivateKey getPrivateKeyFromString(String privateKeyPEM) throws Exception {
        String privateKeyContent = extractPrivateKeyContent(privateKeyPEM);
        byte[] encoded = Base64.getDecoder().decode(privateKeyContent);
        KeyFactory keyFactory = KeyFactory.getInstance("RSA");
        PKCS8EncodedKeySpec keySpec = new PKCS8EncodedKeySpec(encoded);
        return keyFactory.generatePrivate(keySpec);
    }

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

    private static String extractPrivateKeyContent(String privateKey) {
        return privateKey
                .replaceAll("-----BEGIN (ENCRYPTED )?PRIVATE KEY-----|-----END (ENCRYPTED )?PRIVATE KEY-----", "")
                .replace("\\n", "").trim();
    }

}
