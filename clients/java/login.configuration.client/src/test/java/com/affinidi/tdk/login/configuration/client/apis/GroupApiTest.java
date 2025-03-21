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
import com.affinidi.tdk.login.configuration.client.models.ActionForbiddenError;
import com.affinidi.tdk.login.configuration.client.models.AddUserToGroupInput;
import com.affinidi.tdk.login.configuration.client.models.CreateGroupInput;
import com.affinidi.tdk.login.configuration.client.models.GroupDto;
import com.affinidi.tdk.login.configuration.client.models.GroupUserMappingDto;
import com.affinidi.tdk.login.configuration.client.models.GroupUserMappingsList;
import com.affinidi.tdk.login.configuration.client.models.GroupsList;
import com.affinidi.tdk.login.configuration.client.models.GroupsPerUserLimitExceededError;
import com.affinidi.tdk.login.configuration.client.models.InvalidParameterError;
import com.affinidi.tdk.login.configuration.client.models.NotFoundError;
import com.affinidi.tdk.login.configuration.client.models.RemoveUserFromGroupInput;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import java.time.LocalDate;
import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for GroupApi
 */
@Disabled
public class GroupApiTest {

    private final GroupApi api = new GroupApi();

    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void addUserToGroupTest() throws ApiException {
        String groupName = null;
        AddUserToGroupInput addUserToGroupInput = null;
        GroupUserMappingDto response = api.addUserToGroup(groupName, addUserToGroupInput);

        // TODO: test validations
    }
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void createGroupTest() throws ApiException {
        CreateGroupInput createGroupInput = null;
        GroupDto response = api.createGroup(createGroupInput);

        // TODO: test validations
    }
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void deleteGroupTest() throws ApiException {
        String groupName = null;
        api.deleteGroup(groupName);

        // TODO: test validations
    }
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getGroupByIdTest() throws ApiException {
        String groupName = null;
        GroupDto response = api.getGroupById(groupName);

        // TODO: test validations
    }
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void listGroupUserMappingsTest() throws ApiException {
        String groupName = null;
        Integer limit = null;
        String exclusiveStartKey = null;
        String sortOrder = null;
        GroupUserMappingsList response = api.listGroupUserMappings(groupName, limit, exclusiveStartKey, sortOrder);

        // TODO: test validations
    }
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void listGroupsTest() throws ApiException {
        GroupsList response = api.listGroups();

        // TODO: test validations
    }
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void removeUserFromGroupTest() throws ApiException {
        String groupName = null;
        RemoveUserFromGroupInput removeUserFromGroupInput = null;
        api.removeUserFromGroup(groupName, removeUserFromGroupInput);

        // TODO: test validations
    }
}
