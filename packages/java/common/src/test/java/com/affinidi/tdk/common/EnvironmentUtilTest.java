package com.affinidi.tdk.common;

import java.util.concurrent.Callable;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;
import org.mockito.MockedStatic;
import static org.mockito.Mockito.mockStatic;
import org.opentest4j.TestAbortedException;

public class EnvironmentUtilTest {

    private void test_getUrlForEnvironment(String configuredEnvironment, Callable<String> getUrlForEnvironment,
            String expectedUrlForEnvironment) {
        try (MockedStatic mocked = mockStatic(EnvironmentUtil.class)) {
            // Test the function call for local environment without reading the configured
            // property
            mocked.when(EnvironmentUtil::getConfiguredEnvironment).thenReturn(configuredEnvironment);
            mocked.when(EnvironmentUtil::getEnvironmentDetail).thenCallRealMethod();
            mocked.when(EnvironmentUtil::getVaultUrlForEnvironment).thenCallRealMethod();
            mocked.when(EnvironmentUtil::getIotUrlForEnvironment).thenCallRealMethod();
            mocked.when(EnvironmentUtil::getElementAuthTokenUrlForEnvironment).thenCallRealMethod();
            mocked.when(EnvironmentUtil::getApiGatewayUrlForEnvironment).thenCallRealMethod();
            try {
                // assertEquals(expectedUrlForEnvironment,
                // EnvironmentUtil.getVaultUrlForEnvironment());
                assertEquals(expectedUrlForEnvironment, getUrlForEnvironment.call());
            } catch (Exception ex) {
                throw new TestAbortedException(ex.getMessage());
            }

        }
    }

    private void test_getVaultUrlForEnvironment(String configuredEnvironment, String expectedVaultUrlForEnvironment) {
        test_getUrlForEnvironment(configuredEnvironment, () -> EnvironmentUtil.getVaultUrlForEnvironment(),
                expectedVaultUrlForEnvironment);
    }

    private void test_getIotUrlForEnvironment(String configuredEnvironment, String expectedIotUrlForEnvironment) {
        test_getUrlForEnvironment(configuredEnvironment, () -> EnvironmentUtil.getIotUrlForEnvironment(),
                expectedIotUrlForEnvironment);
    }

    private void test_getElementAuthTokenUrlForEnvironment(String configuredEnvironment,
            String expectedElementAuthTokenUrlForEnvironment) {
        test_getUrlForEnvironment(configuredEnvironment, () -> EnvironmentUtil.getElementAuthTokenUrlForEnvironment(),
                expectedElementAuthTokenUrlForEnvironment);
    }

    private void test_getApiGatewayUrlForEnvironment(String configuredEnvironment,
            String expectedApiGatewayUrlForEnvironment) {
        test_getUrlForEnvironment(configuredEnvironment, () -> EnvironmentUtil.getApiGatewayUrlForEnvironment(),
                expectedApiGatewayUrlForEnvironment);
    }

    @Test
    void testGetVaultUrlForEnvironment_InLocal() {
        test_getVaultUrlForEnvironment("LOCAL", Environment.LOCAL_VAULT_URL);
    }

    @Test
    void testGetVaultUrlForEnvironment_InDev() {
        test_getVaultUrlForEnvironment("DEV", Environment.DEV_VAULT_URL);
    }

    @Test
    void testGetVaultUrlForEnvironment_InProd() {
        test_getVaultUrlForEnvironment("PROD", Environment.PROD_VAULT_URL);
    }

    @Test
    void testGetIotaUrlForEnvironment_InLocal() {
        test_getIotUrlForEnvironment("LOCAL", Environment.LOCAL_IOT_URL);
    }

    @Test
    void testGetIotaUrlForEnvironment_InDev() {
        test_getIotUrlForEnvironment("DEV", Environment.DEV_IOT_URL);
    }

    @Test
    void testGetIotaUrlForEnvironment_InProd() {
        test_getIotUrlForEnvironment("PROD", Environment.PROD_IOT_URL);
    }

    @Test
    void testGetElementAuthTokenUrlForEnvironment_InLocal() {
        test_getElementAuthTokenUrlForEnvironment("LOCAL", Environment.LOCAL_ELEMENTS_AUTH_TOKEN_URL);
    }

    @Test
    void testGetElementAuthTokenUrlForEnvironment_InDev() {
        test_getElementAuthTokenUrlForEnvironment("DEV", Environment.DEV_ELEMENTS_AUTH_TOKEN_URL);
    }

    @Test
    void testGetElementAuthTokenUrlForEnvironment_InProd() {
        test_getElementAuthTokenUrlForEnvironment("PROD", Environment.PROD_ELEMENTS_AUTH_TOKEN_URL);
    }

    @Test
    void testGetApiGatewayUrlForEnvironment_InLocal() {
        test_getApiGatewayUrlForEnvironment("LOCAL", Environment.LOCAL_APIGATEWAY_URL);
    }

    @Test
    void testGetApiGatewayUrlForEnvironment_InDev() {
        test_getApiGatewayUrlForEnvironment("DEV", Environment.DEV_APIGATEWAY_URL);
    }

    @Test
    void testGetApiGatewayUrlForEnvironment_InProd() {
        test_getApiGatewayUrlForEnvironment("PROD", Environment.PROD_APIGATEWAY_URL);
    }
}
