import pytest
import json
from helpers.utils import generate_random_string
from helpers.auth import get_client_configuration
from affinidi_tdk_login_configuration_client import (
    Configuration,
    ApiClient,
    AllowListApi,
    ConfigurationApi,
    DenyListApi,
    GroupApi,
)

BLOCK_USER_ID = "test_user_123"

@pytest.fixture(scope="module")
def api_client():
    config = get_client_configuration(Configuration)
    with ApiClient(config) as client:
        yield client

@pytest.fixture(scope="module")
def configuration_api_instance(api_client):
    return ConfigurationApi(api_client)

@pytest.fixture(scope="module")
def group_api_instance(api_client):
    return GroupApi(api_client)

@pytest.fixture(scope="module")
def allow_list_api_instance(api_client):
    return AllowListApi(api_client)

@pytest.fixture(scope="module")
def deny_list_api_instance(api_client):
    return DenyListApi(api_client)

@pytest.fixture(scope="module")
def login_configuration_resource(configuration_api_instance):
    payload = {
        "name": "TestConfig",
        "redirectUris": ["http://localhost:3000/api/auth/callback/affinidi"],
    }

    response = configuration_api_instance.create_login_configurations(payload)
    data = json.loads(response.json())
    configuration_id = data["configuration_id"]

    yield {"configuration_id": configuration_id}

    configuration_api_instance.delete_login_configurations_by_id(configuration_id)

@pytest.fixture(scope="module")
def user_group_resource(group_api_instance):
    payload = {
        "name": "TestGroup",
        "group_name": generate_random_string(),
    }

    response = group_api_instance.create_group(payload)
    data = json.loads(response.json())
    group_name = data["group_name"]

    yield {"group_name": group_name}

    group_api_instance.delete_group(group_name)

# --- Login Configuration Tests ---

def test_read_login_configuration(configuration_api_instance, login_configuration_resource):
    config_id = login_configuration_resource["configuration_id"]
    response = configuration_api_instance.get_login_configurations_by_id(config_id)
    data = json.loads(response.json())

    assert data.get("configuration_id"), "Login configuration ID is missing"

def test_list_login_configurations(configuration_api_instance):
    response = configuration_api_instance.list_login_configurations()
    data = json.loads(response.json())

    assert isinstance(data.get("configurations", []), list), "Configurations should be a list"
    assert data["configurations"], "No login configurations returned"

def test_update_login_configuration(configuration_api_instance, login_configuration_resource):
    config_id = login_configuration_resource["configuration_id"]
    updated_name = "UpdatedLoginConfig"

    response = configuration_api_instance.update_login_configurations_by_id(config_id, {"name": updated_name})
    data = json.loads(response.json())

    assert data.get("name") == updated_name, "Login configuration name was not updated"

# --- Group Tests ---

def test_read_user_group(group_api_instance, user_group_resource):
    group_name = user_group_resource["group_name"]
    response = group_api_instance.get_group_by_id(group_name)
    data = json.loads(response.json())

    assert data.get("group_name") == group_name, f"Expected group name '{group_name}' not found"

def test_list_user_groups(group_api_instance):
    response = group_api_instance.list_groups()
    data = json.loads(response.json())

    groups = data.get("groups", [])
    assert isinstance(groups, list), "Groups should be a list"
    assert len(groups) > 0, "Expected at least one group"

# --- Allow List Tests ---

def test_allow_group(allow_list_api_instance, user_group_resource):
    group_name = user_group_resource["group_name"]
    response = allow_list_api_instance.allow_groups_with_http_info({"group_names": [group_name]})

    assert response.status_code == 200, "Group was not added to allow list"

def test_list_allowed_groups(allow_list_api_instance, user_group_resource):
    group_name = user_group_resource["group_name"]
    response = allow_list_api_instance.list_allowed_groups()
    data = json.loads(response.json())

    assert group_name in data.get("group_names", []), f"{group_name} is not in the allowed list"

def test_disallow_group(allow_list_api_instance, user_group_resource):
    group_name = user_group_resource["group_name"]
    response = allow_list_api_instance.disallow_groups_with_http_info({"group_names": [group_name]})

    assert response.status_code == 200, "Group was not removed from allow list"

# --- Deny List Group Tests ---

def test_block_group(deny_list_api_instance, user_group_resource):
    group_name = user_group_resource["group_name"]
    response = deny_list_api_instance.block_groups_with_http_info({"group_names": [group_name]})

    assert response.status_code == 200, "Group was not added to deny list"

def test_list_blocked_groups(deny_list_api_instance, user_group_resource):
    group_name = user_group_resource["group_name"]
    response = deny_list_api_instance.list_blocked_groups()
    data = json.loads(response.json())

    assert group_name in data.get("group_names", []), f"{group_name} is not in blocked groups list"

def test_unblock_group(deny_list_api_instance, user_group_resource):
    group_name = user_group_resource["group_name"]
    response = deny_list_api_instance.unblock_groups_with_http_info({"group_names": [group_name]})

    assert response.status_code == 200, "Group was not removed from deny list"

# --- Deny List User Tests ---

def test_block_user(deny_list_api_instance):
    response = deny_list_api_instance.block_users_with_http_info({"user_ids": [BLOCK_USER_ID]})
    assert response.status_code == 200, f"{BLOCK_USER_ID} was not blocked"

def test_list_blocked_users(deny_list_api_instance):
    response = deny_list_api_instance.list_blocked_users()
    data = json.loads(response.json())

    assert BLOCK_USER_ID in data.get("user_ids", []), f"{BLOCK_USER_ID} is not in blocked users list"

def test_unblock_user(deny_list_api_instance):
    response = deny_list_api_instance.unblock_users_with_http_info({"user_ids": [BLOCK_USER_ID]})
    assert response.status_code == 200, f"{BLOCK_USER_ID} was not unblocked"
