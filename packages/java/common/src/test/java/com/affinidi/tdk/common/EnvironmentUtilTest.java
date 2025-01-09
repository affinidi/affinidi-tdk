package com.affinidi.tdk.common;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.MockitoAnnotations;
import org.mockito.Spy;

import static org.mockito.Mockito.doReturn;

public class EnvironmentUtilTest {

    @Spy
    EnvironmentUtil spyEnvironmentUtil;

    @BeforeEach                                         
    void setUp() {
         MockitoAnnotations.openMocks(this);
    }

    @Test
    void testGetVaultUrlForEnvironment_InLocal(){

        //Test the function call for local environment without reading the configured property
        doReturn("LOCAL").when(spyEnvironmentUtil).getConfiguredEnvironment();

        assertEquals(Environment.LOCAL_VAULT_URL, spyEnvironmentUtil.getVaultUrlForEnvironment());
    }
    @Test
    void testGetVaultUrlForEnvironment_InDev(){

        //Test the function call for local environment without reading the configured property
        doReturn("DEV").when(spyEnvironmentUtil).getConfiguredEnvironment();

        assertEquals(Environment.DEV_VAULT_URL, spyEnvironmentUtil.getVaultUrlForEnvironment());
    }
    @Test
    void testGetVaultUrlForEnvironment_InProd(){

        //Test the function call for local environment without reading the configured property
        doReturn("PROD").when(spyEnvironmentUtil).getConfiguredEnvironment();

        assertEquals(Environment.PROD_VAULT_URL, spyEnvironmentUtil.getVaultUrlForEnvironment());
    }

    @Test
    void testGetIotaUrlForEnvironment_InLocal(){

        //Test the function call for local environment without reading the configured property
        doReturn("LOCAL").when(spyEnvironmentUtil).getConfiguredEnvironment();

        assertEquals(Environment.LOCAL_IOT_URL, spyEnvironmentUtil.getIotUrlForEnvironment());
    }
    @Test
    void testGetIotaUrlForEnvironment_InDev(){
        //Test the function call for local environment without reading the configured property
        doReturn("DEV").when(spyEnvironmentUtil).getConfiguredEnvironment();

        assertEquals(Environment.DEV_IOT_URL, spyEnvironmentUtil.getIotUrlForEnvironment());
    }
    @Test
    void testGetIotaUrlForEnvironment_InProd(){

        //Test the function call for local environment without reading the configured property
        doReturn("PROD").when(spyEnvironmentUtil).getConfiguredEnvironment();

        assertEquals(Environment.PROD_IOT_URL, spyEnvironmentUtil.getIotUrlForEnvironment());
    }

    @Test
    void testGetElementAuthTokenUrlForEnvironment_InLocal(){

        //Test the function call for local environment without reading the configured property
        doReturn("LOCAL").when(spyEnvironmentUtil).getConfiguredEnvironment();

        assertEquals(Environment.LOCAL_ELEMENTS_AUTH_TOKEN_URL, spyEnvironmentUtil.getElementAuthTokenUrlForEnvironment());
    }
    @Test
    void testGetElementAuthTokenUrlForEnvironment_InDev(){

        //Test the function call for local environment without reading the configured property
        doReturn("DEV").when(spyEnvironmentUtil).getConfiguredEnvironment();

        assertEquals(Environment.DEV_ELEMENTS_AUTH_TOKEN_URL, spyEnvironmentUtil.getElementAuthTokenUrlForEnvironment());
    }
    @Test
    void testGetElementAuthTokenUrlForEnvironment_InProd(){

        //Test the function call for local environment without reading the configured property
        doReturn("PROD").when(spyEnvironmentUtil).getConfiguredEnvironment();

        assertEquals(Environment.PROD_ELEMENTS_AUTH_TOKEN_URL, spyEnvironmentUtil.getElementAuthTokenUrlForEnvironment());
    }
    @Test
    void testGetApiGatewayUrlForEnvironment_InLocal(){

        //Test the function call for local environment without reading the configured property
        doReturn("LOCAL").when(spyEnvironmentUtil).getConfiguredEnvironment();

        assertEquals(Environment.LOCAL_APIGATEWAY_URL, spyEnvironmentUtil.getApiGatewayUrlForEnvironment());
    }
    @Test
    void testGetApiGatewayUrlForEnvironment_InDev(){

        //Test the function call for local environment without reading the configured property
        doReturn("DEV").when(spyEnvironmentUtil).getConfiguredEnvironment();

        assertEquals(Environment.DEV_APIGATEWAY_URL, spyEnvironmentUtil.getApiGatewayUrlForEnvironment());
    }
    @Test
    void testGetApiGatewayUrlForEnvironment_InProd(){

        //Test the function call for local environment without reading the configured property
        doReturn("PROD").when(spyEnvironmentUtil).getConfiguredEnvironment();

        assertEquals(Environment.PROD_APIGATEWAY_URL, spyEnvironmentUtil.getApiGatewayUrlForEnvironment());
    }
}
