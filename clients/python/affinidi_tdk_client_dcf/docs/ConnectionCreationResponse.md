# ConnectionCreationResponse

Response payload after successful creation of a connection.

## Properties

| Name              | Type    | Description                                                                                                                             | Notes      |
| ----------------- | ------- | --------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **sso_start_url** | **str** | the Single-Sign-On address through which a user need to authenticate the connection with the use of the data connector framework (DCF). | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.connection_creation_response import ConnectionCreationResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ConnectionCreationResponse from a JSON string
connection_creation_response_instance = ConnectionCreationResponse.from_json(json)
# print the JSON string representation of the object
print ConnectionCreationResponse.to_json()

# convert the object into a dict
connection_creation_response_dict = connection_creation_response_instance.to_dict()
# create an instance of ConnectionCreationResponse from a dict
connection_creation_response_form_dict = connection_creation_response.from_dict(connection_creation_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
