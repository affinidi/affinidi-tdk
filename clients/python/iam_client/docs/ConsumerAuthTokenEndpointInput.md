# ConsumerAuthTokenEndpointInput

## Properties

| Name              | Type    | Description | Notes      |
| ----------------- | ------- | ----------- | ---------- |
| **grant_type**    | **str** |             |
| **code**          | **str** |             | [optional] |
| **refresh_token** | **str** |             | [optional] |
| **redirect_uri**  | **str** |             | [optional] |
| **client_id**     | **str** |             | [optional] |

## Example

```python
from affinidi_tdk_iam_client.models.consumer_auth_token_endpoint_input import ConsumerAuthTokenEndpointInput

# TODO update the JSON string below
json = "{}"
# create an instance of ConsumerAuthTokenEndpointInput from a JSON string
consumer_auth_token_endpoint_input_instance = ConsumerAuthTokenEndpointInput.from_json(json)
# print the JSON string representation of the object
print ConsumerAuthTokenEndpointInput.to_json()

# convert the object into a dict
consumer_auth_token_endpoint_input_dict = consumer_auth_token_endpoint_input_instance.to_dict()
# create an instance of ConsumerAuthTokenEndpointInput from a dict
consumer_auth_token_endpoint_input_from_dict = ConsumerAuthTokenEndpointInput.from_dict(consumer_auth_token_endpoint_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
