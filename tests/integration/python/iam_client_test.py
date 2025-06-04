import pytest
import json
import uuid

from helpers.env import token_id
from helpers.auth import get_client_configuration
from affinidi_tdk_iam_client import Configuration, ApiClient, PoliciesApi, ProjectsApi

# Constants
PRINCIPAL_ID = str(uuid.uuid4())
PRINCIPAL_TYPE = "token"

@pytest.fixture(scope="module")
def api_client():
    config = get_client_configuration(Configuration)
    with ApiClient(config) as client:
        yield client

@pytest.fixture(scope="module")
def policies_api_instance(api_client):
    return PoliciesApi(api_client)

@pytest.fixture(scope="module")
def projects_api_instance(api_client):
    return ProjectsApi(api_client)

def test_get_iam_policies(policies_api_instance):
    response = policies_api_instance.get_policies(token_id, PRINCIPAL_TYPE)
    data = json.loads(response.json())

    assert isinstance(data, dict), "Expected response to be a dictionary"
    assert "policies" in data or data != {}, "Expected 'policies' key or non-empty result"

def test_add_principal_to_project(projects_api_instance):
    payload = {
        "principal_id": PRINCIPAL_ID,
        "principal_type": PRINCIPAL_TYPE,
    }

    response = projects_api_instance.add_principal_to_project_with_http_info(payload)
    assert response.status_code == 204, f"Expected 204, got {response.status_code} — failed to add {PRINCIPAL_ID}"

def test_list_principals_for_project(projects_api_instance):
    response = projects_api_instance.list_principals_of_project()
    data = json.loads(response.json())

    records = data.get("records", [])
    assert isinstance(records, list), "Expected 'records' to be a list"

def test_delete_principal_from_project(projects_api_instance):
    response = projects_api_instance.delete_principal_from_project_with_http_info(PRINCIPAL_ID, PRINCIPAL_TYPE)
    assert response.status_code == 204, f"Expected 204, got {response.status_code} — failed to remove {PRINCIPAL_ID}"
