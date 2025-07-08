import com.affinidi.tdk.login.configuration.client.ApiClient;
import com.affinidi.tdk.login.configuration.client.Configuration;
import com.affinidi.tdk.login.configuration.client.apis.*;
import com.affinidi.tdk.login.configuration.client.auth.ApiKeyAuth;
import com.affinidi.tdk.login.configuration.client.models.*;

import com.affinidi.tdk.common.EnvironmentUtil;

import helpers.AuthUtils;
import helpers.TestUtils;
import helpers.Env;

import org.junit.jupiter.api.*;

import static org.junit.jupiter.api.Assertions.*;

/**
 * Integration tests for Login Configuration Client.
 * Covers configuration CRUD, group management,
 * allow/block list operations.
 */
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class LoginConfigurationClientIT {

    private ConfigurationApi configurationApi;
    private AllowListApi allowListApi;
    private DenyListApi denyListApi;
    private GroupApi groupApi;

    private final String groupName = TestUtils.generateRandomString();
    private final String blockUserId = "test";

    private String configurationId;

    @BeforeAll
    void setUp() {
        ApiClient client = Configuration.getDefaultApiClient();

        if (!Env.isProd()) {
            String apiGatewayUrl = EnvironmentUtil.getApiGatewayUrlForEnvironment(Env.getEnvName());
            String basePath = TestUtils.replaceBaseDomain(client.getBasePath(), apiGatewayUrl);
            client.setBasePath(basePath);
        }

        ApiKeyAuth auth = (ApiKeyAuth) client.getAuthentication("ProjectTokenAuth");
        auth.setApiKeySupplier(AuthUtils.createTokenSupplier());

        configurationApi = new ConfigurationApi(client);
        allowListApi = new AllowListApi(client);
        denyListApi = new DenyListApi(client);
        groupApi = new GroupApi(client);
    }

    @AfterAll
    void tearDown() throws Exception {
        if (configurationId != null) {
            configurationApi.deleteLoginConfigurationsById(configurationId);
        }
        if (groupName != null) {
            groupApi.deleteGroup(groupName);
        }
    }

    @Test
    @Order(1)
    @DisplayName("Create a new login configuration")
    void shouldCreateLoginConfiguration() throws Exception {
        CreateLoginConfigurationInput input = new CreateLoginConfigurationInput()
            .name("TestConfig")
            .addRedirectUrisItem("http://localhost:3000/api/auth/callback/affinidi")
            .idTokenMapping(null);

        CreateLoginConfigurationOutput response = configurationApi.createLoginConfigurations(input);
        configurationId = response.getConfigurationId();

        assertNotNull(configurationId, "Configuration ID should not be null");
    }

    @Test
    @Order(2)
    @DisplayName("Read login configuration by ID")
    void shouldReadLoginConfiguration() throws Exception {
        LoginConfigurationObject response = configurationApi.getLoginConfigurationsById(configurationId);
        assertNotNull(response, "Expected non-null login configuration object");
    }

    @Test
    @DisplayName("Update login configuration")
    void shouldUpdateLoginConfiguration() throws Exception {
        String updatedName = "UpdatedConfig";

        UpdateLoginConfigurationInput input = new UpdateLoginConfigurationInput()
            .name(updatedName)
            .idTokenMapping(null);

        LoginConfigurationObject response = configurationApi.updateLoginConfigurationsById(configurationId, input);

        assertEquals(updatedName, response.getName(), "Expected configuration name to be updated");
    }

    @Test
    @DisplayName("List all login configurations")
    void shouldListLoginConfigurations() throws Exception {
        ListLoginConfigurationOutput response = configurationApi.listLoginConfigurations(0, "");
        assertFalse(response.getConfigurations().isEmpty(), "Expected at least one configuration to be listed");
    }

    @Test
    @Order(3)
    @DisplayName("Create a group")
    void shouldCreateGroup() throws Exception {
        CreateGroupInput input = new CreateGroupInput()
            .name("TestGroup")
            .groupName(groupName);

        GroupDto result = groupApi.createGroup(input);
        assertNotNull(result.getAri(), "Group ARI should not be null");
    }

    @Test
    @DisplayName("List all groups")
    void shouldListGroups() throws Exception {
        GroupsList result = groupApi.listGroups();
        assertNotNull(result.getGroups(), "Expected non-null group list");
        assertTrue(result.getGroups().size() > 1, "Expected at least two groups in the list");
    }

    @Test
    @DisplayName("Read group by name")
    void shouldReadGroupByName() throws Exception {
        GroupDto result = groupApi.getGroupById(groupName);
        assertNotNull(result, "Expected group to be returned for groupName");
    }

    @Test
    @Order(4)
    @DisplayName("Allow group via allowList API")
    void shouldAllowGroup() throws Exception {
        GroupNamesInput input = new GroupNamesInput().addGroupNamesItem(groupName);
        assertDoesNotThrow(() -> allowListApi.allowGroups(input),
            "Adding group to allowList should not throw");
    }

    @Test
    @Order(5)
    @DisplayName("List allowed groups")
    void shouldListAllowedGroups() throws Exception {
        GroupNames result = allowListApi.listAllowedGroups(null);
        assertTrue(result.getGroupNames().contains(groupName), "Expected group to be in allow list");
    }

    @Test
    @DisplayName("Disallow group")
    void shouldDisallowGroup() throws Exception {
        GroupNamesInput input = new GroupNamesInput().addGroupNamesItem(groupName);
        assertDoesNotThrow(() -> allowListApi.disallowGroups(input),
            "Removing group from allowList should not throw");
    }

    @Test
    @Order(6)
    @DisplayName("Block group")
    void shouldBlockGroup() throws Exception {
        GroupNamesInput input = new GroupNamesInput().addGroupNamesItem(groupName);
        assertDoesNotThrow(() -> denyListApi.blockGroups(input),
            "Adding group to denyList should not throw");
    }

    @Test
    @Order(7)
    @DisplayName("List blocked groups")
    void shouldListBlockedGroups() throws Exception {
        GroupNames result = denyListApi.listBlockedGroups(null);
        assertTrue(result.getGroupNames().contains(groupName), "Expected group to be in block list");
    }

    @Test
    @DisplayName("Unblock group")
    void shouldUnblockGroup() throws Exception {
        GroupNamesInput input = new GroupNamesInput().addGroupNamesItem(groupName);
        assertDoesNotThrow(() -> denyListApi.unblockGroups(input),
            "Removing group from denyList should not throw");
    }

    @Test
    @Order(8)
    @DisplayName("Block user")
    void shouldBlockUser() throws Exception {
        BlockedUsersInput input = new BlockedUsersInput().addUserIdsItem(blockUserId);
        assertDoesNotThrow(() -> denyListApi.blockUsers(input),
            "Adding user to denyList should not throw");
    }

    @Test
    @Order(9)
    @DisplayName("List blocked users")
    void shouldListBlockedUsers() throws Exception {
        BlockedUsers result = denyListApi.listBlockedUsers(null);
        assertTrue(result.getUserIds().contains(blockUserId), "Expected user to be in block list");
    }

    @Test
    @DisplayName("Unblock user")
    void shouldUnblockUser() throws Exception {
        BlockedUsersInput input = new BlockedUsersInput().addUserIdsItem(blockUserId);
        assertDoesNotThrow(() -> denyListApi.unblockUsers(input),
            "Removing user from denyList should not throw");
    }
}
