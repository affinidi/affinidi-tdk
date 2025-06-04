import pytest
import json
import uuid
from jose import jwt

from helpers.env import (
    iota_configuration,
    iota_presentation_definition,
    iota_presentation_submission,
    verifiable_presentation
)
from helpers.auth import get_client_configuration
from affinidi_tdk_iota_client import Configuration, ApiClient, ConfigurationsApi, PexQueryApi, CallbackApi, IotaApi


@pytest.fixture(scope="module")
def api_client():
    config = get_client_configuration(Configuration)
    with ApiClient(config) as client:
        yield client


@pytest.fixture(scope="module")
def configurations_api_instance(api_client):
    return ConfigurationsApi(api_client)


@pytest.fixture(scope="module")
def pex_query_api_instance(api_client):
    return PexQueryApi(api_client)


@pytest.fixture(scope="module")
def iota_api_instance(api_client):
    return IotaApi(api_client)


@pytest.fixture(scope="module")
def callback_api_instance():
    config = Configuration()
    with ApiClient(config) as client:
        yield CallbackApi(client)


@pytest.fixture(scope="module")
def iota_configuration_resource(configurations_api_instance, wallet_resource):
    config = dict(iota_configuration)
    config["walletAri"] = wallet_resource["wallet_ari"]

    response = configurations_api_instance.create_iota_configuration(config)
    data = json.loads(response.json())

    configuration_id = data.get("configuration_id")
    assert configuration_id, "Failed to create IOTA configuration"

    yield {
        "configuration_id": configuration_id,
        "iota_redirect_uri": (data.get("redirect_uris") or [None])[0],
    }

    configurations_api_instance.delete_iota_configuration_by_id(configuration_id)


@pytest.fixture(scope="module")
def pex_query_resource(pex_query_api_instance, iota_configuration_resource):
    query = {
        "name": "TestQuery",
        "vp_definition": json.dumps(iota_presentation_definition)
    }

    config_id = iota_configuration_resource["configuration_id"]
    response = pex_query_api_instance.create_pex_query(config_id, query)
    data = json.loads(response.json())

    query_id = data.get("query_id")
    assert query_id, "PEX query creation failed"

    yield {
        "query_id": query_id
    }

    pex_query_api_instance.delete_pex_query_by_id(config_id, query_id)


def test_list_iota_configurations(configurations_api_instance):
    response = configurations_api_instance.list_iota_configurations()
    data = json.loads(response.json())

    configs = data.get("configurations", [])
    assert isinstance(configs, list), "Expected configurations to be a list"
    assert configs, "No configurations returned"


def test_update_iota_configuration(configurations_api_instance, iota_configuration_resource):
    updated_name = "UpdatedName"
    config_id = iota_configuration_resource["configuration_id"]

    payload = {"name": updated_name}
    response = configurations_api_instance.update_iota_configuration_by_id(config_id, payload)
    data = json.loads(response.json())

    assert data.get("name") == updated_name, "Failed to update IOTA configuration name"


def test_get_iota_configuration(configurations_api_instance, iota_configuration_resource):
    config_id = iota_configuration_resource["configuration_id"]
    response = configurations_api_instance.get_iota_configuration_by_id(config_id)
    data = json.loads(response.json())

    assert data.get("mode") == "redirect", f"Unexpected configuration mode: {data.get('mode')}"


def test_list_pex_queries(pex_query_api_instance, iota_configuration_resource, pex_query_resource):
    config_id = iota_configuration_resource["configuration_id"]
    response = pex_query_api_instance.list_pex_queries(config_id)
    data = json.loads(response.json())

    queries = data.get("pex_queries", [])
    assert isinstance(queries, list), "PEX queries should be a list"
    assert queries, "No PEX queries found"


def test_update_pex_query(pex_query_api_instance, iota_configuration_resource, pex_query_resource):
    description = "UpdatedDescription"
    config_id = iota_configuration_resource["configuration_id"]
    query_id = pex_query_resource["query_id"]

    payload = {"description": description}
    response = pex_query_api_instance.update_pex_query_by_id(config_id, query_id, payload)
    data = json.loads(response.json())

    assert data.get("description") == description, "Failed to update PEX query description"


def test_get_pex_query(pex_query_api_instance, iota_configuration_resource, pex_query_resource):
    config_id = iota_configuration_resource["configuration_id"]
    query_id = pex_query_resource["query_id"]

    response = pex_query_api_instance.get_pex_query_by_id(config_id, query_id)
    data = json.loads(response.json())

    assert data.get("query_id"), "Query ID is missing in response"


def test_iota_redirect_flow(iota_api_instance, callback_api_instance, iota_configuration_resource, pex_query_resource):
    correlation_id = str(uuid.uuid4())
    nonce = str(uuid.uuid4())[:10]

    request_payload = {
        "query_id": pex_query_resource["query_id"],
        "redirect_uri": iota_configuration_resource["iota_redirect_uri"],
        "configuration_id": iota_configuration_resource["configuration_id"],
        "mode": "redirect",
        "correlation_id": correlation_id,
        "nonce": nonce,
    }

    response = iota_api_instance.initiate_data_sharing_request(request_payload)
    data = json.loads(response.json()).get("data", {})

    assert data.get("correlation_id"), "`correlation_id` missing in response"
    assert data.get("transaction_id"), "`transaction_id` missing in response"
    assert data.get("jwt"), "`jwt` missing in response"

    jwt_token = data["jwt"]
    transaction_id = data["transaction_id"]

    decoded_jwt = jwt.decode(jwt_token, key='', options={"verify_signature": False})
    state = decoded_jwt.get("state")
    assert state, "`state` missing in decoded JWT"

    callback_payload = {
        "state": state,
        "presentation_submission": json.dumps(iota_presentation_submission),
        "vp_token": json.dumps(verifiable_presentation)
    }

    callback_response = callback_api_instance.iot_oidc4_vp_callback(callback_payload)
    callback_data = json.loads(callback_response.json())

    response_code = callback_data.get("response_code")
    assert response_code, "`response_code` missing in callback response"

    final_payload = {
        "configuration_id": iota_configuration_resource["configuration_id"],
        "correlation_id": correlation_id,
        "transaction_id": transaction_id,
        "response_code": response_code
    }

    final_response = iota_api_instance.fetch_iota_vp_response(final_payload)
    final_data = json.loads(final_response.json())

    vp_token = json.loads(final_data.get("vp_token", "{}"))
    assert vp_token.get("verifiableCredential"), "`verifiableCredential` missing in vp_token"
