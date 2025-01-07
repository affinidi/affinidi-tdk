package com.affinidi.common;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;

public class VaultUtilTest {

    @Mock
    EnvironmentUtil environmentUtil; 
    
    @InjectMocks
    VaultUtil vaultUtil = new VaultUtil();

    @BeforeEach                                         
    void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void testBuildShareLink_InLocal(){
       
        Mockito.when(environmentUtil.getVaultUrlForEnvironment()).thenReturn(Environment.LOCAL_VAULT_URL);

        String testRequestId = "request1234";
        String testClientId = "clientabcde";
        String shareLink = vaultUtil.buildShareLink(testRequestId, testClientId);

        String expectedValue = Environment.LOCAL_VAULT_URL + VaultUtil.VAULT_SHARE_PATH 
                                    + "?"+VaultUtil.SHARE_REQUEST_PARAM+"="+testRequestId
                                    + "&"+VaultUtil.SHARE_CLIENT_PARAM+"="+testClientId;

        assertEquals(expectedValue, shareLink);
    }

    @Test
    void testBuildShareLink_InDev(){
       
        Mockito.when(environmentUtil.getVaultUrlForEnvironment()).thenReturn(Environment.DEV_VAULT_URL);

        String testRequestId = "request1234";
        String testClientId = "clientabcde";
        String shareLink = vaultUtil.buildShareLink(testRequestId, testClientId);

        String expectedValue = Environment.DEV_VAULT_URL + VaultUtil.VAULT_SHARE_PATH 
                                    + "?"+VaultUtil.SHARE_REQUEST_PARAM+"="+testRequestId
                                    + "&"+VaultUtil.SHARE_CLIENT_PARAM+"="+testClientId;

        assertEquals(expectedValue, shareLink);
    }

    @Test
    void testBuildShareLink_InProd(){
       
        Mockito.when(environmentUtil.getVaultUrlForEnvironment()).thenReturn(Environment.PROD_VAULT_URL);

        String testRequestId = "request1234";
        String testClientId = "clientabcde";
        String shareLink = vaultUtil.buildShareLink(testRequestId, testClientId);

        String expectedValue = Environment.PROD_VAULT_URL + VaultUtil.VAULT_SHARE_PATH 
                                    + "?"+VaultUtil.SHARE_REQUEST_PARAM+"="+testRequestId
                                    + "&"+VaultUtil.SHARE_CLIENT_PARAM+"="+testClientId;

        assertEquals(expectedValue, shareLink);
    }

    @Test
    void testBuildClaimLink_InLocal(){
       
        Mockito.when(environmentUtil.getVaultUrlForEnvironment()).thenReturn(Environment.LOCAL_VAULT_URL);

        String testCredentialOfferUri = "https://00112233-xxx-yyyy-aaaaa-abcd2345678.apse1.issuance.affinidi.io/offers/cb3817e6-4b16-4f19-a658-8eb096541bcc";
       
        String claimLink = vaultUtil.buildClaimLink(testCredentialOfferUri);

        String expectedValue = Environment.LOCAL_VAULT_URL + VaultUtil.VAULT_CLAIM_PATH 
                                    + "?"+VaultUtil.CLAIM_CREDENTIAL_URI_PARAM+"="+URLEncoder.encode(testCredentialOfferUri, StandardCharsets.UTF_8);

        assertEquals(expectedValue, claimLink);
    }


    @Test
    void testBuildClaimLink_InDev(){
       
        Mockito.when(environmentUtil.getVaultUrlForEnvironment()).thenReturn(Environment.DEV_VAULT_URL);

        String testCredentialOfferUri = "https://00112233-xxx-yyyy-aaaaa-abcd2345678.apse1.issuance.affinidi.io/offers/cb3817e6-4b16-4f19-a658-8eb096541bcc";
       
        String claimLink = vaultUtil.buildClaimLink(testCredentialOfferUri);

        String expectedValue = Environment.DEV_VAULT_URL + VaultUtil.VAULT_CLAIM_PATH 
                                    + "?"+VaultUtil.CLAIM_CREDENTIAL_URI_PARAM+"="+URLEncoder.encode(testCredentialOfferUri, StandardCharsets.UTF_8);

        assertEquals(expectedValue, claimLink);
    }


    @Test
    void testBuildClaimLink_InProd(){
       
        Mockito.when(environmentUtil.getVaultUrlForEnvironment()).thenReturn(Environment.PROD_VAULT_URL);

        String testCredentialOfferUri = "https://00112233-xxx-yyyy-aaaaa-abcd2345678.apse1.issuance.affinidi.io/offers/cb3817e6-4b16-4f19-a658-8eb096541bcc";
       
        String claimLink = vaultUtil.buildClaimLink(testCredentialOfferUri);

        String expectedValue = Environment.PROD_VAULT_URL + VaultUtil.VAULT_CLAIM_PATH 
                                    + "?"+VaultUtil.CLAIM_CREDENTIAL_URI_PARAM+"="+URLEncoder.encode(testCredentialOfferUri, StandardCharsets.UTF_8);

        assertEquals(expectedValue, claimLink);
    }


}
