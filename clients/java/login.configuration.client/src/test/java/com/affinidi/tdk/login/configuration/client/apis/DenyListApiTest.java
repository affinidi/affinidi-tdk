/*
 * OidcVpAdapterBackend
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: info@affinidi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.affinidi.tdk.login.configuration.client.apis;

import com.affinidi.tdk.login.configuration.client.ApiException;
import com.affinidi.tdk.login.configuration.client.models.BlockedUsers;
import com.affinidi.tdk.login.configuration.client.models.BlockedUsersInput;
import com.affinidi.tdk.login.configuration.client.models.GroupNames;
import com.affinidi.tdk.login.configuration.client.models.GroupNamesInput;
import com.affinidi.tdk.login.configuration.client.models.InvalidGroupsError;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for DenyListApi
 */
@Disabled
public class DenyListApiTest {

    private final DenyListApi api = new DenyListApi();

    /**
     * Block Single or Multiple Groups
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void blockGroupsTest() throws ApiException {
        GroupNamesInput groupNamesInput = null;
        api.blockGroups(groupNamesInput);
        // TODO: test validations
    }

    /**
     * Block Single or Multiple user ids
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void blockUsersTest() throws ApiException {
        BlockedUsersInput blockedUsersInput = null;
        api.blockUsers(blockedUsersInput);
        // TODO: test validations
    }

    /**
     * Get Blocked Groups
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void listBlockedGroupsTest() throws ApiException {
        String pageToken = null;
        GroupNames response = api.listBlockedGroups(pageToken);
        // TODO: test validations
    }

    /**
     * Get List of Blocked Users
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void listBlockedUsersTest() throws ApiException {
        String pageToken = null;
        BlockedUsers response = api.listBlockedUsers(pageToken);
        // TODO: test validations
    }

    /**
     * Unblock Single or Multiple Groups
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void unblockGroupsTest() throws ApiException {
        GroupNamesInput groupNamesInput = null;
        api.unblockGroups(groupNamesInput);
        // TODO: test validations
    }

    /**
     * Unblock Single or Multiple user ids
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void unblockUsersTest() throws ApiException {
        BlockedUsersInput blockedUsersInput = null;
        api.unblockUsers(blockedUsersInput);
        // TODO: test validations
    }

}