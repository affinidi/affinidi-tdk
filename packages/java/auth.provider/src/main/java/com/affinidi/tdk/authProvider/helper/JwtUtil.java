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
            String tokenId = "228afc97-ce10-41db-af48-476fbf1cac23";
            String privateKey = "-----BEGIN PRIVATE KEY-----\\n" + //
                    "MIIJQwIBADANBgkqhkiG9w0BAQEFAASCCS0wggkpAgEAAoICAQCvQ5WHhgFV4Swp\\n" + //
                    "qVOEi/tNQtjcKqk44KIoVx+pTMR4DhwRUcHNhFER8HDIJCUT7/5RZAJdRWSnyWJR\\n" + //
                    "8D7xXJoaicji0iQaUTGppSh85MSW4GJ8aR7sZaRb8+iLq5DmfG4EGaAU3LmaXBpN\\n" + //
                    "1TBQ7YXGckJXTeJbTO2K7l9QXFTx9tICqMb/lsi1hxKQ9WmdzbuHrO9qotgfQVAA\\n" + //
                    "E7FI326UOg5zgrTIyGF6HzQZXJV99wtxZcWPCsSHcHR2lE+5IXqHldzmijnMX2Nr\\n" + //
                    "M/YFaNQwES6iKXff51MwtXvGdtHcwS3tSNmHswSEFqSYVbtsxBb3Xh73w5362w+9\\n" + //
                    "HhXRASSs0dQDDgt1l4LqdtEF/24nCItdQjc50TW49rFs9/h1yTmY+LY8NZLy0JzX\\n" + //
                    "UFJzxYzWXrft7NKjLcY723RX2XJ07rFdAbmfKG+TV0bmDR8Kq8m/isuaDv3h6UXi\\n" + //
                    "znrc9Rkzojro9dFzxWgWbGx4zfIEQJz68PrrtRfigdjVqlivvmQli71KZ2KfcdRf\\n" + //
                    "2a3cu38zRUVkR52yUw56q8q36FFPLTKD/0G/w7B0huU74qvBegBMkAJbwWUkNuER\\n" + //
                    "XFmXJDfVWyX05DITV/8w7+jnbxeiLlcsxI1elylbub/6UbGdo3f8S2107d0VueQv\\n" + //
                    "3q1ukZH4JbNFljYpgGOzorb+dQeZqQIDAQABAoICAAECq5IwSGywKNAwAjkW54LU\\n" + //
                    "BP+2nUAkh2V3zx5rlgxiecXzHzdp8QpgmlMvu35TGWJrEwUU+StrIqPPS0Wan5F8\\n" + //
                    "mYm5OsJjanJhxIsnydGxhyUpeVH/6gPVCFJZ0bLfz8XlR0IniEhmtIjIrF0jFBeH\\n" + //
                    "TBudvtWA6t5XWSRToUe91mBz4aXSlDimXTSJvatOZtY1kzHIW4+ekZwBK7n8U8e1\\n" + //
                    "/U8BghJQRBjvT3O/+rqoWcq0aABW8w1xgrJg+4QD4zrJ4eVQXFyccNcgNxBj636V\\n" + //
                    "csaLj6iHow1Pq+AtNNuIH5V+ddvtlnPpKizDUxp27PJN0Bw55qduFjf5vELMC2Po\\n" + //
                    "kDhv/NWZNi4XQ4SXl5LwleYgkNQqy0bbN881OD37WZgcEqo9liwRaulnl2E0j+tG\\n" + //
                    "wnUU0hPwt+jR/y+5C/WuKb6afB5/OGDo72AfJzcQENm1yjMZBTx2i3e24miq3k9U\\n" + //
                    "15nqXMcYxbABC3+3iZvik/vCH/oqwxPCXjrAUHP6bDYCRbwUWh20E71rhMggu5Kh\\n" + //
                    "8p6pi3y84cVEOa5sBxZ8T2VhlbxNh0u7XiWFIiB+jg/wvu9+W133GCClOnyfXU34\\n" + //
                    "kzeGIWsDBhKrpKB3CI0nVcxmssC256c2P4K7Y8vqMBWrhAxLX44HHRjx3ojTjWo1\\n" + //
                    "u9idEyb9sEw8IM3kbWgJAoIBAQDf9dDN7FM0+TSWfIP+CuujFTYX7wwiFzM2ZSWX\\n" + //
                    "1gCQviTernv9KlTN/z3fNkfNjPpUpb6qxs5Obr70EC8q1MzBHOO/62MWA/ojLNjQ\\n" + //
                    "zxaaMWqNwS4bOIdZpa9ykV+LNud6Uzr0CqZLJU1bC9ZV82fuU3CXXQ6GoVYmilrd\\n" + //
                    "YIuyV7dDpDUyUiPX2I+6IUELUl5SdcKjv/8B9Gg1aFvJXLrCX1RX5D99SPAbjreA\\n" + //
                    "+ysaOVgomKBmg/Qp+ntnEupOai/9Zt9uRXxxRNgSfvuZ1eo32/5ibSMV4iayilXa\\n" + //
                    "fTIrfeYis/BoXF8hqE3Qlws2wuYL7/C1otWe05ErdXOJnk09AoIBAQDIVlj0nePo\\n" + //
                    "DUnYdu896mGR1lVgEFlNejpvGxgKWIZvibWY/0uC/34ay5EyPoaS2QKJ2y9ojvxr\\n" + //
                    "zwx+l7rC7nhT6Y0W2zu6pjsmlVOuXSHWtQ3APEwvKzkO02fbNR09aDQc4k+Dgkj7\\n" + //
                    "tKbri7UTnBR1m9xCiIyd+uGm3FhUOjq3VwHio73bm8tO7VxQMitRhXS5DGxXUJQ8\\n" + //
                    "/t6iAilGsrxZSfdRPNQ5k7hd3o3nSvtRgqN0Qe7gVoYgCPpyFMAiE6hiP8AxaxTa\\n" + //
                    "BeAAjsY7x/jbwCGDG8ZLnaDTOfJzdXvaco98JCJUmH6VNok0uMEF87TWTx9nkOlj\\n" + //
                    "V/MzXKF14VzdAoIBAQCreGhbEWKPf3G8+i6Q1cmd/kKBRpvyifLC5eRHgSjDqWFP\\n" + //
                    "QSZbKgruAUtc2BFXlmWfY5s846PXN0FqWe3TDESMYlMZgN5HX9onDlIeZT+35Lfh\\n" + //
                    "OpPTcY9nmsxemmEdlHbcGFddu72gcTntyH1dJ1Rei3H74dqaR3JPZcS2FBJBBJmi\\n" + //
                    "51l3Yp5gx0UbzBQh1/mxhsn0V66lz3vt0C3eWOoAob5Q4MefY7W6U6W50hQpKtiN\\n" + //
                    "lHXSp5rMfSP4Qeo1CWYezKGqqvbhPkV0u9Zk7Pw7smrs7wRa3+Ci9/lNpGdCF02Z\\n" + //
                    "Kk2ZiYeonFSfrNWAIu7BGv8gAkEuLmvKa01/gz09AoIBAQCJiL4JMVwFMxo/QWd9\\n" + //
                    "Wishs8No79BfIEp9fFxEvgGNET1ai+mLRVuNibNkiwhYSCM2AQPLBF7GpJ4vSnss\\n" + //
                    "2ApDkVMLHfcjbHuvQVTxn35bqHCISN0EhOfnBbuHAi/QuHkOW0+7OPZh1uPBUWg+\\n" + //
                    "zig9lYLhKl1fF51SsHLzYAZvV4wzy7XLzmkFBm8Zn1ed38ECSUUXrHoYZeDx2An+\\n" + //
                    "PzaPFfh0DQ6leIRZ7S/+WbuvecA9UAZufPgXhhJpv1UoD9bJnHqVcq4d/2qI93ug\\n" + //
                    "DukJ9B0NpUO9JboDSQTpvv4IOh3HXAc1jHtadNY9G5loPKcpeahVsWaIjRipai5u\\n" + //
                    "fwkBAoIBADk2XzcQc79OKlalRIaIa1OuuyP9FLx1M8rhNE5ez7w/yF9i8wvFaOb4\\n" + //
                    "bjDKUn9BRcyQB3n6hbx99o3wKawdS7ZfplI1U3KJ3yq0EGsF7c8OKNgnWp68QFp7\\n" + //
                    "LT3RAeZV9XTkEfQcwZOy4tWxlu2pgBZzc+ZKmuH8P9tP6fJf/7WdXcweRu/VeQHt\\n" + //
                    "9kNwX1n9W9Ga5mGP6fL2efnZgN6VwtSoTeH5rKsNGdC/D9N2baWU2BxoXkzL27aZ\\n" + //
                    "f22QXdUj5bVoL6uPjtNHLuBcwibRFiIkj09umKG89xrOrR/y85ONv87Vk/vKbs3g\\n" + //
                    "2SXF2Id7dMeTOTULKZnKC+AH1OGzwN0=\\n" + //
                    "-----END PRIVATE KEY-----\\n";
            String audience = "https://apse1.auth.developer.affinidi.io/auth/oauth2/token";
            String passphrase = "";
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
        String privateKeyContent = privateKeyPEM
                .replace("-----BEGIN PRIVATE KEY-----", "")
                .replace("-----END PRIVATE KEY-----", "")
                .replace("\\n", "").trim();

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
