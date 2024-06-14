# PrepareRequest

## Properties

| Name                     | Type      | Description                   | Notes      |
| ------------------------ | --------- | ----------------------------- | ---------- |
| **connection_client_id** | **str**   |                               |
| **query_id**             | **str**   |                               |
| **correlation_id**       | **str**   |                               |
| **token_max_age**        | **float** | token time to live in seconds | [optional] |
| **audience**             | **str**   |                               | [optional] |

## Example

```python
from affinidi_tdk_iota_client.models.prepare_request import PrepareRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PrepareRequest from a JSON string
prepare_request_instance = PrepareRequest.from_json(json)
# print the JSON string representation of the object
print PrepareRequest.to_json()

# convert the object into a dict
prepare_request_dict = prepare_request_instance.to_dict()
# create an instance of PrepareRequest from a dict
prepare_request_form_dict = prepare_request.from_dict(prepare_request_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
