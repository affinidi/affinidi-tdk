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
            String tokenId = "e7bfc2bd-7ff9-48c8-a270-87283245fd88";
            String privateKey = "-----BEGIN ENCRYPTED PRIVATE KEY-----\\n" + //
                    "MIIJrTBXBgkqhkiG9w0BBQ0wSjApBgkqhkiG9w0BBQwwHAQIaKg32P/X0z8CAggA\\n" + //
                    "MAwGCCqGSIb3DQIJBQAwHQYJYIZIAWUDBAEqBBD68izadiHvFNEbayMJ/A3uBIIJ\\n" + //
                    "UE4w5cNPRZ4+F47rq4Q7WIN/gF/87tSeonTgoOyvz9CTbejtc4+LXHCD0f1wQzw4\\n" + //
                    "Pjx1cxu1Ye4Ltza8PRjgKR1ZizrgKETcoAx0OGzkIOBXoUK83qFM6Zq5pP+Vad4I\\n" + //
                    "9Xk0mMfbRFzuFqp4yD9EazV+EytPseeL4L4+C1wfoMhbupSbtSzWME4ZsD9p2r50\\n" + //
                    "LcenD773BNolaFHjG9buTwJ+T5SWbaQs4jrGT5ZI2Gb72lkGRKePYnUlur53t5oC\\n" + //
                    "Oz0CpOJz/VLQ9xFaAdIc0HGSKZV3J2LCafWso/HlGQ/PZVEatfTXwW1d/2rkBy6o\\n" + //
                    "nZAuCx+1q6ZbhGHRkzaa/A6ND2rqvl1T95bYR1ZYBqbukuAJTWM8RgqDu567BwDq\\n" + //
                    "U6QEb+WuEIKyAb1q0Q0m6FOsK6C1zfjIbajcUpfKAJQMJysT1OhhIRInmca40tEb\\n" + //
                    "srY5lHsos10dDJhOOoJv4O//72oseUuRYFi74j7aKQpTAH5lPfZ0LSFN5LoNJZ8v\\n" + //
                    "wlP7lNZUoH3u1Zujo9kXJSznGx/0Il+xwhrqrXCluBH9Y4OdYchTPBdYitA9I/37\\n" + //
                    "44etQCo5Q0ptai0fkJHJrzdiq7hp/yZ4uclTNdYI57m1KrA1WUJOl0tjlPuDyLq6\\n" + //
                    "VwcGA92W6nm3xrJazFZtXM7veWbbKBCA21H/g9smzeD1fwt3XSln0EG5vtoK8EFc\\n" + //
                    "7SB+x3agFkU/vRiUMYiZs9SSdovgB65PyB4GTXmuJlYhVLFHxiyD72xwjzf7UySs\\n" + //
                    "5BVZo0M9gAiNG33h2NsHyHPWYVPlsFR5hqMbwhWH/9p5RhhyFzxxvZPeXsSg+Rq9\\n" + //
                    "bMVlOUEYivcvZWYzXL+8ZilTLRapgYBjxP/qApk7wNtmIHxlX7kl22LfrwmcvirS\\n" + //
                    "DSe9NpGoxshrFH78vw0BhWlJQPBAbezkSKrCH+rBmMDJIWvWr2pgONxbAUZ7LEYj\\n" + //
                    "IIpWtbsmclp1gB2Av9IcELP7BKZwAhzn9Qs5ul80VobUBQryvxuJRZkfl5YjB/iO\\n" + //
                    "WHW0iejDMOafO3myYnP3gGijwujrHREfHClvz+C42lAwXi7O8AnWf0sy8u+heCzX\\n" + //
                    "WSGQb1KeQfIGW3YfmrYsKwhQZL2tXxYPiAeOVr1DRlvRA1G/DYtryN8jE/gbXbqE\\n" + //
                    "uV7pyYIRcepZK4K6H2Sy9/aLjktSxbF2Y93hBMMCqB2hMaqC5AYz3Zi5v8y0dwsN\\n" + //
                    "++Q9qIWR2fUeIGcQbchthbCe0neKX5/KJCWrSgFCd/0Cw51FI9uSGYicIP+LWcbU\\n" + //
                    "iTcLXVakES68HUqOELnzy4k4i3m9hV7fvGEcvaVYuWKIRT7KTCt3S3ljEI7THvm/\\n" + //
                    "lDq+hBm5vdJI+lcacfzmFODtfCs3jXIl1+Iledd3to7KfAkEYqFCFmbiciL/25sF\\n" + //
                    "0peyc8xthdltoEm/+xtdIBQXAXbHM2ULsWI59udm9mWj/IoybIwI8U66EuY7p020\\n" + //
                    "/YVeEW1x1fM/fgKrVkEO3+/Yz80GUKSqfzhWqsv8u2ru/DzqEKJS+BIpXDbh56P0\\n" + //
                    "G0zztuQ8b8eqRAfNXaNpBLoPtxGtg9Xd5ShOYLn1p1owH/ErL2PVoFNqLarg9rb9\\n" + //
                    "d3ZICO07AG+DlUGCIVZ1ZXCLmw6M3SbkCxkOEakFPpJjnxUGoIMEE0M62d9XGuCe\\n" + //
                    "CrxkL1BXNnXw6YEr0P1af+92iVJT2tyyvtQwFLfs13NkuY3iv1yX2PRDvOgvxw2H\\n" + //
                    "n+qNRYaxpwqAXTm+WC/H8tZKhUvWwBl5//oALRyK1zewCRipFDlbqdvwxJTPTLDP\\n" + //
                    "9quaGMwl/TrBRXbOlZyS/pya0VCDEU1h7i2NH8ENHdxxdj94kpLVdnLkvUk23Evv\\n" + //
                    "pdiFUCnUh4YXM837/ielVT8MWnlWPRVVntNjauG7UzrSXJ/uJS1nsl6aetaOwjCi\\n" + //
                    "sc3Gf6TKRJ+crClTLwlp/a4ObjucN1BAtSJCMQtQHsUq/lB3NZRxlH9XyMapKStL\\n" + //
                    "ZzrFbfVJJtR2s70SaDTHLxRE59xqmXe0l411Jc6FB+ef2+K1LPJLMsK/ziM4IpGG\\n" + //
                    "Y5bhbR8HsaL44o00VIuvXHWEzKbch9g8ZkVTkJV03keVTAROVBmjg2MNwNWBeXRt\\n" + //
                    "NLqGGT3a58rypJkV4/36Rz8MiA52uLVL8bFnw91xIanfBSt8FZv4ZcD9YihdBnxI\\n" + //
                    "PCeg4nddyR3qL4lVVSXb7JidIMAg+rr+DYDrCSB6uPob6Nl0pooAIRboHDi0YoSR\\n" + //
                    "0kl0uq2LxZukaxoVjsou8qBWaeRw3R15tePDVC2P+pEGMgmr+/FAi4g3/0il+0Oq\\n" + //
                    "E2CBT6vyHW/tzzcsvOdG3FKlw+Sbg5jOeoFG8Qa4bvOwBO6/RPFwqJ7QRZGZdJO1\\n" + //
                    "ZW85LbR3ibz9EzjttdYsoUaojZp8Fh+ToH6qZxb047kKyDTMcZRTejzGcyx8mg85\\n" + //
                    "0BEDzqmZxzcKkic3VCbU4Z8aMNck1IwL3eb8a9+2x2ScVoSD0WoyZ2AlTnl/SWmx\\n" + //
                    "M5tTQz0hBrl9Xs8uQR/D/wuh/myhalks9/o9qPqXdF3a6HHk2n7+9jN5i8bUpiJ6\\n" + //
                    "sU7UoG1SQCzGVm2Xzy9F1ltEAKBpYGyKe6jleRHWO5UjmHJj6ZkBAg6BT530Lsnu\\n" + //
                    "6wfNL+C3pGTSMuc4OspfbhDc9IdTB5zairWNsM0eLflomeT3tpkqO6/Sn8lK5aWy\\n" + //
                    "X0YAsj0Vnd1KtxxgvZp2X9PdmHeyus6ZcbMx8D3ILICzIWpHizq5faobmoK+E1wV\\n" + //
                    "aW7ijnJ/6VkTmd19tAdCOq37w6W1uxo01l+Skkj8jQ6ODpWgrW78V8BFP6nTTQN6\\n" + //
                    "MRcoBUcaCkWE+ub27hftCmqk5H4H/nhMu7BxamElLqCdNER7myiPbj34NI8XXPNO\\n" + //
                    "C77+TqeaNoF8LltjGOME6FA06BuNxdNfT0rcKI7hWL6tzkJqu7pLjH/D690YwFGF\\n" + //
                    "RcCYkyRZzmzbwm1SAX4W3YLVJ8SMSLzJmTQEoehL3Yd6geFG409I3ACJv5YFf9qC\\n" + //
                    "uZdk56FLIlS2h73L0Khv38nhi1oooBCWCD08SE72snyy137QTNVSlOR3DSIbcEdk\\n" + //
                    "/5C44GY6HXDg4G32qF5IFHngsJdGYu6jK6C01q7oqwHdC3v/6C8cK2gphdDVGIK3\\n" + //
                    "hJxSp2ZJBLiIkrmpEChiR5nhOnNmFb0/9jDA81XDkfYf\\n" + //
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
                .replace("-----BEGIN ENCRYPTED PRIVATE KEY-----", "")
                .replace("-----END ENCRYPTED PRIVATE KEY-----", "")
                .replace("\\n", "").trim();
    }

}
