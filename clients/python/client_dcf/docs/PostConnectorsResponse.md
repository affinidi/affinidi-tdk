# PostConnectorsResponse

The Connector that hast just been created.

## Properties

| Name          | Type                                | Description | Notes |
| ------------- | ----------------------------------- | ----------- | ----- |
| **connector** | [**ConnectorDTO**](ConnectorDTO.md) |             |

## Example

```python
from affinidi_tdk_client_dcf.models.post_connectors_response import PostConnectorsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PostConnectorsResponse from a JSON string
post_connectors_response_instance = PostConnectorsResponse.from_json(json)
# print the JSON string representation of the object
print PostConnectorsResponse.to_json()

# convert the object into a dict
post_connectors_response_dict = post_connectors_response_instance.to_dict()
# create an instance of PostConnectorsResponse from a dict
post_connectors_response_form_dict = post_connectors_response.from_dict(post_connectors_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
