import helpers.AuthUtils;
import helpers.Env;
import helpers.TestUtils;

import com.affinidi.tdk.iam.client.ApiClient;
import com.affinidi.tdk.iam.client.Configuration;
import com.affinidi.tdk.iam.client.auth.ApiKeyAuth;
import com.affinidi.tdk.iam.client.apis.PoliciesApi;
import com.affinidi.tdk.iam.client.apis.ProjectsApi;
import com.affinidi.tdk.iam.client.models.AddUserToProjectInput;
import com.affinidi.tdk.iam.client.models.PolicyDto;
import com.affinidi.tdk.iam.client.models.UserList;

import com.affinidi.tdk.common.EnvironmentUtil;

import org.junit.jupiter.api.*;

import java.util.UUID;

import static org.junit.jupiter.api.Assertions.*;

/**
 * Integration tests for the IAM client.
 * Covers validating project-policy interactions and principal management.
 */
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class IamClientIT {

    private String tokenId;
    private String principalId;
    private final String principalType = "token";

    private PoliciesApi policiesApi;
    private ProjectsApi projectsApi;

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

        tokenId = Env.get("TOKEN_ID");
        principalId = UUID.randomUUID().toString();

        policiesApi = new PoliciesApi(client);
        projectsApi = new ProjectsApi(client);
    }

    @Test
    void testGetPolicyByToken() throws Exception {
        PolicyDto policy = policiesApi.getPolicies(tokenId, principalType);
        assertNotNull(policy, "Expected non-null policy for token");
    }

    @Test
    @Order(1)
    void testAddPrincipalToProject() throws Exception {
        AddUserToProjectInput input = new AddUserToProjectInput()
            .principalId(principalId)
            .principalType(principalType);

        assertDoesNotThrow(() -> projectsApi.addPrincipalToProject(input), "Adding principal should not throw");
    }

    @Test
    @Order(2)
    void testListPrincipalsForProject() throws Exception {
        UserList result = projectsApi.listPrincipalsOfProject(null, "");

        assertNotNull(result, "Expected non-null principal list");
        assertTrue(result.getRecords().size() > 1, "Expected to find the added principal in project");
    }

    @Test
    @Order(3)
    void testDeletePrincipalFromProject() throws Exception {
        assertDoesNotThrow(() -> projectsApi.deletePrincipalFromProject(principalId, principalType),
            "Deleting principal should not throw");
    }
}
