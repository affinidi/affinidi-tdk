# CreateIssuanceConfig400Response

## Properties

| Name                 | Type                                                                              | Description | Notes      |
| -------------------- | --------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**             | **str**                                                                           |             |
| **message**          | **str**                                                                           |             |
| **http_status_code** | **float**                                                                         |             |
| **trace_id**         | **str**                                                                           |             |
| **details**          | [**List[ActionForbiddenErrorDetailsInner]**](ActionForbiddenErrorDetailsInner.md) |             | [optional] |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.create_issuance_config400_response import CreateIssuanceConfig400Response

# TODO update the JSON string below
json = "{}"
# create an instance of CreateIssuanceConfig400Response from a JSON string
create_issuance_config400_response_instance = CreateIssuanceConfig400Response.from_json(json)
# print the JSON string representation of the object
print CreateIssuanceConfig400Response.to_json()

# convert the object into a dict
create_issuance_config400_response_dict = create_issuance_config400_response_instance.to_dict()
# create an instance of CreateIssuanceConfig400Response from a dict
create_issuance_config400_response_from_dict = CreateIssuanceConfig400Response.from_dict(create_issuance_config400_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
