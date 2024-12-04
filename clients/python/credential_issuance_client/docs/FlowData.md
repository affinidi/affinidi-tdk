# FlowData

## Properties

| Name                                            | Type                                                                            | Description                                                                                                                                                            | Notes      |
| ----------------------------------------------- | ------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **created_at**                                  | **str**                                                                         | [GEN] ISO 8601 string of the creation date/time the entity                                                                                                             |
| **modified_at**                                 | **str**                                                                         | [GEN] ISO 8601 string of the modification date/time the entity                                                                                                         |
| **id**                                          | **str**                                                                         |                                                                                                                                                                        |
| **project_id**                                  | **str**                                                                         |                                                                                                                                                                        | [optional] |
| **flow_id**                                     | **str**                                                                         |                                                                                                                                                                        |
| **credential_type_id**                          | **str**                                                                         |                                                                                                                                                                        |
| **json_ld_context_url**                         | **str**                                                                         |                                                                                                                                                                        |
| **json_schema_url**                             | **str**                                                                         |                                                                                                                                                                        |
| **configuration_id**                            | **str**                                                                         | Id of configuration, used to issue VC.                                                                                                                                 | [optional] |
| **issued_at**                                   | **str**                                                                         | when credential was issued to the holder (holder invoked generateCredentials endpoint)                                                                                 | [optional] |
| **wallet_id**                                   | **str**                                                                         | Id of wallet, used to issue VC.                                                                                                                                        | [optional] |
| **project_id_configuration_id**                 | **str**                                                                         | Id of configuration with which VC was issued. To use as an index, it is grouped together with projectId, as \&quot;{projectIdConfigurationId}#{configurationId}\&quot; | [optional] |
| **project_id_configuration_id_wallet_id**       | **str**                                                                         | Id of wallet which issued VC. To use as an index, it is grouped together with projectId, as \&quot;{projectIdConfigurationId}#{walletId}\&quot;                        | [optional] |
| **project_id_configuration_id_credential_type** | **str**                                                                         | VC.type value. To use as an index, it is grouped together with projectId, as \&quot;{projectIdConfigurationId}#{credentialType}\&quot;                                 | [optional] |
| **status_lists_details**                        | [**List[FlowDataStatusListsDetailsInner]**](FlowDataStatusListsDetailsInner.md) |                                                                                                                                                                        | [optional] |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.flow_data import FlowData

# TODO update the JSON string below
json = "{}"
# create an instance of FlowData from a JSON string
flow_data_instance = FlowData.from_json(json)
# print the JSON string representation of the object
print FlowData.to_json()

# convert the object into a dict
flow_data_dict = flow_data_instance.to_dict()
# create an instance of FlowData from a dict
flow_data_from_dict = FlowData.from_dict(flow_data_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
